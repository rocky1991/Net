from pymongo import MongoClient 

client = MongoClient()

client = MongoClient('52.26.153.118',27017)

db = client.test_database

collection = db.test_collection
post = {"author":"Mike",
		"text":"My first post"}

posts = db.posts
post_id = posts.insert_one(post).inserted_id
print(post_id)
print(posts.find())

print(db.find())