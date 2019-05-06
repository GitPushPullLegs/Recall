//
//  AssetExtensions.swift
//  Recall
//
//  Created by Jose Aguilar on 5/5/19.
//  Copyright © 2019 Jose Aguilar. All rights reserved.
//

import UIKit

extension UIImage {

    enum AssetKey: String {
        case contacts = "ic_contacts"
        case assistant = "ic_blur_on"
        case folder = "ic_folder"
        case folderOpen = "ic_folder_open"
        case search = "ic_search"
    }

    convenience init?(asset: AssetKey) {
        self.init(named: asset.rawValue)
    }
}
