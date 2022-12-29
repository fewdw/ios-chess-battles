//
//  LogsViewModel.swift
//  ChessBattles
//
//  Created by Frederic Lefebvre on 2022-12-06.
//

import Foundation
import FirebaseFirestore
import Firebase

class LogsViewModel: ObservableObject {
    
    
    @Published var list = [String]()
    
    func getData(){
        //get reference of db
        let db = Firestore.firestore()
        
        //read documents at specific path
        db.collection("logs").getDocuments { snapshot, error in
            
            //check for error
            if error == nil{
                //no errors
                if let snapshot = snapshot{
                    
                    //update list on main thread
                    DispatchQueue.main.async {
                        
                        //create user player for each documents returned
                        self.list = snapshot.documents.map { d in
                            return d["log"] as? String ?? ""
                        }
                    }
                }
                
            }else{
                //handle the error
                
            }
        }
    }
    
    func addLog(logName:String){
        let db = Firestore.firestore()
        
        db.collection("logs").addDocument(data: ["id":1,"log":logName]){ error in
            if error == nil{
                //no error
                self.getData()
            }else{
                //handle the error
            }
        }
        
    }
    
    
    func deleteData(){
        
        //get reference of db
        let db = Firestore.firestore()
        
        //read documents at specific path
        db.collection("logs").getDocuments { snapshot, error in
            
            //check for error
            if error == nil{
                //no errors
                if let snapshot = snapshot{
                    
                    for document in snapshot.documents {
                        
                        if document == document {
                            db.collection("logs").document(document.documentID).delete() { err in
                                if let err = err {
                                    print("Error removing document: \(err)")
                                } else {
                                    print("Document successfully removed!")
                                }
                            }
                        }
                    }
                    
                    //update list on main thread
                    DispatchQueue.main.async {
                        self.list = []
                    }
                }
                
            }else{
                //handle the error
                
            }
        }
        
    }
}



//db.collection("userPlayers").document(userPlayerToDelete.id).delete()
