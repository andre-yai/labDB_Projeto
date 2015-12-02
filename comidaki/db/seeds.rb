# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r = Restaurante.create(nome:'restaurante1', cnpj:1234, descricao:'um restaurante legal')

f = Franquia.create(nome:'fr1', cnpj: 654321, faixa_preco:2, tempo_entrega_estimado:7, raio_entrega:100, restaurante: r)
f2 = Franquia.create(nome:'fr2', cnpj: 123456, faixa_preco:4, tempo_entrega_estimado:4, raio_entrega:231, restaurante: r)
