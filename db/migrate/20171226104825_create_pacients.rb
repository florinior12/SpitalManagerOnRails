class CreatePacients < ActiveRecord::Migration[5.1]
  def change
    create_table :pacients do |t|
      t.string :nume
      t.string :prenume
      
      t.timestamps
    end
  end
end
