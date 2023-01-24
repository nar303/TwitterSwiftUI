//
//  View+Extension.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 13.10.22.
//

import Foundation
import SwiftUI

extension View {
    func backgroundColor(_ color: Color) -> some View {
        modifier(BackgroundColor(color: color))
    }
}
