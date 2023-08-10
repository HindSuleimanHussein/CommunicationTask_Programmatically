//
//  MenuSceneVC.swift
//  FirstTaskProgrammatically
//
//  Created by Foothill on 10/08/2023.
//

import UIKit

class MenuSceneVC: UIViewController {
    
    let iPhoneButton = FTButton(color: .systemBlue, title: "iPhone")
    let iPadButton = FTButton(color: .systemMint, title: "iPad")
    let macButton = FTButton(color: .systemIndigo, title: "Mac")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()

        
    }
    
    func configureUI(){
        iPhoneButtonFunction()
        iPadButtonFunction()
        macButtonFunction()
    }
    
    func iPhoneButtonFunction(){
        view.addSubview(iPhoneButton)
        iPhoneButton.addTarget(self, action: #selector(presentiPhoneSceneVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            iPhoneButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 70),
            iPhoneButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
            iPhoneButton.heightAnchor.constraint(equalToConstant: 50),
            iPhoneButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50)
        
        ])
        
        
    }
    
    func iPadButtonFunction(){
        view.addSubview(iPadButton)
        iPadButton.addTarget(self, action: #selector(presentiPadSceneVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            iPadButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 70),
            iPadButton.topAnchor.constraint(equalTo: iPhoneButton.bottomAnchor, constant: 50),
            iPadButton.heightAnchor.constraint(equalToConstant: 50),
            iPadButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50)
        
        ])
        
        
    }
    
    func macButtonFunction(){
        view.addSubview(macButton)
        macButton.addTarget(self, action: #selector(presentMacSceneVC), for: .touchUpInside)
          
        
        NSLayoutConstraint.activate([
            macButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 70),
            macButton.topAnchor.constraint(equalTo: iPadButton.bottomAnchor, constant: 50),
            macButton.heightAnchor.constraint(equalToConstant: 50),
            macButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50)
        
        ])
        
        
    }
    
    @objc func presentiPhoneSceneVC() {
        let scenesVC = iPhoneScene()
        scenesVC.modalPresentationStyle = .fullScreen
        present(scenesVC, animated: true)
    }
    
    @objc func presentiPadSceneVC() {
        let scenesVC = iPadScene()
        scenesVC.modalPresentationStyle = .fullScreen
        present(scenesVC, animated: true)
    }
    
    @objc func presentMacSceneVC() {
        let scenesVC = MacScene()
        scenesVC.modalPresentationStyle = .fullScreen
        present(scenesVC, animated: true)
    }



    
    

    

}
