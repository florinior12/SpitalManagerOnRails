class AddPacientReferenceToConsults < ActiveRecord::Migration[5.1]
  def change
    add_reference :consults, :pacient, foreign_key: true
  end
end
