//
//  ImageViewDemo.swift
//  GradientIndicator
//
//  Created by Manyuchi, Carrington C on 2024/12/22.
//

import SwiftUI

struct ImageViewDemo: View {
    
    
    var body: some View {
        Image(systemName: "menucard")
            .font(.largeTitle)
            .imageScale(.large)
            .foregroundStyle(.red)
            .padding()
            .background (
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(
                            LinearGradient(colors: [.black, .gray], startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                    
                }
            )
    }
}

#Preview {
    ImageViewDemo()
}
