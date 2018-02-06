//
//  ViewController.swift
//  ShoeLove
//
//  Created by Charity Youngblood  on 1/26/18.
//  Copyright © 2018 Charity Youngblood . All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    // place location services methods in this class - this is the first page the user sees
    
    let locationManager = CLLocationManager() // this represents creation of a new CLLocationManager() object with no parameters and storing it into
    // the variable "locationManager"
    
    // TODO: Check to see if your app is authorized to use location services and request permission to access user location (display pop up window),
    // ONLY request access if the user has not already granted access (don't ask every time the user uses the app)
    func isAppAuthorized(){
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        }
    
    // TODO: Determine the availability of location services - Not all Core Location services are available on every device, and services may be temporarily unavailable in certain circumstances
    // ** check the availability of that service using the methods of your CLLocationManager() object (this is set to your locationManager variable)**
    func locationServicesAvailability() {
        if !CLLocationManager.locationServicesEnabled() { // this will check if location services are enabled.
            //If they are - run program, if not display a popup with message to user to enable location services
            let alertController = UIAlertController(title: "Location services are disabled", message: "Please enable location services in Settings", preferredStyle: .alert)
            
        }
        
        
//        if CLLocationManager.locationServicesEnabled() { // why can't I use the locationManager instance variable here?
//            switch CLLocationManager.authorizationStatus() {
//            case .notDetermined, .restricted, .denied:
//                print("No access")
//            case .authorizedAlways, .authorizedWhenInUse:
//                print("Access")
//            }
//        } else {
//            print("Location services are not enabled")
//        }
//    }
    
    // TODO: Determine user location
    
    //**IMPORTANT TODO: ASKING USER FOR LOCATION PERMISSION** It is recommended that you request only when-in-use authorization whenever possible. If your app requests and receives when-in-use authorization, you can make a separate request for always authorization later.
    
    // **IMPORTANT TODO: PICKING SERVICE TYPE TO FETCH USER LOCATION** - To help save power, disable location services (or switch to a lower-power alternative) when you do not need the location data offered by the service. For example, you might disable location services when your app is in the background and would not use that data otherwise.
    
    
    // TODO: create a function that requests permission/asks user to access their location - with popup
    
    // TODO: disable location services when your app is in the background to save user battery
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isAppAuthorized()
        
    
    }
    
    func startReceivingSignificantLocationChanges() {
        let authorizationStatus = CLLocationManager.authorizationStatus()
        if authorizationStatus != .authorizedAlways {
            // if user has not authorized access to location information - display a popup to the user that requests authorization with message
            // "We need to access your location to show you the nearest stores"
            return
        }
        
        if !CLLocationManager.significantLocationChangeMonitoringAvailable() {
            // The service is not available.
            return
        }
        locationManager.delegate = self
        locationManager.startMonitoringSignificantLocationChanges()
    }
    
    // TODO: Once location is found - stop searching for location
    
    // TODO: Inform ShoeSuggestionsController class of user location
    
    // TODO: Store user location - probably in a variable
    
    // TODO: Access user location/connect user location to google maps
    
    // TODO: Evaluate user price preferences
    
    // TODO: Access stores via Google maps, based on user price preferences
    
    // TODO: Display stores on Google maps nearest to the user location
    
    // TODO: Implement the method(s) for handling any potential failures in addition to the methods for receiving location-related data.
    
    
    
    
    //MARK: -
    /***************************************************************/
    
    
    
}

