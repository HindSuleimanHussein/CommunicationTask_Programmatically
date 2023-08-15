//
//  FTButton.swift
//  FirstTaskProgrammatically
//
//  Created by Foothill on 10/08/2023.
//

import UIKit

class FTButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
       // configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(color : UIColor, title: String){
        super.init(frame: .zero)
        
        configuration = .tinted()
        configuration?.title = title
        configuration?.baseForegroundColor = color
        configuration?.baseBackgroundColor = color
        titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        setImage(UIImage(systemName: "applelogo"), for: .normal)
        layer.cornerRadius = 8
        translatesAutoresizingMaskIntoConstraints = false
        
    }

}
