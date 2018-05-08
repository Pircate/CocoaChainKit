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
    
    private lazy var loginButton: UIButton = {
        return UIButton().chain
            .frame(CGRect(x: 0, y: 0, width: 120, height: 30))
            .center(view.center)
            .backgroundColor(UIColor.red)
            .title("Hello World", for: .normal)
            .addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            .end
    }()
    
    private lazy var tableView: UITableView = {
        return UITableView(frame: CGRect.zero, style: .plain).chain.rowHeight(20).end
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton(type: .custom)
        
        button.chain
            .frame(CGRect(x: 0, y: 0, width: 120, height: 30))
            .center(view.center)
            .backgroundColor(UIColor.red)
            .title("Hello World", for: .normal)
            .addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc private func buttonAction() {
        debugPrint("+++++")
    }
}

