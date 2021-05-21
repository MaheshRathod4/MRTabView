//
//  Helper.swift
//  MRTabView
//
//  Created by MR SQUARE on 15/05/21.
//  Copyright © 2021 Mahesh Rathod. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

enum Tab:String {
    case Home
    case Like
    case Notification
    case Profile
}

extension UIView {
    public var safeAreaFrame: CGRect {
        if #available(iOS 11, *) {
            return safeAreaLayoutGuide.layoutFrame
        }
        return bounds
    }
}

func getBottomSafeAreaHeight() -> CGFloat {
    if #available(iOS 11.0, *) {
        let keyWindow = UIApplication.shared.connectedScenes
        .filter({$0.activationState == .foregroundActive})
        .map({$0 as? UIWindowScene})
        .compactMap({$0})
        .first?.windows
        .filter({$0.isKeyWindow}).first
        return keyWindow!.safeAreaInsets.bottom
    } else {
        return 0
    }
}

