//
//  ViewController.swift
//  CocoaChainKit
//
//  Created by G-Xi0N on 05/08/2018.
//  Copyright (c) 2018 G-Xi0N. All rights reserved.
//

import UIKit
import CocoaChainKit

class ViewController: UIViewController {
    
    private lazy var button: UIButton = {
        UIButton().chain
            .frame(x: 0, y: 0, width: 120, height: 30)
            .center(view.center)
            .backgroundColor(UIColor.red)
            .systemFont(ofSize: 14)
            .title("Hello World", for: .normal)
            .titleColor(UIColor.blue, for: .normal)
            .cornerRadius(15)
            .masksToBounds(true)
            .addTarget(self, action: #selector(buttonAction), for: .touchUpInside).installed
    }()
    
    private lazy var tableView: UITableView = {
        return UITableView(frame: view.bounds, style: .plain).chain
            .rowHeight(44)
            .register(UITableViewCell.self, forCellReuseIdentifier: "cellID").installed
    }()
    
    private lazy var collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout().chain
            .itemSize(width: 80, height: 80)
            .minimumLineSpacing(20)
            .minimumInteritemSpacing(10).installed
        return UICollectionView(frame: CGRect.zero, collectionViewLayout: flowLayout).chain
            .backgroundColor(UIColor.white)
            .register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellID")
            .register(UICollectionReusableView.self, forSectionHeaderWithReuseIdentifier: "header").installed
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        view.addSubview(button)
        
        let attrText = NSMutableAttributedString(string: "Hello World").chain
            .systemFont(ofSize: 18)
            .foregroundColor(UIColor.yellow)
            .strikethroughStyle(1)
            .backgroundColor(UIColor.blue).installed
        button.setAttributedTitle(attrText, for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc private func buttonAction() {
        debugPrint("Hello World")
    }
}

