//
//  randomColor.swift
//  progress bar
//
//  Created by Дмитрий Лапшин on 04.01.2021.
//

import Foundation
import UIKit

extension UIColor {
    func randomColor() -> UIColor {
        let redVAlue: CGFloat = .random(in: 1...10)
        let greenVAlue: CGFloat = .random(in: 1...10)
        let blueValue: CGFloat = .random(in: 1...10)
        
        return UIColor(red: redVAlue, green: greenVAlue, blue: blueValue, alpha:  1.0)
    }
}
