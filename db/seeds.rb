# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Department.destroy_all
Area.destroy_all

ActiveRecord::Base.connection.execute('ALTER SEQUENCE AREAS_id_seq RESTART WITH 1')
ActiveRecord::Base.connection.execute('ALTER SEQUENCE DEPARTMENTS_id_seq RESTART WITH 1')

Area.create(name: 'Gerencia General')
Area.create(name: 'Gerencia Financiera', area_id: 1)
Area.create(name: 'Gerencia Operaciones', area_id: 1)
Area.create(name: 'Gerencia Tecnologica', area_id: 1)

Department.create(name: 'Contabilidad', area_id: 2)
Department.create(name: 'Análisis', area_id: 3)
Department.create(name: 'Consultoria', area_id: 3)
Department.create(name: 'Desarrollo', area_id: 4)
Department.create(name: 'QA', area_id: 4)
