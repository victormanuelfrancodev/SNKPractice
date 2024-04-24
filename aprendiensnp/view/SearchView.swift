//
//  SearchView.swift
//  aprendiensnp
//
//  Created by Victor Manuel Lagunas on 2024/03/19.
//

import UIKit

class SearchTemplateView: UIView {
    
    private lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.searchBarStyle = .minimal
        searchBar.placeholder = "Seach.."
        searchBar.isTranslucent = false
        searchBar.sizeToFit()
        return searchBar
    }()
    
    private lazy var vStack:UIStackView = {
       let stack = UIStackView(arrangedSubviews: [
           searchBar
       ])
        
        stack.axis = .vertical
        stack.distribution = .equalCentering
 
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
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
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
