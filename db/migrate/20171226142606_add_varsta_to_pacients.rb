class AddVarstaToPacients < ActiveRecord::Migration[5.1]
  def change
    add_column :pacients, :varsta, :int
  end
end
