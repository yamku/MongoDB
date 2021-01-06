#Connecting to Atlas
mongo "mongodb+srv://<username>:<password>@<cluster>.mongodb.net/admin"


#Import Export (BSON vs JSON)
mongodump --uri "mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_supplies"

mongoexport --uri="mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_supplies" --collection=sales --out=sales.json

mongorestore --uri "mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_supplies"  --drop dump

mongoimport --uri="mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_supplies" --drop sales.json

#Find Command
db.zips.find({"state": "NY"}).count()

db.zips.find({"state": "NY", "city": "ALBANY"},{"ordered":"True"})

db.zips.find({"state": "NY", "city": "ALBANY"}).pretty()

#Insert Commands

db.sample_airbnb.insert({"name":"Yu"})

#Update commands
db.zips.updateMany({"city":"HUDSON"},{"$inc":{"pop":10}})

$push $set $inc