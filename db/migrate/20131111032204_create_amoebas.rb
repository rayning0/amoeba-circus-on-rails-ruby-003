class CreateAmoebas < ActiveRecord::Migration
  def change
    create_table :amoebas do |t|
      t.string :name
      t.integer :generation
      t.belongs_to :talent
      t.timestamps
    end
  end
end
