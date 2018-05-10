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
            .foregroundColor(UIColor.yellow, range: NSMakeRange(0, 5))
            .backgroundColor(UIColor.blue)
            .baselineOffset(5, range: NSMakeRange(6, 5))
            .kern(0.5)
            .strikethroughStyle(1)
            .underlineStyle(1)
            .writingDirection([3]).installed
        button.setAttributedTitle(attrText, for: .normal)
        
        UserDefaults.standard.chain
            .set(123, forKey: "integer")
            .set("string", forKey: "string")
            .set(false, forKey: "boolean")
            .synchronize()
        
        debugPrint(UserDefaults.standard.integer(forKey: "integer"))
        debugPrint(UserDefaults.standard.string(forKey: "string") ?? "")
        debugPrint(UserDefaults.standard.bool(forKey: "boolean"))
        
        DateFormatter().chain
            .dateFormat("")
            .dateStyle(.full)
            .timeZone(.current)
        
        let name0 = Notification.Name("notification0")
        let name1 = Notification.Name("notification1")
        let name2 = Notification.Name("notification2")
        
        NotificationCenter.default.chain
            .addObserver(self, selector: #selector(notificationAction0), name: name0)
            .addObserver(self, selector: #selector(notificationAction2), name: name2)
            .addObserver(self, selector: #selector(notificationAction1), name: name1)
        
        NotificationCenter.default.chain
            .post(name: name1)
            .post(Notification(name: name2))
            .post(name: name0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc private func buttonAction() {
        debugPrint("Hello World")
    }
    
    @objc private func notificationAction0() {
        debugPrint("notificationAction0")
    }
    
    @objc private func notificationAction1() {
        debugPrint("notificationAction1")
    }
    
    @objc private func notificationAction2() {
        debugPrint("notificationAction2")
    }
}

