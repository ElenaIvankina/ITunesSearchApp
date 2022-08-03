//
//  SongCellModel.swift
//  iOSArchitecturesDemo
//
//  Created by Елена Иванкина on 09.09.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

struct SongCellModel {
    let trackName: String
    let artistName: String?
//    let picture: UIImageView?
}

final class SongCellModelFactory {
    
    static func cellModel(from model: ITunesSong) -> SongCellModel {
        return SongCellModel(trackName: model.trackName,
                             artistName: model.artistName)
    }
}
