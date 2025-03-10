//
//  HomeVC.swift
//  LoginApp
//
//  Created by Teng🐦‍🔥 on 10/3/2025.
//

import UIKit

class HomeVC: UIViewController {

    let welcomeLbl = UILabel()
    let logoutBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
        setConstraints()
    }
    
    
    
    func setUI() {
        applyGradient(to: view)
        createWelcomeLbl()
        createLogoutBtn()
    }
    
    func setConstraints() {
        welcomeLbl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(welcomeLbl)
        NSLayoutConstraint.activate([
            welcomeLbl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            welcomeLbl.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        logoutBtn.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoutBtn)
        NSLayoutConstraint.activate([
            logoutBtn.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -20),
            logoutBtn.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20),
            logoutBtn.widthAnchor.constraint(equalToConstant: 100),
            logoutBtn.heightAnchor.constraint(equalToConstant: 20),
        ])
    }
    
    func createWelcomeLbl() {
        welcomeLbl.text = "Welcome"
        welcomeLbl.textColor = .white
        welcomeLbl.font = UIFont.systemFont(ofSize: 50)
    }
    
    func createLogoutBtn() {
        logoutBtn.backgroundColor = .systemBlue
        logoutBtn.setTitle("Logout", for: .normal)
        logoutBtn.setTitleColor(.white, for: .normal)
        logoutBtn.setTitleColor(.gray, for: .highlighted)
        logoutBtn.addTarget(self, action: #selector(logoutAction), for: .touchUpInside)
    }
    
    @objc func logoutAction() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    

    func applyGradient(to view: UIView) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        
        gradientLayer.colors = [
            UIColor.darkGray.cgColor,
            UIColor.black.cgColor,
            UIColor.black.cgColor
        ]

        gradientLayer.locations = [0.0, 0.1, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)  // Top
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)    // Bottom
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

}
