//
//  TablePricesView.swift
//  aprendiensnp
//
//  Created by Victor Manuel Lagunas on 2024/03/20.
//

import UIKit

class TablePricesView:UIView{
    
    let animals: [String] = ["cat","dog", "bird", "bug"]
    
    private let tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .grouped)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func layout(){
        addSubview(tableView)
        tableView.snp.makeConstraints{ make in
            make.edges.equalToSuperview()
        }
    }
}

extension TablePricesView: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = animals[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    
}
