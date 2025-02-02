//
//  SupabaseManager.swift
//  Bastion
//
//  Created by Renee Sullivan on 2/2/2025.
//

import Foundation
import Supabase

class SupabaseManager {
    static let shared = SupabaseManager()
    let supabase: SupabaseClient
    
    private init() {
        let supabaseURL = URL(string: "https://zhbpfxnpxsbwmcuaopja.supabase.co")!
        let supabaseAnonKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpoYnBmeG5weHNid21jdWFvcGphIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzg0NjEwMDAsImV4cCI6MjA1NDAzNzAwMH0.DX74e1SfVWo5ADxtaxmIpT3ixp-_MZS7Rx7dl1tx49g"
        
        self.supabase = SupabaseClient(supabaseURL: supabaseURL, supabaseKey: supabaseAnonKey)
    }
    
    
    
}
