//
//  UserController.swift
//  dz 4 mes 2ur
//
//  Created by Ажо Алмасбеков on 14/1/23.
//

import Foundation
import UIKit

class UserController {
    
    private var view: ViewController?
    
    private var model: UserModel!
    
    init(view: ViewController) {
        self.view = view
        self.model = UserModel(controller: self)
    }
    
    func sendInfo(username:String, password:String) -> String {
        let answerFromModel = self.model.analis(username: username, password: password)
        return answerFromModel
    }
    
    
}
