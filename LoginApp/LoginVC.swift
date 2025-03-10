//
//  LoginVC.swift
//  LoginApp
//
//  Created by Teng🐦‍🔥 on 10/3/2025.
//

import UIKit

class LoginVC: UIViewController{

    private let loginView = LoginView()
    private let loginViewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
        setupConstraints()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    func setup() {
        setActions()
        setBindings()
    }

    func setupConstraints() {
        loginView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(loginView)
        NSLayoutConstraint.activate([
            loginView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            loginView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            loginView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            loginView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            loginView.heightAnchor.constraint(equalToConstant: 500)
        ])
        
    }
    
    func setActions() {
        loginView.usernameTF.addTarget(self, action: #selector(usernameChanged), for: .editingChanged)
        loginView.passTF.addTarget(self, action: #selector(passwordChanged), for: .editingChanged)
        loginView.loginBtn.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        
    }
    
    
    @objc private func usernameChanged() {
        loginViewModel.updateUsername(loginView.usernameTF.text!)
    }
 
    @objc private func passwordChanged() {
        loginViewModel.updatePassword(loginView.passTF.text!)
    }
    
    @objc private func loginAction() {
        loginViewModel.Login()
    }
    
    private func setBindings() {
        loginViewModel.loginSuccess = {
            [weak self] in 
            self?.navigationController?.pushViewController(HomeVC(), animated: true)
        }
        
        loginViewModel.loginFail = {
            [weak self] message in
            self?.showAlertMessage(title: "Error", message: message)
        }
    }
    
    private func showAlertMessage(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }

}
