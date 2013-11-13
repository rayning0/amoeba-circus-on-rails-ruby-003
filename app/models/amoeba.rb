class Amoeba < ActiveRecord::Base
  belongs_to :talent
  has_many :amoeba_acts # an amoeba may have many acts and vice versa
  has_many :acts, through: :amoeba_acts
end
