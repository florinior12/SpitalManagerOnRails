class CreateMedics < ActiveRecord::Migration[5.1]
  def change
    create_table :medics do |t|
      t.string :nume
      t.string :prenume
      t.string :sectie
      
      t.timestamps
    end
  end
end
