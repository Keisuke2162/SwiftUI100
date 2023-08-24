//
//  Lesson51MapView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/23.
//

import SwiftUI
import MapKit
import UIKit

// MEMO: クロージャについてめっちゃ理解できた気がする

protocol TapplableMapViewDelegate: AnyObject {
    func mapViewDidTap(location: CLLocationCoordinate2D)
}

// タップ判定付きのMapView
class TapplableMapView: UIView {
    private lazy var mapView = MKMapView()
    weak var delegate: TapplableMapViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let tapGestureRecognizer = UITapGestureRecognizer()
        tapGestureRecognizer.addTarget(self, action: #selector(onTap(sender:)))
        
        mapView.addGestureRecognizer(tapGestureRecognizer)
        self.backgroundColor = .red
        addSubview(mapView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        mapView.frame = .init(x: 0, y: 0, width: bounds.width, height: bounds.height)
    }
    
    @objc func onTap(sender: UITapGestureRecognizer) {
        let tapPoint = sender.location(in: mapView)
        let location = mapView.convert(tapPoint, toCoordinateFrom: mapView)
        delegate?.mapViewDidTap(location: location)
    }
    
    func addAnnotation(_ annotation: MKAnnotation) {
        mapView.addAnnotation(annotation)
    }
}

// カスタムクラスTapplableMapViewをswiftUIで使う
struct ProvisionalMapView: UIViewRepresentable {
    // typealias UIViewType = TapplableMapView
    
    @Binding var locations: [CLLocationCoordinate2D]
    let mapViewDidTap: (_ location: CLLocationCoordinate2D) -> Void

    final class Coordinator: NSObject, TapplableMapViewDelegate {
        private var mapView: ProvisionalMapView
        let mapViewDidTap: (_ location: CLLocationCoordinate2D) -> Void
        
        init(_ mapView: ProvisionalMapView, mapViewDidTap: @escaping (_ location: CLLocationCoordinate2D) -> Void) {
            self.mapView = mapView
            self.mapViewDidTap = mapViewDidTap
        }
        
        func mapViewDidTap(location: CLLocationCoordinate2D) {
            mapViewDidTap(location)
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self, mapViewDidTap: mapViewDidTap)
    }
    
    func makeUIView(context: Context) -> TapplableMapView {
        let mapView = TapplableMapView()
        mapView.delegate = context.coordinator
        return mapView
    }
    
    func updateUIView(_ uiView: TapplableMapView, context: Context) {
        for location in locations {
            let annotation = MKPointAnnotation()
            let centerCoordinate = location
            annotation.coordinate = centerCoordinate
            annotation.title = "latitude: \(location.latitude), longitude: \(location.longitude)"
            uiView.addAnnotation(annotation)
        }
    }
}
