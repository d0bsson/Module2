//
//  ViewController.swift
//  HW_Module2
//
//  Created by d0bsson on 08.11.2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Labeles:
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 50, y: 70, width: 100, height: 100)
        label.text = "Меня зовут: "
        return label
    }()
    
    lazy var secondNameLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 50, y: 95, width: 130, height: 100)
        label.text = "Моя фамилия: "
        return label
    }()
    
    lazy var groupName: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 50, y: 120, width: 100, height: 100)
        label.text = "Моя группа: "
        return label
    }()
    
    lazy var myName: UILabel = {
       let label = UILabel()
        label.frame = CGRect(x: 150, y: 70, width: 100, height: 100)
        label.text = "Дэвид"
        label.isHidden = true
        return label
    }()
    
    lazy var mySecondName: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 165, y: 95, width: 100, height: 100)
        label.text = "Бердников"
        label.isHidden = true
        return label
    }()
    
    lazy var myGroupName: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 120, width: 100, height: 100)
        label.text = "поток №5"
        label.isHidden = true
        return label
    }()
    
    //MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(nameLabel)
        view.addSubview(secondNameLabel)
        view.addSubview(groupName)
        view.addSubview(myName)
        view.addSubview(mySecondName)
        view.addSubview(myGroupName)
        
        view.addSubview(nameButton)
        view.addSubview(secondNameButton)
        view.addSubview(groupNameButton)
    }
    
    //MARK: - Buttons & Actions
    lazy var nameButton: UIButton = {
        let button = UIButton(primaryAction: nameButtonAction)
        button.frame = CGRect(x: 40, y: 350, width: 150, height: 40)
        button.setTitle("Показать имя", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        return button
    }()
    
    lazy var secondNameButton: UIButton = {
       let button = UIButton(primaryAction: secondNameAction)
        button.frame = CGRect(x: 205, y: 350, width: 150, height: 40)
        button.setTitle("Показать фамилию", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        return button
    }()
    
    lazy var groupNameButton: UIButton = {
        let button = UIButton(primaryAction: groupNameAction)
        button.frame = CGRect(x: 75, y: 400, width: 250, height: 40)
        button.setTitle("Показать группу", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        return button
    }()
    
    lazy var nameButtonAction =  UIAction { _ in
        self.myName.isHidden.toggle()
        
        if self.myName.isHidden {
            self.nameButton.setTitle("Показать имя", for: .normal)
        } else {
            self.nameButton.setTitle("Скрыть имя", for: .normal)
        }
    }
    
    lazy var secondNameAction = UIAction { _ in
        self.mySecondName.isHidden.toggle()
        
        if self.mySecondName.isHidden {
            self.secondNameButton.setTitle("Показать фамилию", for: .normal)
        } else {
            self.secondNameButton.setTitle("Скрыть фамилию", for: .normal)
        }
    }
    
    lazy var groupNameAction = UIAction {_ in
        self.myGroupName.isHidden.toggle()
        
        if self.myGroupName.isHidden {
            self.groupNameButton.setTitle("Показать номер группы", for: .normal)
        } else {
            self.groupNameButton.setTitle("Скрыть номер группы", for: .normal)
        }
    }
}

