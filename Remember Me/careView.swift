//
//  careView.swift
//  Remember Me
//
//  Created by Zara on 2025-04-29.
//

import MapKit
import SwiftUI

import Foundation
import CoreLocation
import Firebase


struct careView: View {
    var body: some View {
        Map()
            .mapStyle(.hybrid)
        
        NavigationView {
            
           
        }
    }
}

import SwiftUI
import MapKit

struct LocationPin: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

struct MapView: View {
    @State private var region: MKCoordinateRegion? = nil

    var body: some View {
        Group {
            if let region = region {
                Map(initialPosition: .region(region)) {
                    Annotation("Patient", coordinate: region.center) {
                        Image(systemName: "mappin.circle.fill")
                            .foregroundColor(.red)
                    }
                }
            } else {
                ProgressView("Loading location...")
            }
        }
        .onAppear(perform: fetchLocation)
    }

    func fetchLocation() {
        let db = Firestore.firestore()
        db.collection("locations").document("patient_id").getDocument { snapshot, error in
            guard let data = snapshot?.data(),
                  let lat = data["lat"] as? CLLocationDegrees,
                  let lon = data["lon"] as? CLLocationDegrees else { return }

            region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: lat, longitude: lon),
                span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            )
        }
    }
}




#Preview {
    careView()
}
