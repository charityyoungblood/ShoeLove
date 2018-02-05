//
//  ShoeSuggestionsController.swift
//  ShoeLove
//
//  Created by Charity Youngblood  on 1/27/18.
//  Copyright © 2018 Charity Youngblood . All rights reserved.
//

import UIKit
import CoreLocation

// this class will use user location (iPhone GPS) to display shoe store locations

class ShoeSuggestionsController: UIViewController, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager() // this represents creation of a new CLLocationManager() object with no parameters and storing it into
    // the variable "locationManager"
    
    // TODO: Ask user for permission to access their location (pop up)
    
    // TODO: Determine the availability of location services - Not all Core Location services are available on every device, and services may be temporarily unavailable in certain circumstances
        // ** check the availability of that service using the methods of your CLLocationManager() object (this is set to your locationManager variable)**
    func locationServicesAvailability() {
        if CLLocationManager.locationServicesEnabled() { // why can't I use the locationManager variable here? 
            switch CLLocationManager.authorizationStatus() {
            case .notDetermined, .restricted, .denied:
                print("No access")
            case .authorizedAlways, .authorizedWhenInUse:
                print("Access")
            }
        } else {
            print("Location services are not enabled")
        }
    }
    
    // TODO: Determine user location
    
    //**IMPORTANT TODO: ASKING USER FOR LOCATION PERMISSION** It is recommended that you request only when-in-use authorization whenever possible. If your app requests and receives when-in-use authorization, you can make a separate request for always authorization later.
    
    // **IMPORTANT TODO: PICKING SERVICE TYPE TO FETCH USER LOCATION** - To help save power, disable location services (or switch to a lower-power alternative) when you do not need the location data offered by the service. For example, you might disable location services when your app is in the background and would not use that data otherwise.
    
    
    // TODO: create a function that requests permission/asks user to access their location - with popup
    
    // TODO: disable location services when your app is in the background to save user battery
    
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
    
//    let googleMaps = "placeholder"
//    let storeLocation = "placeholder"
//    let apiKey = "AIzaSyAJ7_iAlQJuzHNxyDGQrohfBlMm2gdei7g"
//
//    let locationManager = CLLocationManager()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        //TODO:Set up the location manager here.
//
//        locationManager.delegate = self // delegate method is an included method from Apple - this allows us to access the GPS data from the iPhone
//        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters// the higher the accuracy, the longer it's going to take and the more battery your app will use
//        locationManager.requestWhenInUseAuthorization() // this asks the user for their permission to give app their current location
//        locationManager.startUpdatingLocation() // asynchronous method, meaning it works in the background
//        // Once the startUpdatingLocation method retrieves the location information - it reports back to the ViewController class
//        // In order for us to receive the location information - we have to add the didUpdateLocations method below
//
//        // Do any additional setup after loading the view.
    


    
    //MARK: - Location Manager Delegate Methods
    /***************************************************************/
    
    
    //Write the didUpdateLocations method here: - this is the method that gets activated once the location manager has found a location
    // this method will describe what should happen once the location has been found
//
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        let location = locations[locations.count - 1] // we need to check the locations that are in the locations array to make sure they are valid
//        if location.horizontalAccuracy > 0 {
//            locationManager.stopUpdatingLocation()
//            print("longitude = \(location.coordinate.longitude), latitude = \(location.coordinate.latitude)")
//        }
//    }
//
//    //Write the didFailWithError method here: - this method tells the View Controller that the location manager was unable to retrieve a location value
//    // this could be do to the user's phone being on airplane mode or if the user is not connected to wi-fi/internet access
//    // if there was an error while retrieving the location value, we want to print the error to the console and tell the user there was an error (via popup)
//    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
//        print(error)
//        //cityLabel.text = "Location Unavailable"
//
    
  

}
