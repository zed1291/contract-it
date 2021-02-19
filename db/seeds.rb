# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "khalin", password: "password", role: "Owner")
user2 = User.create(username: "khalin", password: "password", role: "General Contractor")
user3 = User.create(username: "zed", password: "password", role: "Owner")

contract1 = Contract.create(title: "Marriot", terms: "completed by the end of the year", owner_id: user1.id)
sub_contract1 = Subcontract.create(title: contract1.title, terms: "need plumbers and electricians", general_contractor_id: user2.id)

bid1 = Bid.create(title: contract1.title, quote: 500000, contract_id: contract1.id, user2.id)
sub_bid1 = Subbid.create(title: sub_contract1.title, quote: 2000, subcontract_id: sub_contract1.id, user3.id)