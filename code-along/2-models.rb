# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************
Company.destroy_all
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
puts "There are #{Company.all.count} companies"
# 3. write code to display how many salespeople rows are in the database

new_company = Company.new

new_company["name"] = "Applepie"
new_company["city"] = "Florence"
new_company["state"] = "Minnesota"
new_company["url"] = "www.google.com"
new_company.save


new_company = Company.new
new_company["name"] = "Danube"
new_company["city"] = "Seattle"
new_company["state"] = "Washington"
new_company.save

forest = Company.new
forest.save
gump = Company.new
gump["state"] = "Washington"
gump["url"] = "abc.com"
gump.save
# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table

# 3. query companies table to find all row with California company

# 4. query companies table to find single row for Apple

# 5. read a row's column value
puts gump["url"]
# 6. update a row's column value
gump["url"] = "FACEBOOK.COM"
gump.save
puts gump["url"]

# 7. delete a row
