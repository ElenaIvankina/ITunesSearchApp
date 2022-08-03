//
//  AppDetailVersionView.swift
//  iOSArchitecturesDemo
//
//  Created by Елена Иванкина on 02.09.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

class AppDetailVersionView: UIView {
    
    private(set) lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Что нового"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.numberOfLines = 0
        
        return label
    }()
    
    
    private(set) lazy var versionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
        
        return label
    }()
    
    private(set) lazy var subVersionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
        
        return label
    }()
    
    private(set) lazy var daysAgoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI() {
        self.addSubview(titleLabel)
        self.addSubview(versionLabel)
        self.addSubview(subVersionLabel)
        self.addSubview(daysAgoLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 12),
            titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16.0),
            titleLabel.widthAnchor.constraint(equalToConstant: 120),
            titleLabel.heightAnchor.constraint(equalToConstant: 20),
            
            versionLabel.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 36),
            versionLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16.0),
            versionLabel.widthAnchor.constraint(equalToConstant: 120),
            versionLabel.heightAnchor.constraint(equalToConstant: 20),
            
            subVersionLabel.topAnchor.constraint(equalTo: versionLabel.topAnchor, constant: 24),
            subVersionLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16.0),
            subVersionLabel.widthAnchor.constraint(equalToConstant: 260),
            subVersionLabel.heightAnchor.constraint(equalToConstant: 20),
            
            daysAgoLabel.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 36),
            daysAgoLabel.leftAnchor.constraint(equalTo: rightAnchor, constant: -136.0),
            daysAgoLabel.widthAnchor.constraint(equalToConstant: 120),
            daysAgoLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
}
