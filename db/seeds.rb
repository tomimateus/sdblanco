# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.delete_all
teams = Team.create([
{ name: 'Aranjuez' },
{ name: 'Banco Provincia "Verde"' },
{ name: 'Boca Ratón "F"' },
{ name: 'Campo Chico "Gris"' },
{ name: 'Campos de Álvarez "F"' },
{ name: 'El Moro' },
{ name: 'Haras del Pilar "F"' },
{ name: 'Indio Cuá' },
{ name: 'La Lomada "F"' },
{ name: 'Las Lajas' },
{ name: 'Náutico Escobar "Azul"' },
{ name: 'San Diego "Blanco"' },
{ name: 'San Miguel de Ghiso'}
])

Tournament.delete_all
tournament = Tournament.create(name: 'Selección B - Apertura')

Statistic.delete_all
teams.each do |team|
  tournament.statistics.push Statistic.create(tournament: tournament, team: team)
end
