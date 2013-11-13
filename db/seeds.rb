# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

talents = Talent.create([{ name: 'acrobat' }, { name: 'contortionist' }, 
  { name: 'clown' }, { name: 'juggler' }, { name: 'freak' },])

amoebas = Amoeba.create([
  { name: 'Raymond', generation: 1, talent: Talent.find(3) }, 
  { name: 'Marilyn', generation: 1, talent: Talent.find(1) }, 
  { name: 'James', generation: 1, talent: Talent.find(4) }, 
  { name: 'Elise', generation: 1, talent: Talent.find(3) }, 
  { name: 'Manley', generation: 1, talent: Talent.find(5) }, 
  { name: 'Martina', generation: 1, talent: Talent.find(2) }, 
  { name: 'Saron', generation: 1, talent: Talent.find(1) }])

act1 = Act.create(name: 'Michael Jackson One', date: Date.new(2013, 11, 12), time: Chronic.parse('6:30pm'))
act1.amoebas = Amoeba.all.shuffle[0..2]
act1.save
act2 = Act.create(name: 'The Beatles Love', date: Date.new(2013, 11, 25), time: Chronic.parse('9:15pm'))
act2.amoebas = Amoeba.all.shuffle[0..2]
act2.save
act3 = Act.create(name: 'La Nouba', date: Date.new(2013, 12, 2), time: Chronic.parse('10:30pm'))
act3.amoebas = Amoeba.all.shuffle[0..1]
act3.save
act4 = Act.create(name: 'Kooza', date: Date.new(2013, 12, 15), time: Chronic.parse('10pm'))
act4.amoebas = Amoeba.all.shuffle[0..1]
act4.save