//
//  Loginself.swift
//  LoginApp
//
//  Created by Teng🐦‍🔥 on 10/3/2025.
//

import UIKit

class LoginView: UIView {

    private var loginModel = LoginModel(username: "", password: "")
    let welcomeLbl = UILabel()
    let loginLbl = UILabel()
    lazy var usernameTF = CustomTextField()
    let passLbl = UILabel()
    lazy var passTF = CustomTextField()
    let loginBtn = UIButton()
    let registerLbl = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        self.backgroundColor = UIColor.clear
        setUI()
        setConstraints()
    }
    
    // MARK: Setup UI
    func setUI() {
        createWelcomeLbl()
        createLoginLbl()
        createUsernameTF()
        createPasswordLbl()
        createPasswordTF()
        createLoginBtn()
        createRegisterLbl()
    }
    
    // MARK: Setup Constraints
    func setConstraints() {
        welcomeLbl.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(welcomeLbl)
        NSLayoutConstraint.activate([
            welcomeLbl.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            welcomeLbl.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -200)
        ])
        
        loginLbl.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(loginLbl)
        NSLayoutConstraint.activate([
            loginLbl.topAnchor.constraint(equalTo: self.welcomeLbl.bottomAnchor, constant: 50),
            loginLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20)
        ])
        
        usernameTF.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(usernameTF)
        NSLayoutConstraint.activate([
            usernameTF.topAnchor.constraint(equalTo: self.loginLbl.bottomAnchor, constant: 5),
            usernameTF.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            usernameTF.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            usernameTF.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        passLbl.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(passLbl)
        NSLayoutConstraint.activate([
            passLbl.topAnchor.constraint(equalTo: self.usernameTF.bottomAnchor, constant: 20),
            passLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20)
        ])
        
        passTF.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(passTF)
        NSLayoutConstraint.activate([
            passTF.topAnchor.constraint(equalTo: self.passLbl.bottomAnchor, constant: 5),
            passTF.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            passTF.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            passTF.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(loginBtn)
        NSLayoutConstraint.activate([
            loginBtn.topAnchor.constraint(equalTo: self.passTF.bottomAnchor, constant: 50),
            loginBtn.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            loginBtn.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            loginBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        registerLbl.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(registerLbl)
        NSLayoutConstraint.activate([
            registerLbl.topAnchor.constraint(equalTo: self.loginBtn.bottomAnchor, constant: 20),
            registerLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
        ])
    }
    
    //MARK: Initializer
    func createWelcomeLbl() {
        welcomeLbl.text = "Login App"
        welcomeLbl.textColor = .darkText
        welcomeLbl.font = UIFont.boldSystemFont(ofSize: 40)
        welcomeLbl.adjustsFontSizeToFitWidth = true
    }
    
    func createLoginLbl() {
        loginLbl.text = "Username:"
        loginLbl.textColor = .darkText
        loginLbl.font = UIFont.systemFont(ofSize: 14)
        loginLbl.adjustsFontSizeToFitWidth = true
    }
    
    func createUsernameTF() {
        usernameTF.placeholder = "Enter username"
        usernameTF.textAlignment = .center
    }
    
    func createPasswordLbl() {
        passLbl.text = "Password:"
        passLbl.textColor = .darkText
        passLbl.font = UIFont.systemFont(ofSize: 14)
        passLbl.adjustsFontSizeToFitWidth = true
        
    }
    
    func createPasswordTF() {
        passTF.placeholder = "Enter password"
        passTF.textAlignment = .center
        passTF.isSecureTextEntry = true
    }

    func createLoginBtn() {
        loginBtn.backgroundColor = .systemBlue
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.setTitleColor(.white, for: .normal)
        loginBtn.setTitleColor(.gray, for: .highlighted)
    }
    
    func createRegisterLbl() {
        registerLbl.text = "Click here to create account."
        registerLbl.textColor = .darkText
        registerLbl.font = UIFont.systemFont(ofSize: 14)
        passLbl.adjustsFontSizeToFitWidth = true
    }
    

}
