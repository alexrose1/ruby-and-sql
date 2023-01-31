# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database
puts "There are #{Company.all.count} companies"
puts "There are #{Contact.all.count} contacts"

# 1. insert new rows in the contacts table with relationship to a company
danube = Company.find_by("name" => "Danube")
puts danube["id"]
tim = Contact.new
tim["first_name"] = "Tim"
tim["last_name"] = "Cook"
tim["email"] = "CookieT@apple.com"
tim["company_id"] = danube["id"]
puts tim["company_id"]

john = Contact.new
john["first_name"] = "John"
john["last_name"] = "Carpenter"
john["company_id"] = danube["id"]
john.save
tim.save
#tim["company_id"] = 
# 2. How many contacts work at Apple?

danube_contacts = Contact.where({"company_id" => danube["id"]})
puts danube_contacts.count

# 3. What is the full name of each contact who works at Apple?

for contact in danube_contacts
    firstname = contact["first_name"]
    lastname = contact["last_name"]
    fullname = "#{first_name} #{last_name}"
    puts "#{fullname}"
end 