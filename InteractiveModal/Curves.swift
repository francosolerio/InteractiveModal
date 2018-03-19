//
//  Curves.swift
//  InteractiveModal
//
//  Created by Franco Solerio on 19/03/18.
//  Copyright © 2018 Thorn Technologies. All rights reserved.
//

import Foundation

struct Curves {
    
    static func quadraticEaseIn<T: FloatingPoint>(t: T) -> T {
        return t * t
    }
    
    static func quadraticEaseOut<T: FloatingPoint>(t: T) -> T {
        return 1 - quadraticEaseIn(t: 1 - t)
    }
    
    static func QuadraticEaseInOut<T: FloatingPoint>(t: T) -> T {
        if t < 1/2 {
            return quadraticEaseIn(t: t * 2) / 2
        } else {
            return 1 - quadraticEaseIn(t: (1 - t) * 2) / 2
        }
    }
    
    static  func quadraticEaseOutIn<T: FloatingPoint>(t: T) -> T {
        if t < 1/2 {
            return quadraticEaseOut(t: t * 2) / 2
        } else {
            return 1 - quadraticEaseOut(t: (1 - t) * 2) / 2
        }
    }
    
    static func quadraticEaseOut<T: FloatingPoint>(t: T, offset: T) -> T {
        return quadraticEaseOut(t: t + offset)
    }
    
}
