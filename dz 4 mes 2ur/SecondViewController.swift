//
//  SecondViewController.swift
//  dz 4 mes 2ur
//
//  Created by Ажо Алмасбеков on 14/1/23.
//

import Foundation
import UIKit

class SecondVC : UIViewController {
     lazy var usernameLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .white
         label.textAlignment = .center
        return label
    }()
    
    func setupSubviews() {
        view.addSubview(usernameLabel)
        usernameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubviews()
    }
}
