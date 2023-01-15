//
//  UserModel.swift
//  dz 4 mes 2ur
//
//  Created by Ажо Алмасбеков on 14/1/23.
//

import Foundation

class UserModel {
    private var controller: UserController?
    
    private let data = Data().data
    
    init(controller:UserController) {
        self.controller = controller
    }
    
    func analis (username:String, password:String) -> String{
        let userExist = data [username] != nil
        
        if userExist {
            if password == data[username] {
                return "Все верно"
            }else{
                return "Неверный пароль"
            }
        }else{
            return "Пользователь не существует"
        }
    }
}

class Data {
    let data: [String:String] = ["Ios":"1234", "Ajo":"405543"]
}
