//
//  Lesson81ContentView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/19.
//

import SwiftUI
import MapKit

struct Lesson81ContentView: View {
    @State private var centerCoordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)

    var body: some View {
        ZStack {
            Lesson81MapView(centerCoordinate: $centerCoordinate)
                .edgesIgnoringSafeArea(.all)

            // Lesson80で作ったやつ
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

struct Lesson81ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson81ContentView()
    }
}
