//
//  ViewController.swift
//  White-Label-Demo
//
//  Created by SAHIL AMRUT AGASHE on 14/02/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        
        let appName = Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
        let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
        print("appName => \(appName) , appVersion => \(appVersion)")
        
        let appNameLabel = UILabel()
        appNameLabel.text = "App Name: \(appName)"
    
        let appVersionLabel = UILabel()
        appVersionLabel.text = "App Version: \(appVersion)"
        
        let vstack = UIStackView(arrangedSubviews: [appNameLabel, appVersionLabel])
        vstack.axis = .vertical
        vstack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(vstack)
        
        NSLayoutConstraint.activate([
            vstack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            vstack.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }


}

