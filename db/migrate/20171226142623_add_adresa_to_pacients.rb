class AddAdresaToPacients < ActiveRecord::Migration[5.1]
  def change
    add_column :pacients, :adresa, :string
  end
end
