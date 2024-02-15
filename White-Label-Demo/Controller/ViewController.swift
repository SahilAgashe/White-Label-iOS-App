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
        
        let appName = Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
        let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
        print("appName => \(appName) , appVersion => \(appVersion) , description => \(DatabaseManager.description)")
        
        view.backgroundColor = (appName == "Yellow") ? .yellow : (appName == "Cyan") ? .cyan : .systemGray4
        
        let appNameLabel = UILabel()
        appNameLabel.textAlignment = .center
        appNameLabel.text = "App Name: \(appName)"
    
        let appVersionLabel = UILabel()
        appVersionLabel.textAlignment = .center
        appVersionLabel.text = "App Version: \(appVersion)"
        
        let databaseDescriptionLabel = UILabel()
        databaseDescriptionLabel.numberOfLines = 0
        databaseDescriptionLabel.textAlignment = .center
        databaseDescriptionLabel.text = "Database Description: \n \(DatabaseManager.description)"
        
        let vstack = UIStackView(arrangedSubviews: [appNameLabel, appVersionLabel, databaseDescriptionLabel])
        vstack.spacing = 10
        vstack.distribution = .fill
        vstack.axis = .vertical
        vstack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(vstack)
        
        NSLayoutConstraint.activate([
            vstack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            vstack.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }


}

