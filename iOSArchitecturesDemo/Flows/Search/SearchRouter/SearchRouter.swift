//
//  SearchRouter.swift
//  iOSArchitecturesDemo
//
//  Created by Елена Иванкина on 16.09.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

protocol SearchRouterInput {
    func openDetails(for app: ITunesApp)
}

class SearchRouter: SearchRouterInput {
    weak var viewController: UIViewController?
    
    func openDetails(for app: ITunesApp) {
        let appDetailViewCotroller = AppDetailViewController(app: app)
        viewController?.navigationController?.pushViewController(appDetailViewCotroller,
                                                                 animated: true)
    }
    
    
}
