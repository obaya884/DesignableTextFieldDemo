//
//  UnderLineTextField.swift
//  DesignableTextFieldDemo
//
//  Created by 大林拓実 on 2019/12/01.
//  Copyright © 2019 Obayashi Takumi. All rights reserved.
//

import UIKit

@IBDesignable class UnderLineTextField: UITextField {
    
    
    override func draw(_ rect: CGRect) {
        // 下線のViewを作る
        let underline = UIView()
        underline.frame = CGRect(x: 0, y: self.frame.height, width: self.frame.width, height: 2.5)
        underline.backgroundColor = UIColor(red:0.36, green:0.61, blue:0.93, alpha:1.0)

        // 下線ViewをTextFieldに追加
        addSubview(underline)
        bringSubviewToFront(underline)

        // TextFieldの元々の枠線を消しておく
        self.borderStyle = .none

        super.draw(rect)
    }
}
