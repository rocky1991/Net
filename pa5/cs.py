from pymongo import MongoClient

# client = MongoClient('34.221.222.243:27017',replicaset='rs1')
client = MongoClient('34.221.222.243',27017)
# config = {'_id': 'rs1', 'members': [
# 	     {'_id': 0, 'host': '54.189.182.19:27017'},
# 	     {'_id': 1, 'host': '54.189.182.19:27018'},
# 	     {'_id': 2, 'host': '54.189.182.19:27019'}]}
# client.admin.command("replSetInitiate",config)
db = client.test1
post = db.mytest.find_one({'counter':5,'flag':'syn'})
print(str(post['counter']) + post['flag'])
print(db.mytest.find_one({'x':14})['x'])


# # client.test1.animal.find()
# try:
#     with client.test1.animal.watch([{'$match': {'operationType': 'insert'}}]) as stream:
#         for insert_change in stream:
#             print(insert_change)
# except pymongo.errors.PyMongoError:
#     print('Errors')