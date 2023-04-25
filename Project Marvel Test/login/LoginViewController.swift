//
//  ViewController.swift
//  Project Marvel Test
//
//  Created by Celso Lima on 25/04/23.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    private var textFieldBottomConstraint: NSLayoutConstraint?
    
    lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "marvel_logo")?.scale(newWidth: self.view.frame.width/3)
        return image
    }()
    
    lazy var userTExtField: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.autocorrectionType = .no
        text.backgroundColor = UIColor.white
        text.borderStyle = .roundedRect
        text.keyboardType = .emailAddress
        text.textColor = .black
        text.clipsToBounds = true
        text.layer.cornerRadius = 12
        text.layer.borderWidth = 1.0
        text.layer.borderColor = UIColor.red.cgColor
        text.placeholder = "Informe o usuario"
        return text
    }()
    
    lazy var passTExtField: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.autocorrectionType = .no
        text.backgroundColor = UIColor.white
        text.borderStyle = .roundedRect
        text.keyboardType = .default
        text.isSecureTextEntry = true
        text.textColor = .black
        text.clipsToBounds = true
        text.layer.cornerRadius = 12
        text.layer.borderWidth = 1.0
        text.layer.borderColor = UIColor.red.cgColor
        text.placeholder = "Informe a senha"
        return text
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(UIColor.red, for: .normal)
        button.addTarget(self, action: #selector(test), for: .touchUpInside)
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewConfigs()
        self.addSubViews()
        self.configConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
          super.viewWillDisappear(animated)
         

       }
    
}

extension LoginViewController: BasicMethods {
    func viewConfigs() {
        self.view.backgroundColor = .black
        
    }
    
    func configConstraints() {
        self.logoImageView.snp.makeConstraints { make in
            make.centerX.equalTo(self.view.snp.centerX)
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(35)
        }
        
        self.userTExtField.snp.makeConstraints { make in
            make.top.equalTo(self.logoImageView.snp.bottom).offset(10)
            make.centerX.equalTo(self.view.snp.centerX)
            make.width.equalToSuperview()
        }
        
        self.passTExtField.snp.makeConstraints { make in
            make.top.equalTo(self.userTExtField.snp.bottom).offset(10)
            make.centerX.equalTo(self.view.snp.centerX)
            make.width.equalToSuperview()
        }
        
        self.loginButton.snp.makeConstraints { make in
            make.top.equalTo(self.passTExtField.snp.bottom).offset(10)
            make.centerX.equalTo(self.view.snp.centerX)
            make.width.equalToSuperview()
        }
        
    }
    
    func addSubViews() {
        self.view.addSubview(logoImageView)
        self.view.addSubview(userTExtField)
        self.view.addSubview(passTExtField)
        self.view.addSubview(loginButton)
        
    }
    
}

extension LoginViewController {
    @objc func test() {
        print("testando")
    }
}

