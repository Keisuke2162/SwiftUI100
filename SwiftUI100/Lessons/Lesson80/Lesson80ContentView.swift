//
//  Lesson80ContentView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/19.
//

import SwiftUI
import MapKit

struct Lesson80ContentView: View {
    @State private var centerCoordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)

    var body: some View {
        ZStack {
            Lesson80MapView(centerCoordinate: $centerCoordinate)
                .edgesIgnoringSafeArea(.all)

            Crosshair()

            VStack {
                Spacer()
                Text("Lat: \(centerCoordinate.latitude), Lon: \(centerCoordinate.longitude)")
                    .padding()
                    .background(Color.black.opacity(0.6))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

// 画面中央のクロスヘア(画像でも良い気がする)
struct Crosshair: View {
    private let strokLength: CGFloat = 30

    var body: some View {
        GeometryReader { geometry in
            Path { path in
                path.move(to: .init(x: geometry.size.width / 2, y: geometry.size.height / 2 - strokLength))
                path.addLine(to: .init(x: geometry.size.width / 2, y: geometry.size.height / 2 + strokLength))
                path.move(to: .init(x: geometry.size.width / 2 - strokLength, y: geometry.size.height / 2))
                path.addLine(to: .init(x: geometry.size.width / 2 + strokLength, y: geometry.size.height / 2))
            }
            .stroke(Color.red, lineWidth: 1)
        }
    }
}

struct Lesson80ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson80ContentView()
    }
}
