//
//  SNPLearningVC.swift
//  aprendiensnp
//
//  Created by Victor Manuel Lagunas on 2024/03/19.
//

import UIKit
import SnapKit

class SNPLearningVC: UIViewController{
    
    private let titleAppView = TitleAppView(title: "Watchlist")
    private let collectionButtonsView = TabButtonsView()
    private let searchView = SearchTemplateView()
    private let tablePricesView = TablePricesView()
    
    private lazy var vHeaderStackView:UIStackView = {
       let stackView = UIStackView(arrangedSubviews: [
        titleAppView,
        searchView,
        collectionButtonsView,
       ])
        
        stackView.axis = .vertical
        stackView.spacing = 26
        stackView.distribution = .fill
        return stackView
    }()
    
    private lazy var vStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            vHeaderStackView,
            tablePricesView
        ])
         
         stackView.axis = .vertical
         stackView.spacing = 26
         stackView.distribution = .fill
         return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
    }
    
    private func layout(){
        self.view.addSubview(vStackView)
        self.view.backgroundColor = UIColor.init(hexString: "0AD3FF")
        
        vHeaderStackView.snp.makeConstraints{ make in
            make.height.equalTo(180)
        }
        
        vStackView.snp.makeConstraints{ make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
            make.top.equalTo(view.snp.topMargin).offset(12)
        }
    }
}
