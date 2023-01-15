//
//  ViewController.swift
//  dz 4 mes 2ur
//
//  Created by Ажо Алмасбеков on 14/1/23.
//

import UIKit
import SnapKit


class ViewController: UIViewController {
    
    private var controller: UserController?
    
    private lazy var userTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "Имя пользователя"
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        return view
    }()
    
    private lazy var passwordTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "Пароль"
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        return view
    }()
    
    private lazy var authButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .white
        view.layer.cornerRadius = 15
        view.setTitle("Вход", for: .normal)
        view.setTitleColor(.blue, for: .normal)
        view.addTarget(self, action: #selector(authButtonTap), for: .touchUpInside)
        return view
    }()
    
    @objc func authButtonTap() {
        let answerFromController = controller?.sendInfo(username: userTextField.text!, password: passwordTextField.text!)
        if answerFromController == "Все верно" {
            let secondVC = SecondVC()
            secondVC.usernameLabel.text = userTextField.text!
            navigationController?.pushViewController(secondVC, animated: true)
        }else if answerFromController == "Неверный пароль"{
            let incorrectPasswordAlert = UIAlertController(title: "Неверный пароль!", message: "Попробуйте еще раз!", preferredStyle: .alert)
            incorrectPasswordAlert.addAction(UIAlertAction(title: "Ok", style: .default))
            
            present(incorrectPasswordAlert, animated: true)
        }else if answerFromController == "Пользователь не существует"{
            let noSuchUserAlert = UIAlertController(title: "Такого пользователя не существует!", message: "Поробуйте еще раз!", preferredStyle: .alert)
            noSuchUserAlert.addAction(UIAlertAction(title: "Ok", style: .default))
            present(noSuchUserAlert, animated: true)
        }
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubviews()
        
        
        view.backgroundColor = .systemCyan
        self.controller = UserController(view: self)
    }

    func setupSubviews () {
        view.addSubview(userTextField)
        userTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(40)
            make.top.equalToSuperview().offset(150)
        }
        
        view.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(userTextField.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(40)
        }
        
        view.addSubview(authButton)
        authButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(40)
            make.height.equalTo(50)
            make.width.equalTo(120)
            make.centerX.equalToSuperview()
        }
        
    }
    
    
}

