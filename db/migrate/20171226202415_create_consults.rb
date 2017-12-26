class CreateConsults < ActiveRecord::Migration[5.1]
  def change
    create_table :consults do |t|
      t.string :diagnostic
      t.date :data

      t.timestamps
    end
  end
end
