//
//  Lesson50.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/23.
//

import SwiftUI
import MapKit

// 模範解答とやり方だいぶ違う。これ見た→https://zenn.dev/ryodeveloper/articles/kame_ga_2_hiki
// こっちはタップじゃなくて指定した箇所にピン刺す実装にしてる

struct Lesson50: View {
    @State private var region = MKCoordinateRegion(
        // MAPの中央
        center: CLLocationCoordinate2D(latitude: 37,
                                       longitude: -122),
        // 表示領域（m）
        latitudinalMeters: 500,
        longitudinalMeters: 500
    )

    var body: some View {
        let places = [Place(lat: 37, long: -122)]

        Map(coordinateRegion: $region, interactionModes: .pan, showsUserLocation: false, annotationItems: places) { place in
            MapMarker(coordinate: place.location, tint: .blue)
        }
            .frame(width: 300, height: 300)
    }
}

struct Place: Identifiable {
    let id: UUID
    let location: CLLocationCoordinate2D

    init(id: UUID = UUID(), lat: Double, long: Double) {
        self.id = id
        self.location = CLLocationCoordinate2D(latitude: lat, longitude: long)
    }
}



struct Lesson50_Previews: PreviewProvider {
    static var previews: some View {
        Lesson50()
    }
}
