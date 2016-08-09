class Adventurer < ActiveRecord::Base
  belongs_to :users
  has_one :race
  has_one :classe

  def stamina
    random_money = rand(0..25)
    random_exp = rand(0..50)
    random_life = rand(5..50)
    update_life(-random_life)
    update_money(+random_money)
    update_exp(+random_exp)
  end

  private
   # Pour la money du jeu

  def update_money(value)
    self.money += value
    if self.money < 0
      self.money = 0
    end
    self.save
  end

  # Pour l'experience du joueur

  def update_exp(value)
    self.experiences += value
    check_exp
    self.save
  end

  def check_exp
    if self.experiences >= 10*(2**(self.level-1))
      self.experiences -= 10*(2**(self.level-1))
      self.level += 1
    end
  end

  # Pour la vie

  def update_life(value)
    self.life += value
    if self.life < 0
      self.life = 0
    end
    self.save
  end

end
