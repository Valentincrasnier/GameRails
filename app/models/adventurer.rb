class Adventurer < ActiveRecord::Base
  belongs_to :users
  has_one :race
  has_one :classe

  def stamina_part
    random_part = "toto est parti"
    random_money = rand(0..25)
    random_exp = rand(0..50)
    random_life = rand(5..50)
    random_stamina = rand(5..15)
    update_stamina(-random_stamina)
    update_life(-random_life)
    update_money(+random_money)
    update_exp(+random_exp)
  end

  def rest_life
    update_life(20)
    update_money(-10)
  end

  def rest_stamina
      update_stamina(20)
      update_money(-10)
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
    elsif self.life > 500
      self.life = 500
    end
    self.save
  end

  # Pour la fatigue

  def update_stamina(value)
    self.stamina += value
    if self.stamina < 0
      self.stamina = 0
    elsif self.stamina > 100
      self.stamina = 100
    end
    self.save
  end

  # Pour les actions effectuer


end
