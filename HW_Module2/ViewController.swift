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
        label.isHidden = false
        return label
    }()
    
    lazy var mySecondName: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 165, y: 95, width: 100, height: 100)
        label.text = "Бердников"
        label.isHidden = false
        return label
    }()
    
    lazy var myGroupName: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 120, width: 100, height: 100)
        label.text = "поток №5"
        label.isHidden = false
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
        view.addSubview(OkNameButton)
        view.addSubview(OkSecondNameButton)
        view.addSubview(OkGroupName)
        
        view.addSubview(nameTF)
        view.addSubview(secondNameTF)
        view.addSubview(groupTF)
    }
    
    //MARK: - Buttons & Actions
    lazy var nameButton: UIButton = {
        let button = UIButton(primaryAction: nameButtonAction)
        button.frame = CGRect(x: 40, y: 200, width: 150, height: 40)
        button.setTitle("Показать имя", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        return button
    }()
    
    lazy var secondNameButton: UIButton = {
       let button = UIButton(primaryAction: secondNameAction)
        button.frame = CGRect(x: 205, y: 200, width: 150, height: 40)
        button.setTitle("Показать фамилию", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        return button
    }()
    
    lazy var groupNameButton: UIButton = {
        let button = UIButton(primaryAction: groupNameAction)
        button.frame = CGRect(x: 75, y: 250, width: 250, height: 40)
        button.setTitle("Показать группу", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        return button
    }()
    
    lazy var OkNameButton: UIButton = {
        let button = UIButton(primaryAction: OkNameButtonAction)
        button.frame = CGRect(x: 300, y: 300, width: 60, height: 40)
        button.setTitle("OK", for: .normal)
        button.backgroundColor = .lightText
        button.layer.cornerRadius = 3
        return button
    }()
    
    lazy var OkSecondNameButton: UIButton = {
        let button = UIButton(primaryAction: OkSecondNameButtonAction)
        button.frame = CGRect(x: 300, y: 350, width: 60, height: 40)
        button.setTitle("OK", for: .normal)
        button.backgroundColor = .lightText
        button.layer.cornerRadius = 3
        return button
    }()
    
    lazy var OkGroupName: UIButton = {
        let button = UIButton(primaryAction: OkGroupNameAction)
        button.frame = CGRect(x: 300, y: 400, width: 60, height: 40)
        button.setTitle("OK", for: .normal)
        button.backgroundColor = .lightText
        button.layer.cornerRadius = 3
        return button
    }()
    
    lazy var OkGroupNameAction = UIAction { _ in
        if let text = self.groupTF.text {
            self.myGroupName.text = text
        }
    }
    
    lazy var OkNameButtonAction = UIAction { _ in
        if let text = self.nameTF.text {
            self.myName.text = text
        }
    }
    
    lazy var OkSecondNameButtonAction = UIAction { _ in
        if let text = self.secondNameTF.text {
            self.mySecondName.text = text
        }
    }
    
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
    
    lazy var groupNameAction = UIAction { _ in
        self.myGroupName.isHidden.toggle()
        
        if self.myGroupName.isHidden {
            self.groupNameButton.setTitle("Показать номер группы", for: .normal)
        } else {
            self.groupNameButton.setTitle("Скрыть номер группы", for: .normal)
        }
    }
    
    
    
    //MARK: - Text Fields:
    lazy var nameTF: UITextField = {
        let textField = UITextField()
        textField.frame = CGRect(x: 40, y: 300, width: 250, height: 40)
        textField.placeholder = "Введите имя"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    lazy var secondNameTF: UITextField = {
        let textField = UITextField()
        textField.frame = CGRect(x: 40, y: 350, width: 250, height: 40)
        textField.placeholder = "Введите фамилию"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    lazy var groupTF: UITextField = {
        let textField = UITextField()
        textField.frame = CGRect(x: 40, y: 400, width: 250, height: 40)
        textField.placeholder = "Введите номер группы"
        textField.borderStyle = .roundedRect
        return textField
    }()
}

