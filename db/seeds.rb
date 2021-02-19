user1 = User.create(username: "khalin", password: "password123", role: "Owner")
user2 = User.create(username: "bigbird", password: "password456", role: "General Contractor")
user3 = User.create(username: "zed", password: "mypassword", role: "Subcontractor")

contract1 = Contract.create(title: "Marriot", terms: "completed by the end of the year", user_id: user1.id)
sub_contract1 = SubContract.create(title: contract1.title, terms: "need plumbers and electricians", user_id: user2.id)

bid1 = Bid.create(title: contract1.title, quote: 500000, contract_id: contract1.id, user_id: user2.id)
sub_bid1 = SubBid.create(title: sub_contract1.title, quote: 2000, sub_contract_id: sub_contract1.id, user_id: user3.id)