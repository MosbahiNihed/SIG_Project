from flask import Flask, jsonify, request
import random
from pymongo import MongoClient

app = Flask(__name__)

client = MongoClient("mongodb://localhost:27017/")
db = client["test_db"]
data_collection = db["data"]

@app.route("/")
def generate_data():
    data = {
        "longitude": random.uniform(-180, 180),
        "latitude": random.uniform(-90, 90),
        "image_url": "https://example.com/image" + str(random.randint(1, 100)) + ".jpg"
    }
    return jsonify(data)

@app.route("/store", methods=["POST"])
def store_data(data_to_be_stored):
    data_collection.insert_one(data_to_be_stored)
    return "Data stored successfully!", 201

if __name__ == "__main__":
    app.run()
