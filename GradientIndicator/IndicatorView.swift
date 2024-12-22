//
//  IndicatorView.swift
//  GradientIndicator
//
//  Created by Manyuchi, Carrington C on 2024/12/22.
//

import SwiftUI

struct IndicatorView: View {
    
    let width: CGFloat
    let height: CGFloat
    let percentage: CGFloat
    let amount: CGFloat
    let backgroundColor: Color
    
    var barColor: LinearGradient {
        LinearGradient(
            colors: [.purple, .blue],
            startPoint: .leading,
            endPoint: .trailing
        )
    }
    
    init(width: CGFloat, height: CGFloat, percentage: CGFloat, color: Color) {
        self.width = width
        self.height = height
        self.percentage = percentage
        self.amount = width * percentage
        self.backgroundColor = color
    }
    
      init(width: CGFloat, height: CGFloat, amount: CGFloat, color: Color) {
        self.width = width
        self.height = height
        self.percentage = amount / width
        self.amount = amount
        self.backgroundColor = color
    }
    
    

    
    var body: some View {
        ZStack {
            Capsule()
                .fill(backgroundColor)
                .frame(width: width, height: height)

            
            Capsule()
                .fill(barColor)
                .frame(width: amount, height: height)
        }
    }
}

#Preview {
    VStack {
        IndicatorView(width: 200, height: 30, percentage: 0.7, color: .gray)
        IndicatorView(width: 200, height: 30, amount: 65, color: .gray)
    }
   
}
