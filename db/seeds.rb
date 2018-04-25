user = User.create( name:"insal", password:"12345678", email:"admin@insal.com",  address:"hue", phone:"01664304688", personal_card: "CMND", role:"1")
Category.create( name: "abc")
bill = Bill.create(start_renting: "2016-10-05", end_renting: "", total: "1234", status: "0", user_id: user.id)
(1..200).to_a.each do |item|
  Product.create(name: "hihi", price: item, renting_fee: "122", image:"ccccc", category_id: 1)
end
