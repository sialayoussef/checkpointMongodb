# Create a database called "contact"

use contact

# Create a collection called "contactlist"

db.createCollection("contactlist")

# Insert these documents  in "contactlist" 

db.contactlist.insertMany([
    { "Last name": "Ben", "First name": "Moris", "Email": "ben@gmail.com", "age": 26 },
    { "Last name": "Kefi", "First name": "Seif", "Email": "kefi@gmail.com", "age": 15 },
    { "Last name": "Emilie", "First name": "brouge", "Email": "emilie.b@gmail.com", "age": 40 },
    { "Last name": "Alex", "First name": "brown", "age": 4 },
    { "Last name": "Denzel", "First name": "Washington", "age": 3 }
])


# Display all the information about only one person using his ID.

db.contactlist.findOne({ "_id": ObjectId("specific_id_here") }) 

# Display all the contacts with an age >18.

db.contactlist.find({ "age": { "$gt": 18 } }).pretty() 


# Display all the contacts with an age>18 and name containing "ou".

db.contactlist.find({ 
    "age": { "$gt": 18 },
    "First name": { "$regex": "ou", "$options": "i" }
}).pretty() 
db.contactlist.find().pretty()

# Change the contact's first name from"Kefi Seif" to "Kefi Anis".

db.contactlist.updateOne({ "First name": "Seif" }, { $set: {
"First name": "Anis" } }) 

# Delete the contacts that are aged under <5.

db.contactlist.deleteMany({ "age": { "$lt": 18 } }) 

# Display all of the contacts list.

db.contactlist.find().pretty() 


