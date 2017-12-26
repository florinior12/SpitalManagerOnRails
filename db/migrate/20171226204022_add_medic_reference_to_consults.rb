class AddMedicReferenceToConsults < ActiveRecord::Migration[5.1]
  def change
    add_reference :consults, :medic, foreign_key: true
  end
end
