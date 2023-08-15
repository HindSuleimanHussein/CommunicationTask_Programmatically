//
//  FirstScene.swift
//  FirstTaskProgrammatically
//
//  Created by Foothill on 10/08/2023.
//

import UIKit

class FirstScene: UIViewController {

    let appleImageView = UIImageView()
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
        view.addSubview(appleImageView)
        view.addSubview(appleLabel)
        view.addSubview(menuButton)
        
        appleImageView.translatesAutoresizingMaskIntoConstraints = false
        appleLabel.translatesAutoresizingMaskIntoConstraints = false
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        
        appleImageView.image = UIImage(named: "1S1T")

        NSLayoutConstraint.activate([
            appleImageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -1),
            appleImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 1),
            appleImageView.heightAnchor.constraint(equalToConstant: 250),
            appleImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50)
        ])
        
        
        appleLabel.font = .systemFont(ofSize: 22, weight: .medium)
        appleLabel.text = "Apple Products"
        
        NSLayoutConstraint.activate([
            appleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            appleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            appleLabel.topAnchor.constraint(equalTo: appleImageView.bottomAnchor, constant: 10)
        
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
