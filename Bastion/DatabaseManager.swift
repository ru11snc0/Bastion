import GRDB
import Foundation

class DatabaseManager {
    static let shared = DatabaseManager()
    var dbQueue: DatabaseQueue?

    private init() {
        setupDatabase()
    }

    private func setupDatabase() {
        do {
            // Path to the database file
            let fileManager = FileManager.default
            let folderURL = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first!
            let dbURL = folderURL.appendingPathComponent("bastion.sqlite")

            // SQLCipher encryption key (Store in Keychain in production)
            let encryptionKey = "super_secret_key"

            // Initialize database with encryption
            dbQueue = try DatabaseQueue(path: dbURL.path)
            try dbQueue?.write { db in
                try db.execute(sql: "PRAGMA key = '\(encryptionKey)'") // Encrypt database
            }

            print("Database initialized at:", dbURL.path)
        } catch {
            print("Error initializing database:", error)
        }
    }
}//
//  DatabaseManager.swift
//  Bastion
//
//  Created by Renee Sullivan on 2/2/2025.
//

