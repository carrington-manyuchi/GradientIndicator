//
//  NavigationStackTitleColor.swift
//  GradientIndicator
//
//  Created by Manyuchi, Carrington C on 2024/12/22.
//

import SwiftUI

struct NavigationStackTitleColor: View {
    
    init() {
        UINavigationBar
            .appearance()
            .largeTitleTextAttributes = [.foregroundColor: UIColor.red]
    }
    
    var body: some View {
        NavigationStack {
            NavigationLink(destination: {
                ZStack {
                    Color.gray
                        .ignoresSafeArea()
                    VStack {
                        Text("New View")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                }
            }, label: {
                ZStack {
                    VStack {
                        Text("Hello, World!")
                            .font(.largeTitle)
                    }
                }
            })
            .navigationTitle("My Title")
        }
    }
}

#Preview {
    NavigationStackTitleColor()
}
