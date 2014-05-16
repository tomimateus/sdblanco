# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.delete_all
Tournament.delete_all
Statistic.delete_all
Matchday.delete_all
Match.delete_all
MatchTeam.delete_all

a = Team.create(name: 'Aranjuez')
bp = Team.create(name: 'Banco Provincia "Verde"')
br = Team.create(name: 'Boca Ratón "F')
cc = Team.create(name: 'Campo Chico "Gris"')
ca = Team.create(name: 'Campos de Álvarez "F"')
m = Team.create(name: 'El Moro')
hp = Team.create(name: 'Haras del Pilar "F"')
ic = Team.create(name: 'Indio Cuá')
lo = Team.create(name: 'La Lomada "F"')
la = Team.create(name: 'Las Lajas')
ne = Team.create(name: 'Náutico Escobar "Azul"')
sd = Team.create(name: 'San Diego "Blanco"')
sm = Team.create(name: 'San Miguel de Ghiso')

Tournament.create(
  name: 'Selección B - Apertura',
  statistics: Statistic.create([
    { team: a }, { team: bp }, { team: br }, { team: cc }, { team: ca }, { team: m }, { team: hp }, { team: ic }, { team: lo }, { team: la }, { team: ne }, { team: sd }, { team: sm }
  ]),
  matchdays: Matchday.create([
    { number: 1, matches: Match.create([
      { match_teams: MatchTeam.create([ { team: hp }, { team: sd }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: hp) }, { player: Player.create(name: 'Default', team: sd) }]) },
      { match_teams: MatchTeam.create([ { team: ca }, { team: la }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ca) }, { player: Player.create(name: 'Default', team: la) }]) },
      { match_teams: MatchTeam.create([ { team: cc }, { team: bp }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: cc) }, { player: Player.create(name: 'Default', team: bp) }]) },
      { match_teams: MatchTeam.create([ { team: m }, { team: ic }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: m) }, { player: Player.create(name: 'Default', team: ic) }]) },
      { match_teams: MatchTeam.create([ { team: a }, { team: lo }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: a) }, { player: Player.create(name: 'Default', team: lo) }]) },
      { match_teams: MatchTeam.create([ { team: sm }, { team: br }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: sm) }, { player: Player.create(name: 'Default', team: br) }]) }
    ])},
    { number: 2, matches: Match.create([
      { match_teams: MatchTeam.create([ { team: sd }, { team: a }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: sd) }, { player: Player.create(name: 'Default', team: a) }]) },
      { match_teams: MatchTeam.create([ { team: la }, { team: m }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: la) }, { player: Player.create(name: 'Default', team: m) }]) },
      { match_teams: MatchTeam.create([ { team: br }, { team: cc }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: br) }, { player: Player.create(name: 'Default', team: cc) }]) },
      { match_teams: MatchTeam.create([ { team: bp }, { team: ne }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: bp) }, { player: Player.create(name: 'Default', team: ne) }]) },
      { match_teams: MatchTeam.create([ { team: ic }, { team: hp }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ic) }, { player: Player.create(name: 'Default', team: hp) }]) },
      { match_teams: MatchTeam.create([ { team: lo }, { team: sm }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: lo) }, { player: Player.create(name: 'Default', team: sm) }]) }
    ])},
    { number: 3, matches: Match.create([
      { match_teams: MatchTeam.create([ { team: sm }, { team: sd }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: sm) }, { player: Player.create(name: 'Default', team: sd) }]) },
      { match_teams: MatchTeam.create([ { team: hp }, { team: la }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: hp) }, { player: Player.create(name: 'Default', team: la) }]) },
      { match_teams: MatchTeam.create([ { team: m }, { team: ca }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: m) }, { player: Player.create(name: 'Default', team: ca) }]) },
      { match_teams: MatchTeam.create([ { team: cc }, { team: lo }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: cc) }, { player: Player.create(name: 'Default', team: lo) }]) },
      { match_teams: MatchTeam.create([ { team: ne }, { team: br }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ne) }, { player: Player.create(name: 'Default', team: br) }]) },
      { match_teams: MatchTeam.create([ { team: a }, { team: ic }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: a) }, { player: Player.create(name: 'Default', team: ic) }]) }
    ])},
    { number: 4, matches: Match.create([
      { match_teams: MatchTeam.create([ { team: sd }, { team: cc }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: sd) }, { player: Player.create(name: 'Default', team: cc) }]) },
      { match_teams: MatchTeam.create([ { team: la }, { team: a }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: la) }, { player: Player.create(name: 'Default', team: a) }]) },
      { match_teams: MatchTeam.create([ { team: br }, { team: bp }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: br) }, { player: Player.create(name: 'Default', team: bp) }]) },
      { match_teams: MatchTeam.create([ { team: lo }, { team: ne }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: lo) }, { player: Player.create(name: 'Default', team: ne) }]) },
      { match_teams: MatchTeam.create([ { team: ic }, { team: sm }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ic) }, { player: Player.create(name: 'Default', team: sm) }]) },
      { match_teams: MatchTeam.create([ { team: ca }, { team: hp }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ca) }, { player: Player.create(name: 'Default', team: hp) }]) }
    ])},
    { number: 5, matches: Match.create([
      { match_teams: MatchTeam.create([ { team: ne }, { team: sd }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ne) }, { player: Player.create(name: 'Default', team: sd) }]) },
      { match_teams: MatchTeam.create([ { team: sm }, { team: la }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: sm) }, { player: Player.create(name: 'Default', team: la) }]) },
      { match_teams: MatchTeam.create([ { team: a }, { team: ca }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: a) }, { player: Player.create(name: 'Default', team: ca) }]) },
      { match_teams: MatchTeam.create([ { team: hp }, { team: m }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: hp) }, { player: Player.create(name: 'Default', team: m) }]) },
      { match_teams: MatchTeam.create([ { team: cc }, { team: ic }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: cc) }, { player: Player.create(name: 'Default', team: ic) }]) },
      { match_teams: MatchTeam.create([ { team: bp }, { team: lo }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: bp) }, { player: Player.create(name: 'Default', team: lo) }]) }
    ])},
    { number: 6, matches: Match.create([
      { match_teams: MatchTeam.create([ { team: sd }, { team: bp }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: sd) }, { player: Player.create(name: 'Default', team: bp) }]) },
      { match_teams: MatchTeam.create([ { team: la }, { team: cc }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: la) }, { player: Player.create(name: 'Default', team: cc) }]) },
      { match_teams: MatchTeam.create([ { team: ca }, { team: sm }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ca) }, { player: Player.create(name: 'Default', team: sm) }]) },
      { match_teams: MatchTeam.create([ { team: m }, { team: a }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: m) }, { player: Player.create(name: 'Default', team: a) }]) },
      { match_teams: MatchTeam.create([ { team: ic }, { team: ne }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ic) }, { player: Player.create(name: 'Default', team: ne) }]) },
      { match_teams: MatchTeam.create([ { team: lo }, { team: br }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: lo) }, { player: Player.create(name: 'Default', team: br) }]) }
    ])},
    { number: 7, matches: Match.create([
      { match_teams: MatchTeam.create([ { team: br }, { team: sd }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: br) }, { player: Player.create(name: 'Default', team: sd) }]) },
      { match_teams: MatchTeam.create([ { team: ne }, { team: la }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ne) }, { player: Player.create(name: 'Default', team: la) }]) },
      { match_teams: MatchTeam.create([ { team: cc }, { team: ca }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: cc) }, { player: Player.create(name: 'Default', team: ca) }]) },
      { match_teams: MatchTeam.create([ { team: sm }, { team: m }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: sm) }, { player: Player.create(name: 'Default', team: m) }]) },
      { match_teams: MatchTeam.create([ { team: a }, { team: hp }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: a) }, { player: Player.create(name: 'Default', team: hp) }]) },
      { match_teams: MatchTeam.create([ { team: bp }, { team: ic }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: bp) }, { player: Player.create(name: 'Default', team: ic) }]) }
    ])},
    { number: 8, matches: Match.create([
      { match_teams: MatchTeam.create([ { team: sd }, { team: lo }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: sd) }, { player: Player.create(name: 'Default', team: lo) }]) },
      { match_teams: MatchTeam.create([ { team: la }, { team: bp }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: la) }, { player: Player.create(name: 'Default', team: bp) }]) },
      { match_teams: MatchTeam.create([ { team: ca }, { team: ne }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ca) }, { player: Player.create(name: 'Default', team: ne) }]) },
      { match_teams: MatchTeam.create([ { team: m }, { team: cc }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: m) }, { player: Player.create(name: 'Default', team: cc) }]) },
      { match_teams: MatchTeam.create([ { team: hp }, { team: sm }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: hp) }, { player: Player.create(name: 'Default', team: sm) }]) },
      { match_teams: MatchTeam.create([ { team: ic }, { team: br }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ic) }, { player: Player.create(name: 'Default', team: br) }]) }
    ])},
    { number: 9, matches: Match.create([
      { match_teams: MatchTeam.create([ { team: br }, { team: la }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: br) }, { player: Player.create(name: 'Default', team: la) }]) },
      { match_teams: MatchTeam.create([ { team: bp }, { team: ca }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: bp) }, { player: Player.create(name: 'Default', team: ca) }]) },
      { match_teams: MatchTeam.create([ { team: ne }, { team: m }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ne) }, { player: Player.create(name: 'Default', team: m) }]) },
      { match_teams: MatchTeam.create([ { team: cc }, { team: hp }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: cc) }, { player: Player.create(name: 'Default', team: hp) }]) },
      { match_teams: MatchTeam.create([ { team: sm }, { team: a }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: sm) }, { player: Player.create(name: 'Default', team: a) }]) },
      { match_teams: MatchTeam.create([ { team: lo }, { team: ic }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: lo) }, { player: Player.create(name: 'Default', team: ic) }]) }
    ])},
    { number: 10, matches: Match.create([
      { match_teams: MatchTeam.create([ { team: ic }, { team: sd }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ic) }, { player: Player.create(name: 'Default', team: sd) }]) },
      { match_teams: MatchTeam.create([ { team: la }, { team: lo }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: la) }, { player: Player.create(name: 'Default', team: lo) }]) },
      { match_teams: MatchTeam.create([ { team: ca }, { team: br }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ca) }, { player: Player.create(name: 'Default', team: br) }]) },
      { match_teams: MatchTeam.create([ { team: m }, { team: bp }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: m) }, { player: Player.create(name: 'Default', team: bp) }]) },
      { match_teams: MatchTeam.create([ { team: hp }, { team: ne }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: hp) }, { player: Player.create(name: 'Default', team: ne) }]) },
      { match_teams: MatchTeam.create([ { team: a }, { team: cc }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: a) }, { player: Player.create(name: 'Default', team: cc) }]) }
    ])},
    { number: 11, matches: Match.create([
      { match_teams: MatchTeam.create([ { team: sd }, { team: la }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: sd) }, { player: Player.create(name: 'Default', team: la) }]) },
      { match_teams: MatchTeam.create([ { team: lo }, { team: ca }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: lo) }, { player: Player.create(name: 'Default', team: ca) }]) },
      { match_teams: MatchTeam.create([ { team: br }, { team: m }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: br) }, { player: Player.create(name: 'Default', team: m) }]) },
      { match_teams: MatchTeam.create([ { team: bp }, { team: hp }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: bp) }, { player: Player.create(name: 'Default', team: hp) }]) },
      { match_teams: MatchTeam.create([ { team: ne }, { team: a }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ne) }, { player: Player.create(name: 'Default', team: a) }]) },
      { match_teams: MatchTeam.create([ { team: cc }, { team: sm }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: cc) }, { player: Player.create(name: 'Default', team: sm) }]) }
    ])},
    { number: 12, matches: Match.create([
      { match_teams: MatchTeam.create([ { team: ca }, { team: sd }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ca) }, { player: Player.create(name: 'Default', team: sd) }]) },
      { match_teams: MatchTeam.create([ { team: la }, { team: ic }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: la) }, { player: Player.create(name: 'Default', team: ic) }]) },
      { match_teams: MatchTeam.create([ { team: m }, { team: lo }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: m) }, { player: Player.create(name: 'Default', team: lo) }]) },
      { match_teams: MatchTeam.create([ { team: hp }, { team: br }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: hp) }, { player: Player.create(name: 'Default', team: br) }]) },
      { match_teams: MatchTeam.create([ { team: a }, { team: bp }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: a) }, { player: Player.create(name: 'Default', team: bp) }]) },
      { match_teams: MatchTeam.create([ { team: sm }, { team: ne }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: sm) }, { player: Player.create(name: 'Default', team: ne) }]) }
    ])},
    { number: 13, matches: Match.create([
      { match_teams: MatchTeam.create([ { team: sd }, { team: m }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: sd) }, { player: Player.create(name: 'Default', team: m) }]) },
      { match_teams: MatchTeam.create([ { team: ne }, { team: cc }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ne) }, { player: Player.create(name: 'Default', team: cc) }]) },
      { match_teams: MatchTeam.create([ { team: ic }, { team: ca }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: ic) }, { player: Player.create(name: 'Default', team: ca) }]) },
      { match_teams: MatchTeam.create([ { team: lo }, { team: hp }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: lo) }, { player: Player.create(name: 'Default', team: hp) }]) },
      { match_teams: MatchTeam.create([ { team: br }, { team: a }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: br) }, { player: Player.create(name: 'Default', team: a) }]) },
      { match_teams: MatchTeam.create([ { team: bp }, { team: sm }]), match_players: MatchPlayer.create([{ player: Player.create(name: 'Default', team: bp) }, { player: Player.create(name: 'Default', team: sm) }]) }
    ])}
  ])
)