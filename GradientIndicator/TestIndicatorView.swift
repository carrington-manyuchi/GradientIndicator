//
//  TestIndicatorView.swift
//  GradientIndicator
//
//  Created by Manyuchi, Carrington C on 2024/12/22.
//

import SwiftUI

struct TestIndicatorView: View {
    
    @State private var percentage: CGFloat = 0.7
    
    var body: some View {
        VStack {
            Text("Gradient Indicator")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
            
            Spacer()
            IndicatorView(width: 200, height: 30, percentage: percentage, color: .gray)
            Spacer()
            Slider(value: $percentage) {
                
            }
            .padding()
        }
    }
}

#Preview {
    TestIndicatorView()
}
