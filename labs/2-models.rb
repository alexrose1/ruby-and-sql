# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
SalesPerson.destroy_all
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
puts "There are #{SalesPerson.all.count} companies"
# 3. write code to display how many salespeople rows are in the database

new_SP1 = SalesPerson.new

new_SP1["first_name"] = "Boris"
new_SP1["last_name"] = "Johnson"
new_SP1["email"] = "bigboris@hotmail.com"
new_SP1.save


new_SP2 = SalesPerson.new
new_SP2["first_name"] = "Donald"
new_SP2["last_name"] = "Duck"
new_SP2["email"] = "thebigquack@birdy.net"
new_SP2.save
puts
puts "There are #{SalesPerson.all.count} people in this database/table"


# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
new_SP1["first_name"] = "BigB"
new_SP1.save
puts new_SP1["first_name"]
puts new_SP1.inspect

# CHALLENGE:
# 5. write code to display each salesperson's full name
all_SP = SalesPerson.all
for THING in all_SP
    first_name = THING["first_name"]
    last_name = THING["last_name"]
    email = THING["email"]

    puts "#{first_name} #{last_name} - #{email}"
end 
# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
