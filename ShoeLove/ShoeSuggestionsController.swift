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
    
    // TODO: Determine user location
    
    // TODO: Once location is found - stop searching for location
    
    // TODO: Inform ShoeSuggestionsController class of user location
    
    // TODO: Store user location - probably in a variable
    
    // TODO: Access user location/connect user location to google maps
    
    // TODO: Evaluate user price preferences
    
    // TODO: Display stores via Google maps, based on user price preferences 
    
    // TODO: Display stores near the user
    
    let googleMaps = "placeholder"
    let storeLocation = "placeholder"
    let apiKey = "AIzaSyAJ7_iAlQJuzHNxyDGQrohfBlMm2gdei7g"
    
    let locationManager = CLLocationManager()

    // TODO: create method to find user location
    
    // TODO: store user location
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO:Set up the location manager here.
        
        locationManager.delegate = self // delegate method is an included method from Apple - this allows us to access the GPS data from the iPhone
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters// the higher the accuracy, the longer it's going to take and the more battery your app will use
        locationManager.requestWhenInUseAuthorization() // this asks the user for their permission to give app their current location
        locationManager.startUpdatingLocation() // asynchronous method, meaning it works in the background
        // Once the startUpdatingLocation method retrieves the location information - it reports back to the ViewController class
        // In order for us to receive the location information - we have to add the didUpdateLocations method below

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Location Manager Delegate Methods
    /***************************************************************/
    
    
    //Write the didUpdateLocations method here: - this is the method that gets activated once the location manager has found a location
    // this method will describe what should happen once the location has been found
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[locations.count - 1] // we need to check the locations that are in the locations array to make sure they are valid
        if location.horizontalAccuracy > 0 {
            locationManager.stopUpdatingLocation()
            print("longitude = \(location.coordinate.longitude), latitude = \(location.coordinate.latitude)")
        }
    }
    
    //Write the didFailWithError method here: - this method tells the View Controller that the location manager was unable to retrieve a location value
    // this could be do to the user's phone being on airplane mode or if the user is not connected to wi-fi/internet access
    // if there was an error while retrieving the location value, we want to print the error to the console and tell the user there was an error (via popup)
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
        //cityLabel.text = "Location Unavailable"
        
    }
  

}
