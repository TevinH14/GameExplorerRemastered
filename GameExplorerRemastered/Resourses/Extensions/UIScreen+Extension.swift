//
//  UIScreen+Extension.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/15/25.
//

import Foundation
import UIKit

extension UIScreen {
    /// Returns the screen width in points
    static var screenWidth: CGFloat {
        UIScreen.main.bounds.width
    }

    /// Returns the screen height in points
    static var screenHeight: CGFloat {
        UIScreen.main.bounds.height
    }

    /// Returns the full screen size as CGSize
    static var screenSize: CGSize {
        UIScreen.main.bounds.size
    }
}
