//
//  BackgroundColor.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 13.10.22.
//

import SwiftUI

struct BackgroundColor: ViewModifier {
    let color: Color
    func body(content: Content) -> some View {
        content
            .background(color)
    }
}
