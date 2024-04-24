//
//  TabButtonsView.swift
//  aprendiensnp
//
//  Created by Victor Manuel Lagunas on 2024/03/19.
//

import Foundation
import UIKit

class TabButtonsView:UIView{
    
    private lazy var button:UIButton = {
        buildButton(title: "Watchlist")
    }()
    
    private lazy var button1:UIButton = {
        buildButton(title: "Watchlist")
    }()
    
    private lazy var button2:UIButton = {
        buildButton(title: "Watchlist")
    }()
    
    private lazy var vStack:UIStackView = {
       let stack = UIStackView(arrangedSubviews: [
            button,
            button1,
            button2
       ])
        
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 10
        
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout(){
        addSubview(vStack)
        
        vStack.snp.makeConstraints{ make in
            make.leading.equalTo(16)
            make.trailing.equalTo(-16)
            make.top.equalTo(0)
            make.bottom.equalTo(0)
        }
        
      
        
    }
    
    private func buildButton(title:String)->UIButton{
        let button = UIButton(type: .custom)
        button.setTitle(title, for: .normal)
        button.backgroundColor = UIColor.black
        button.layer.cornerRadius = 13
        button.clipsToBounds = true
        return button
    }
}
