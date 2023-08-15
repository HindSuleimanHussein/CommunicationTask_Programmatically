//
//  MenuSceneVC.swift
//  FirstTaskProgrammatically
//
//  Created by Foothill on 10/08/2023.
//

import UIKit

struct MenuSceneModel {
    let labelText: String
    let imageScene: UIImage
}

class MenuSceneVC: UIViewController {
    
    
    let iPhoneButton = FTButton(color: .systemBlue, title: "iPhone")
    let iPadButton = FTButton(color: .systemMint, title: "iPad")
    let macButton = FTButton(color: .systemIndigo, title: "Mac")
    let stackView = UIStackView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        ButtonsAction()
        configureStackView()
    }

    
    func configureStackView() {
        view.addSubview(stackView)
        
        stackView.addArrangedSubview(iPhoneButton)
        stackView.addArrangedSubview(iPadButton)
        stackView.addArrangedSubview(macButton)
        
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        iPhoneButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        iPadButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        macButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        iPhoneButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        iPadButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        macButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 250),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            stackView.bottomAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50)
        ])
    }


    func ButtonsAction(){
        iPhoneButton.addTarget(self, action: #selector(presentiPhoneSceneVC), for: .touchUpInside)
        iPadButton.addTarget(self, action: #selector(presentiPadSceneVC), for: .touchUpInside)
        macButton.addTarget(self, action: #selector(presentMacSceneVC), for: .touchUpInside)
       
    }
    
    func presentProductsScene(with labelText: String, imageName: String) {
        let scenesVC = ProductsSceneVC()
        let sceneModel = MenuSceneModel(labelText: labelText, imageScene: UIImage(named: imageName)!)
        scenesVC.sceneModel = sceneModel
        scenesVC.modalPresentationStyle = .fullScreen
        present(scenesVC, animated: true)
    }

    @objc func presentiPhoneSceneVC() {
        presentProductsScene(with: "iPhone", imageName: "2S1T")
    }

    @objc func presentiPadSceneVC() {
        presentProductsScene(with: "iPad", imageName: "4S1T")
    }

    @objc func presentMacSceneVC() {
        presentProductsScene(with: "Mac", imageName: "3S1T")
    }
    

}
