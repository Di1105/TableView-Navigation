//
//  NewViewController4.swift
//  Deneme2
//
//  Created by Dilara Elçioğlu on 29.12.2022.
//

import UIKit

class NewViewController4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        lazy var accountHeader = UILabel()
        accountHeader.font = .systemFont(ofSize: 30)
        accountHeader.text = "---VC4---"
        accountHeader.textColor = .black
        view.addSubview(accountHeader)
        accountHeader.snp.makeConstraints { make in
            make.centerY.centerX.equalToSuperview()
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
