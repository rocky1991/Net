from pymongo import MongoClient 

client = MongoClient()

<<<<<<< HEAD
client = MongoClient('localhost',27017)
=======
client = MongoClient('52.26.153.118',27017)
>>>>>>> a2a77a00c32e9871336561f5899746f4e61d7325

db = client.test_database

collection = db.test_collection
post = {"author":"Mike",
		"text":"My first post"}

posts = db.posts
post_id = posts.insert_one(post).inserted_id
print(post_id)
print(posts.find())

print(db.find())