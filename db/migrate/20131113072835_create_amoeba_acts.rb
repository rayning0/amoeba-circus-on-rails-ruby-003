class CreateAmoebaActs < ActiveRecord::Migration
  def change
    create_table :amoeba_acts do |t|
      t.belongs_to :amoeba
      t.belongs_to :act
    end
  end
end
