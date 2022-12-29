//
//  UserPlayerViewModel.swift
//  ChessBattles
//
//  Created by Frederic Lefebvre on 2022-11-09.
//


//FIREBASE DOCUMENT
//birthyear"2000"country"Canada"name"John"rating"549"
import Foundation
import FirebaseFirestore
import Firebase
class UserPlayersViewModel: ObservableObject {
    
    @Published var list = [UserPlayers]()
    
    func updateData(userPlayerToUpdate: UserPlayers){
        let db = Firestore.firestore()
        
        db.collection("userPlayers").document(userPlayerToUpdate.id).setData(["name":userPlayerToUpdate.name,
                                                                              "rating":userPlayerToUpdate.rating,
                                                                              "birthyear":userPlayerToUpdate.birthyear,
                                                                              "country":userPlayerToUpdate.country],
                                                                             merge: true)
    }
    
    
    func deleteData(userPlayerToDelete: UserPlayers){
        let db = Firestore.firestore()
        
        db.collection("userPlayers").document(userPlayerToDelete.id).delete(){ error in
            if error == nil {
                
                DispatchQueue.main.async {
                    self.list.removeAll { userPlayers in
                        return userPlayers.id == userPlayerToDelete.id
                    }
                }
            }
        }
    }
    
    func addData(name:String, rating:String, birthyear:String, country:String){
        let db = Firestore.firestore()
        
        db.collection("userPlayers").addDocument(data: ["name":name,"country":country, "birthyear":birthyear, "rating":rating]){ error in
            if error == nil{
                //no error
                self.getData()
            }else{
                //handle the error
            }
        }
        
    }
    
    func getData(){
        //get reference of db
        let db = Firestore.firestore()
        
        //read documents at specific path
        db.collection("userPlayers").getDocuments { snapshot, error in
            
            //check for error
            if error == nil{
                //no errors
                if let snapshot = snapshot{
                    
                    //update list on main thread
                    DispatchQueue.main.async {
                        
                        //create user player for each documents returned
                        self.list = snapshot.documents.map { d in
                            return UserPlayers(
                                id:d.documentID,
                                name: d["name"] as? String ?? "",
                                rating: d["rating"] as? String ?? "",
                                birthyear: d["birthyear"] as? String ?? "",
                                country: d["country"] as? String ?? "")
                        }
                    }
                    
                    
                }
                
            }else{
                //handle the error
                
            }
        }
    }
    
}
