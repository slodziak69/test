//
//  ViewController.swift
//  test
//
//  Created by Mateusz Stelmaszuk on 05.11.2014.
//  Copyright (c) 2014 Mateusz Stelmaszuk. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet var mapKit: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // 1
        let location = CLLocationCoordinate2D(
            latitude: 53.1316956,
            longitude: 23.1571699
        )
        // 2
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapKit.setRegion(region, animated: true)
        
        //3
        let annotation = MKPointAnnotation()
        annotation.setCoordinate(location)
        annotation.title = "Bialystok"
        annotation.subtitle = "Ratuszowa"
        mapKit.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

