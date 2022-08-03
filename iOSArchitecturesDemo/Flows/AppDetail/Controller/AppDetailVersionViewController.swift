//
//  AppDetailVersionViewController.swift
//  iOSArchitecturesDemo
//
//  Created by Елена Иванкина on 02.09.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

class AppDetailVersionViewController: UIViewController {
    private let app: ITunesApp
    private let calendar: Calendar = Calendar(identifier: .gregorian)
    private var appDetailVersionView: AppDetailVersionView {
        return self.view as! AppDetailVersionView
    }
    
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = AppDetailVersionView()
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        fillData()
    }
    
    private func fillData() {
        
        appDetailVersionView.versionLabel.text = app.currentVersion
        appDetailVersionView.subVersionLabel.text = "Обновление бла бла бла"
        appDetailVersionView.daysAgoLabel.text = daysAgoText(dateOfUpdate: app.versionDate!)
    }
    
    private func daysAgoText (dateOfUpdate: String) -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let date: Date? = dateFormatter.date(from: dateOfUpdate)
        
        let today = calendar.startOfDay(for: Date())
        let dateOfUpdate = calendar.startOfDay(for: date!)
        
        let components = calendar.dateComponents([.day], from: dateOfUpdate, to: today)
        
        guard let daysAgo: Int = components.day else {return ""}
        
        switch daysAgo {
        case 0: return "сегодня"
        case 1: return "\(daysAgo) день назад"
        case 2...4: return "\(daysAgo) дня назад"
        case 5...20 : return "\(daysAgo) дней назад"
        case _ where daysAgo % 10 == 1: return "\(daysAgo) день назад"
        case _ where daysAgo % 10 == 2 || daysAgo % 10 == 3 || daysAgo % 10 == 4 : return "\(daysAgo) дня назад"
        default: return "\(daysAgo) дней назад"
        }

    }
}
