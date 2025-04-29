# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

salesperson1 = Salesperson.new

salesperson1["first_name"] = "Saksham"
salesperson1["last_name"] = "Bhandari"
salesperson1["email"] = "sb@xyz.com"
salesperson1.save

# p salesperson1

salesperson2 = Salesperson.new

salesperson2["first_name"] = "Eli"
salesperson2["last_name"] = "g"
salesperson2["email"] = "eg@xyz.com"
salesperson2.save

salesperson3 = Salesperson.new

salesperson3["first_name"] = "Fayaz"
salesperson3["last_name"] = "Ahmed"
salesperson3["email"] = "fa@xyz.com"
salesperson3.save




# 3. write code to display how many salespeople rows are in the database

number_salespeople = Salesperson.count
puts "There are #{number_salespeople} salespeople in this table"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

change_email = Salesperson.find_by({"first_name" => "Saksham"})
change_email["email"] = "saksham@abc.com"
change_email.save
# p change_email

# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng

salespeople = Salesperson.all

for persons in salespeople
first_name = persons["first_name"]
last_name = persons["last_name"]
puts "#{first_name} #{last_name}"
end
