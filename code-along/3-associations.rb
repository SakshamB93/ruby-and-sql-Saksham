# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

puts "Companies: #{Company.all.count}"



# - Insert and read contact data for companies in the database

# 1. insert new rows in the contacts table with relationship to a company


amazon = Company.find_by({"name"=>"Amazon"})
amazon.save

contact1 = Contact.new
contact1["first_name"] = "Jeff"
contact1["last_name"] = "Bezos"
contact1["email"] = "jeff@amazon.com"
contact1["company_id"] = amazon["id"]
contact1.save

contact2 = Contact.new
contact2["first_name"] = "Saksham"
contact2["last_name"] = "Bhandari"
contact2["email"] = "saksham@amazon.com"
contact2["company_id"] = amazon["id"]
contact2.save

puts "Contacts: #{Contact.all.count}"

# 2. How many contacts work at Apple?

contacts = Contact.where({"company_id" => amazon["id"]})
p "Amazon people #{contacts.count}"

# 3. What is the full name of each contact who works at Apple?

for contact in contacts
    first_name = contact["first_name"]
    last_name = contact["last_name"]
    puts "#{first_name} #{last_name}"
end