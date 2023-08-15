//
//  ProductsSceneVC.swift
//  FirstTaskProgrammatically
//
//  Created by Foothill on 15/08/2023.
//

import UIKit

import UIKit

class ProductsSceneVC: UIViewController {

    var sceneModel: MenuSceneModel?

    let appleImage = UIImageView()
    let appleLabel = UILabel()
    let menuButton = FTButton(color: .systemBlue, title: "Choose Product")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    func configureUI(){
        configureAppleProductScene()
        
    }
    
    func configureAppleProductScene() {
        view.addSubview(appleImage)
        view.addSubview(appleLabel)
        view.addSubview(menuButton)
        
        appleImage.translatesAutoresizingMaskIntoConstraints = false
        appleLabel.translatesAutoresizingMaskIntoConstraints = false
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        
        appleImage.image = sceneModel?.imageScene

        NSLayoutConstraint.activate([
            appleImage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            appleImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            appleImage.heightAnchor.constraint(equalToConstant: 250),
            appleImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50)
        ])
        
        
        appleLabel.font = .systemFont(ofSize: 22, weight: .medium)
        appleLabel.text = sceneModel?.labelText
        
        NSLayoutConstraint.activate([
            appleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            appleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            appleLabel.topAnchor.constraint(equalTo: appleImage.bottomAnchor, constant: 10)
        
        ])
        
        menuButton.addTarget(self, action: #selector(presentMenuSceneVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            menuButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            menuButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            menuButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 350),
            menuButton.heightAnchor.constraint(equalToConstant: 50)
            
        
        ])
        
    }
    
    @objc func presentMenuSceneVC(){
        present(MenuSceneVC(), animated: true)
    }

}
