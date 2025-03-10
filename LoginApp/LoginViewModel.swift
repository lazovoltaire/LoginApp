//
//  LoginViewModel.swift
//  LoginApp
//
//  Created by Teng🐦‍🔥 on 10/3/2025.
//

import Foundation



class LoginViewModel {
    private let user = "User" // static username
    private let pass = "Pass" //static password
    
    
    var loginModel = LoginModel(username: "", password: "")
    
    var loginSuccess: (() -> Void)?
    var loginFail: ((String) -> Void)?
    
    func updateUsername(_ username: String) {
        loginModel.username = username
    }
    
    func updatePassword(_ password: String) {
        loginModel.password = password
    }
    
    func Login() {
        if loginModel.username.isEmpty || loginModel.password.isEmpty {
            loginFail?("Username or Password cannot be empty!")
        } else if loginModel.username == user && loginModel.password == pass {
            loginSuccess?()
        } else {
            loginFail?("Incorrect username or password!")   
        }
    }
    
    
}
