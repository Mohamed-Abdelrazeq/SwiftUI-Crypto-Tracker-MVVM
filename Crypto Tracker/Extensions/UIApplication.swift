//
//  UIApplication.swift
//  Crypto Tracker
//
//  Created by mohamed abdelrazek on 04/10/2022.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from:
                    nil, for: nil)
    }
}
