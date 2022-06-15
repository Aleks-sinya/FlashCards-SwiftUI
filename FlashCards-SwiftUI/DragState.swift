//
//  DragState.swift
//  FlashCards-SwiftUI
//
//  Created by Алексей Синяговский on 15.06.2022.
//

import UIKit

enum DragState {
    
    case inactive
    case dragging(translation: CGSize)
    
    var translation: CGSize {
        
        switch self {
        case .inactive:
            return .zero
        case .dragging(translation: let translation):
            return translation
        }
    }
    
    var isActive: Bool {
        
        switch self {
        case .inactive:
            return false
        case .dragging:
            return true
        }
    }
    
}
