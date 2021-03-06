# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do 
  nume = Faker::Name.first_name
  prenume = Faker::Name.last_name
  varsta = (18..75).to_a.sample
  adresa = Faker::Address.street_address
  telefon = Faker::PhoneNumber.cell_phone
  email = nume.downcase + [".", "-", "_"].sample + prenume.downcase + "@somemail.com"
  Pacient.create!(nume: nume, prenume: prenume, varsta: varsta, adresa: adresa, telefon: telefon, email: email)
end

40.times do 
  nume = Faker::Name.first_name
  prenume = Faker::Name.last_name
  sectie = Medic.sectii.sample
  telefon = Faker::PhoneNumber.cell_phone
  email = nume.downcase + [".", "-", "_"].sample + prenume.downcase + "@somemail.com"
  Medic.create!(nume: nume, prenume: prenume, sectie: sectie, telefon: telefon, email: email)
end

book = Spreadsheet.open 'db/999cod.xls'
sheet = book.worksheet 0
200.times do 
    id_medic = Medic.all.sample.id
    id_pacient = Pacient.all.sample.id
    diagnostic = sheet.cell((1..999).to_a.sample,1)
    data = rand(1.year).seconds.ago
    Consult.create!(medic_id:id_medic, pacient_id:id_pacient, diagnostic:diagnostic, data: data)
end
