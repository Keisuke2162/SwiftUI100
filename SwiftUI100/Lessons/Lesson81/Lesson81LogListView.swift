//
//  Lesson81LogListView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/20.
//

import SwiftUI

struct Lesson81LogListView: View {
    @Binding var savedLocations: [LocationItem]

    var body: some View {
        List(savedLocations) { location in
            Text("Lat: \(location.coordinate.latitude), Lon: \(location.coordinate.longitude)")
        }
        .navigationTitle(Text("Saved Log List"))
    }
}

struct Lesson81LogListView_Previews: PreviewProvider {
    static var previews: some View {
        @State var locations: [LocationItem] = []
        Lesson81LogListView(savedLocations: $locations)
    }
}
