//
//  SigninViewModel.swift
//  iChat
//
//  Created by Jorge Wendell on 10/02/22.
//

import Foundation
import FirebaseAuth

class SigninViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    @Published var formInvalid = false
    var alertText = ""
    
    @Published var isLoading = false
    
    func signIn() {
        isLoading = true
        print("email: \(email), senha: \(password)")
        
        Auth.auth().signIn(withEmail: email, password: password){
            result, err in
            guard let user = result?.user, err == nil else {
                self.formInvalid = true
                self.alertText = err!.localizedDescription
                print(err)
                self.isLoading = false
                return
            }
            self.isLoading = false
            print("Usuário logado \(user.uid)")
        }
    }
}
