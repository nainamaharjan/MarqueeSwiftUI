//
//  ContentView.swift
//  MarqueeSwiftUI
//
//  Created by Naina Maharjan on 28/02/2024.
//

import SwiftUI

struct ContentView: View {
    var velocity: CGFloat = 50
    let imageArray: [ImageModel] = [.init(imageString: "imageOne", color: .red),
                                    .init(imageString: "imageTwo", color: .purple),
                                    .init(imageString: "imageThree", color: .green),
                                    .init(imageString: "imageFour", color: .blue),
                                    .init(imageString: "imageFive", color: .mint)
    ]
    
    var body: some View {
        VStack {
            Marquee(targetVelocity: velocity) {
                ForEach(imageArray, id: \.color) { i in
                    VStack {
                        Image(i.imageString ?? "")
                    }
                    .padding()
                    .frame(width: 260, height: 160)
                    .background(i.color ?? Color.primary)
                    .cornerRadius(16)
                    
                }
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
    }
}


struct ImageModel: Identifiable {
    var id: UUID = UUID()
    var imageString: String?
    var color: Color?
}

#Preview {
    ContentView()
}
