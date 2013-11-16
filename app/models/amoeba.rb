class Amoeba < ActiveRecord::Base
  belongs_to :talent
  has_many :amoeba_acts # an amoeba may have many acts and vice versa
  has_many :acts, through: :amoeba_acts

  def act_ids=(act_ids)
    self.acts = Act.where(id: act_ids)
  end

  def divide
    @amoeba1 = Amoeba.create(
      name: Faker::Name.first_name, 
      generation: self.generation + 1, 
      talent: self.talent)

    @amoeba2 = Amoeba.create(
      name: Faker::Name.first_name, 
      generation: self.generation + 1, 
      talent: self.talent)

    self.acts.each do |act|
      act.amoebas << @amoeba1 << @amoeba2  # add the 2 new amoebas to all act of parent amoeba
    end
    self.destroy
  end
end
