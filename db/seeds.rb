# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Area.destroy_all
ActiveRecord::Base.connection.execute('ALTER SEQUENCE AREAS_id_seq RESTART WITH 1')
Area.create(name: 'Gerencia General')
Area.create(name: 'Gerencia Financiera', leadership_id: 1)
Area.create(name: 'Gerencia Operaciones', leadership_id: 1)
Area.create(name: 'Gerencia Tecnologica', leadership_id: 1)

Area.create(name: 'Contabilidad', leadership_id: 2)