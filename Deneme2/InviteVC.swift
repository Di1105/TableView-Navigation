//
//  ViewController.swift
//  Deneme2
//
//  Created by Dilara Elçioğlu on 29.12.2022.
//

import UIKit

class InviteVC: UIViewController {
    
    lazy var tableView = UITableView()
    lazy var imageView = UIImageView()
    lazy var labelFriend = UILabel()
    lazy var labelnumber = UILabel()
    lazy var inviteButton = UIButton()
    
    private var arrayVC: [UIViewController] = [NewViewController1(),NewViewController2(),NewViewController3(),NewViewController4(),]

    
    var arrayImages: [UIImage] = []
    var arrayFriend: [String] = ["James Lawson","Laura Octavian","Jhonson Bridge","Griffin Rod"]
    var arrayTel: [String] = ["+1-300-555-0133","+1-302-555-0133","+1-300-554-0143","+1-304-544-0133"]
    
    struct CellInvite {
        static let rowCell = "Cell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(InviteCell.self, forCellReuseIdentifier: CellInvite.rowCell)
        

    }
    
    func setupUI(){
        
        arrayImages.append(UIImage(named: "pic1")!)
        arrayImages.append(UIImage(named: "pic2")!)
        arrayImages.append(UIImage(named: "pic3")!)
        arrayImages.append(UIImage(named: "pic4")!)

        
        lazy var backButton = UIButton()
        backButton.setImage(UIImage(named: "Left"), for: .normal)
        backButton.tintColor = .darkGray
        view.addSubview(backButton)
        backButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(80)
            make.leading.equalToSuperview().offset(16)
            make.width.height.equalTo(32)
        }
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
        lazy var accountHeader = UILabel()
        accountHeader.font = .systemFont(ofSize: 30)
        accountHeader.text = "Invite Friends"
        accountHeader.textColor = .black
        view.addSubview(accountHeader)
        accountHeader.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(80)
            make.leading.equalTo(backButton.snp.trailing).offset(8)
        }
        
        //TABLE VIEW-----------------------------------------------------
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.equalTo(accountHeader.snp.bottom).offset(10)
            make.trailing.leading.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
    }
    
    @objc func backButtonTapped(){
        
    }
}


extension InviteVC:  UITableViewDelegate,UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayFriend.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellInvite.rowCell) as! InviteCell
        cell.cellImage.image = arrayImages[indexPath.row]
        cell.cellLabel.text = arrayFriend[indexPath.row]
        cell.cellLabel2.text = arrayTel[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vC = arrayVC[indexPath.row]
        vC.modalPresentationStyle = .automatic
        self.present(vC, animated: true , completion: nil)
    }
    
}

