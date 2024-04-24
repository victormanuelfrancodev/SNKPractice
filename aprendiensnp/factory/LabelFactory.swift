//
//  LabelFactory.swift
//  aprendiensnp
//
//  Created by Victor Manuel Lagunas on 2024/03/19.
//

import UIKit

struct LabelFactory{
    static func build(
        text:String,
        font: UIFont,
        backgroundColor: UIColor = .clear,
        textColor:UIColor = .black,
        textAligment:NSTextAlignment = .center) -> UILabel{
        let label = UILabel()
            label.text = text
            label.font = font
            label.backgroundColor = backgroundColor
            label.textColor = textColor
            label.textAlignment = textAligment
            return label
    }
}
