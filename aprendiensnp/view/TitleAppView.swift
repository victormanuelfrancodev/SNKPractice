//
//  TitleAppView.swift
//  aprendiensnp
//
//  Created by Victor Manuel Lagunas on 2024/03/19.
//

import UIKit

class TitleAppView:UIView{
    
    private let title:String
    
    private lazy var titleLabel : UILabel = {
        LabelFactory.build(text: self.title, font: ThemeFont.bold(ofSize: 23))
    }()
    
    private lazy var buttonPlus: UIButton = {
        buildCircularButton(title: "+", width: 35)
    }()
    
    private lazy var hStackView: UIStackView = {
       let stack = UIStackView(arrangedSubviews: [
        titleLabel,
        buttonPlus
       ])
        stack.axis = .horizontal
        stack.distribution = .equalSpacing
        
        return stack
    }()
    
    init(title:String) {
        self.title = title
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout(){
        [hStackView].forEach(addSubview(_:))
        
        hStackView.snp.makeConstraints{make in
            make.leading.equalTo(16)
            make.trailing.equalTo(-16)
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(8)
            make.height.equalTo(35)
        }
        
        buttonPlus.snp.makeConstraints{ make in
            make.width.equalTo(35)
        }
    }
    
    private func buildCircularButton(title:String, width:CGFloat, color:UIColor = .white) -> UIButton {
        let button = UIButton(type: .custom)
        button.setTitle(title, for: .normal)
        button.backgroundColor = UIColor.white.withAlphaComponent(0.3)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 2)
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.5
        button.tintColor = .black
        button.layer.cornerRadius = width * 0.5
        button.clipsToBounds = true
        return button
    }
}
