//
//  AuthViewModel.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 14.10.22.
//

import SwiftUI
import Firebase
import FirebaseStorage

class AuthViewModel: ObservableObject {
    func login() {
        
    }
    
    func register(email: String, password: String, username: String, fullname: String, profileImage: UIImage) {
        
        guard let imageData = profileImage.jpegData(compressionQuality: 0.3) else {return}
        let filename = NSUUID().uuidString
        let storageRef = Storage.storage().reference().child(filename)
        
        storageRef.putData(imageData) { _, error in
            if let error = error {
                print("DEBUG: failed to upload image ", error.localizedDescription)
                return
            }
            
            print("DEBUG: Successfully uploaded user photo..")
            
            storageRef.downloadURL { url, _ in
                guard let profileImageURL = url?.absoluteString else {return}
                
                Auth.auth().createUser(withEmail: email, password: password) { result, error in
                    if let error = error {
                        print("DEBUG: Catched Error: ", error.localizedDescription)
                        return
                    }
                    
                    guard let user = result?.user else {return}
                    let uid = user.uid
                    
                    let data = ["email": email,
                        "username": username,
                        "fullname": fullname,
                        "profileImageUrl": profileImageURL,
                        "uid": uid]
                    
                    Firestore.firestore().collection("users").document(uid).setData(data) { error in
                        if let error = error {
                            print("DEBUG: Error in user_data uploading ", error.localizedDescription)
                            return
                        }
                        print("DEBUG: Successfully uploaded user data")
                    }
                }
            }
        }
    }
}
