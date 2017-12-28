class AddDetailsToPacients < ActiveRecord::Migration[5.1]
  def change
    add_column :pacients, :telefon, :string
    add_column :pacients, :email, :string
  end
end
