# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table

new_company = Company.new
# puts new_company

new_company["name"] = "Saksham"
new_company["city"] = "Chicago"
new_company["state"] = "IL"
new_company["url"] = "www.xyz.com"
new_company["address"]

new_company.save
# p new_company

new_company_2 = Company.new
new_company_2["name"] = "Amazon"
new_company_2["city"] = "Seattle"
new_company_2["state"] = "IL"
new_company_2["url"] = "www.amazon.com"

new_company_2.save
# p new_company_2

new_company_3 = Company.new
new_company_3["name"] = "Airbnb"
new_company_3["city"] = "SF"
new_company_3["state"] = "California"
new_company_3["url"] = "www.airbnb.com"

new_company_3.save
# p new_company_3

number_of_companies = Company.all.count
puts "Companies: #{number_of_companies}"


# 3. query companies table to find all row with IL company

il_companies = Company.where({"state"=>"IL"})
puts "There are #{il_companies.count} IL Companies"


# 4. query companies table to find single row for Apple

Company_A = Company.find_by({"name"=>"Amazon"})
p Company_A["name"]
p Company_A["state"]
p Company_A["city"]


# 5. read a row's column value
# same as code above

# 6. update a row's column value

update_row = Company.find_by({"name"=>"Amazon"})
update_row["url"] = "www.abc.com"
p update_row

# 7. delete a row
