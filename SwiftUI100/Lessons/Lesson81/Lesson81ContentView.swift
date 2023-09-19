//
//  Lesson81ContentView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/19.
//

import SwiftUI
import MapKit

struct LocationItem: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

struct Lesson81ContentView: View {
    @State private var centerCoordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
    @State private var saveLocations: [LocationItem] = []
    @State private var isNavigation: Bool = false

    var body: some View {
        NavigationStack {
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
                    HStack {
                        Button {
                            let item = LocationItem(coordinate: centerCoordinate)
                            saveLocations.append(item)
                        } label: {
                            Text("Save Location")
                                .padding()
                                .background(Color.black.opacity(0.6))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }

                        Button {
                            isNavigation = true
                        } label: {
                            Text("Log List [\(saveLocations.count)]")
                                .padding()
                                .background(Color.black.opacity(0.6))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                }
            }
            .navigationDestination(isPresented: $isNavigation) {
                Lesson81LogListView(savedLocations: $saveLocations)
            }
        }
    }
}

struct Lesson81ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson81ContentView()
    }
}
