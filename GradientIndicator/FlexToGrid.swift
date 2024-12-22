//
//  FlexToGrid.swift
//  GradientIndicator
//
//  Created by Manyuchi, Carrington C on 2024/12/22.
//

import SwiftUI

struct FlexToGrid: View {
    var body: some View {
        ZStack {
            Color
                .cyan
                .opacity(0.3)
                .ignoresSafeArea()
            Grid(verticalSpacing: 0)  {
                GridRow {
                    RectangleViewText(color: .blue, text: "50 %")
                }
                GridRow {
                    Grid(verticalSpacing: 0) {
                        GridRow {
                            RectangleViewText(color: .red, text: "25")
                        }
                        GridRow {
                            RectangleViewText(color: .green, text: "25 %")
                        }
                    }
                }
                
            }
        }
    }
}


struct RectangleViewText: View {
    
    let color: Color
    let text: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(color)
            Text(text)
                .font(.title)
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    FlexToGrid()
}
