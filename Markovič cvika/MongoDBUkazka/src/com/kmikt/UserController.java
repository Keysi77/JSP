package com.kmikt;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.model.Filters;
import org.bson.Document;
import org.bson.types.ObjectId;

/**
 * Created by miro on 02.05.2018.
 */
public class UserController {

    public MongoCursor<Document> getAllUsers(){
        MongoCollection<Document> collection = new MongoDB().getCollection("users");

        return collection.find().iterator();
    }

    public Document getUser(String objectID){
        MongoCollection<Document> collection = new MongoDB().getCollection("users");

        return collection.find(Filters.eq("_id", new ObjectId(objectID))).first();
    }

    public void insertUser(Document User){
        MongoCollection<Document> collection = new MongoDB().getCollection("users");

        collection.insertOne(User);

    }

    public void deleteUser(String objectID){

        MongoCollection<Document> collection = new MongoDB().getCollection("users");
        collection.findOneAndDelete(Filters.eq("_id",new ObjectId(objectID)));

    }

}
