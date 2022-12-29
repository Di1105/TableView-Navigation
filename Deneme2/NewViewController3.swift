//
//  NewViewController3.swift
//  Deneme2
//
//  Created by Dilara Elçioğlu on 29.12.2022.
//

import UIKit

class NewViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        lazy var accountHeader = UILabel()
        accountHeader.font = .systemFont(ofSize: 30)
        accountHeader.text = "---VC3---"
        accountHeader.textColor = .black
        view.addSubview(accountHeader)
        accountHeader.snp.makeConstraints { make in
            make.centerY.centerX.equalToSuperview()

        }
        
    }

}
