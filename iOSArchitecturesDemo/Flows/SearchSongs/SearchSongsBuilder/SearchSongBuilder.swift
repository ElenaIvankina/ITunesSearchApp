//
//  SearchSongBuilder.swift
//  iOSArchitecturesDemo
//
//  Created by Елена Иванкина on 09.09.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

class SearchSongBuilder {
    static func build() -> (UIViewController & SearchSongViewInput) {
        let interactor = SearchSongsInteractor()
        let presenter = SearchSongPresenter(interactor: interactor)
        let viewController = SearchSongViewController(presenter: presenter)
        presenter.viewInput = viewController
        return viewController
    }
}
