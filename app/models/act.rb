class Act < ActiveRecord::Base
  has_many :amoeba_acts   # an act may have many amoebas and vice versa
  has_many :amoebas, through: :amoeba_acts
end
