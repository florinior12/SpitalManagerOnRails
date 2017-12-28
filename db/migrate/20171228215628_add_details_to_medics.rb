class AddDetailsToMedics < ActiveRecord::Migration[5.1]
  def change
    add_column :medics, :telefon, :string
    add_column :medics, :email, :string
  end
end
