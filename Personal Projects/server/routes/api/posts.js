const express = require('express');
const router = express.Router();
const { MongoClient } = require('mongodb');
const uri = "mongodb+srv://emmaksmith:@bc123!@vue-express.zoibngh.mongodb.net/?retryWrites=true&w=majority";

// Create a MongoClient with a MongoClientOptions object to set the Stable API version
async function connectToMongoDB() {
    try {
      await client.connect();
      console.log("Connected to MongoDB Atlas");
    } catch (err) {
      console.error(err);
    }
  }
  
  // Create a MongoClient instance
  const client = new MongoClient(uri, {
    useUnifiedTopology: true, // Use the new server discovery and monitoring engine
  });
  
  connectToMongoDB();

// get posts
router.get('/', async (req, res) => {
  const posts = await loadPostsCollection();
  res.send(await posts.find({}).toArray());
});

// add posts

// delete posts

async function loadPostsCollection() {
  return client.db('vue-express').collection('posts');
}

module.exports = router;

/*
const express = require('express');
const router = express.Router();
const { MongoClient } = require('mongodb');
const uri = "mongodb+srv://<username>:<password>@vue-express.zoibngh.mongodb.net/?retryWrites=true&w=majority";

async function connectToMongoDB() {
  try {
    await client.connect();
    console.log("Connected to MongoDB Atlas");
  } catch (err) {
    console.error(err);
  }
}

// Create a MongoClient instance
const client = new MongoClient(uri, {
  useUnifiedTopology: true, // Use the new server discovery and monitoring engine
});

connectToMongoDB();

// ... (rest of your code)

*/