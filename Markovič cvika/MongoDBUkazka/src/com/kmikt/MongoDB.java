package com.kmikt;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;

/**
 * Created by miro on 02.05.2018.
 */
public class MongoDB {

    private static MongoClient connection;

    private MongoClient getMongoClient() {
        if (connection == null) {
            connection = new MongoClient();
        }
        return connection;
    }
    private MongoDatabase getDB() {
        return getMongoClient().getDatabase("jsptest");
    }

    public MongoCollection<Document> getCollection(String collectionName) {
        return getDB().getCollection(collectionName);
    }

}
