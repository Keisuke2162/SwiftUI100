//
//  Lesson51ContentView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/23.
//

import SwiftUI
import MapKit

// MAPのタップした箇所にピンを刺す実装

struct Lesson51ContentView: View {
    @State var selectedLocation: CLLocationCoordinate2D?
    @State var locations: [CLLocationCoordinate2D] = []

    var body: some View {
        // [-> Void]のクロージャで引数を貰ってくるんだね〜
        ProvisionalMapView(locations: $locations) { location in
            self.selectedLocation = location
            self.addLocation(location: location)
        }
    }
    
    private func addLocation(location: CLLocationCoordinate2D) {
        locations.append(location)
    }
}

struct Lesson51ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson51ContentView()
    }
}
