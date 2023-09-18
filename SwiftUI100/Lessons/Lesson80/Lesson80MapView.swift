//
//  Lesson80MapView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/19.
//

import SwiftUI
import MapKit

struct Lesson80MapView: UIViewRepresentable {
    @Binding var centerCoordinate: CLLocationCoordinate2D

    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        // 更新後の中央の座標をMapに反映する
        if coordinatesEqual(uiView.centerCoordinate, centerCoordinate) {
            uiView.setCenter(centerCoordinate, animated: true)
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: Lesson80MapView
        
        init(parent: Lesson80MapView) {
            self.parent = parent
        }
        
        // Mapが動いたとき
        func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
            parent.centerCoordinate = mapView.centerCoordinate
        }
    }
    
    // CLLocationCoordinate2Dの比較関数
    func coordinatesEqual(_ coord1: CLLocationCoordinate2D, _ coord2: CLLocationCoordinate2D) -> Bool {
        return coord1.latitude == coord2.latitude && coord1.longitude == coord2.longitude
    }
}

