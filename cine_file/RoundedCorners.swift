//
//  RoundedCorners.swift
//  cine_file
//
//  Created by Ana Julia on 30/05/25.
//

import SwiftUI

// 1. Defina uma Shape que aceita cantos específicos
struct RoundedCorners: Shape {
    var radius: CGFloat
    var corners: UIRectCorner

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

// 2. (Opcional) Crie uma extensão para facilitar o uso
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorners(radius: radius, corners: corners))
    }
}
