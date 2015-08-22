//
//  MapKitController.swift
//  Snappraisal
//
//  Created by Joshua O'Connor on 6/21/15.
//  Copyright (c) 2015 Joshua O'Connor. All rights reserved.
//



//PIN ON THE MAP AND LOCATION
//NOT GEOLOCATION

import UIKit
import MapKit

class MapKitController: UIViewController {
    
    //MK means Map Kit
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        //have to give object CLLocation at coordinate (lat and long).  Target for latitude and longitude
        let location = CLLocationCoordinate2D(latitude: 32.76, longitude: -117.23)
        
        //definite coordinate
        //span of screen, how close we want it/how far is it zoomed out?
        let span = MKCoordinateSpanMake(0.05, 0.05)
        
        //Let our point be the center of our span
        //region holds value of span and location
        let region = MKCoordinateRegion(center: location, span: span)
        
        //set up region on mapView
        mapView.setRegion(region, animated: true)
        
        //MKPointAnnotation defines a concrete annotation
        let annotation = MKPointAnnotation()
        
        //Sets marker
        annotation.coordinate = location
        
        annotation.title = "Kris' Boat"
        
        annotation.subtitle = "San Diego"
        
        mapView.addAnnotation(annotation)
        
        
        
        //add it to the map
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

