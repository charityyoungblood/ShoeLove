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

// *** From documentation : Request authorization at the point where you need location services. For example, wait until the user activates a feature of your app that requires location data. Don't request authorization at launch time unless you need the user's location immediately or your app was launched in the background by the system to handle a location update.*** 

class ShoeSuggestionsController: UIViewController, CLLocationManagerDelegate {
    
   // if this page will show the location and GPS data, does it still need assigned as a delegate?
    // or can I use the methods in ViewController in this class
    
    let locationManager = CLLocationManager() // this represents creation of a new CLLocationManager() object with no parameters and storing it into
    // the variable "locationManager"
    
    // TODO: Check to see if your app is authorized to use location services and request permission to access user location (display pop up window)
    
    // ** How do you ONLY request access if the user has not already granted access (don't ask every time the user uses the app)? **
    
    func isAppAuthorized(){
        locationManager.delegate = self
        
        // ** Why can't I use locationManager.authorizationStatus() since locationManager is an instance of the CLLocationManager class? ***
        
        if CLLocationManager.authorizationStatus() == .notDetermined || CLLocationManager.authorizationStatus() == .denied || CLLocationManager.authorizationStatus() == .restricted {
            locationManager.requestWhenInUseAuthorization()
        }
    }
    //        this else statement isn't needed - refer to for how to create UIAlertController {
    //            let authorizeAppController = UIAlertController(title: "This App needs your authorization", message: "Please authorize location services", preferredStyle: .alert)
    //            authorizeAppController.addAction(UIAlertAction(title: "authorize app", style: .`default`, handler: nil))
    //                self.present(authorizeAppController, animated: true, completion: nil)
    //    }
    
    // TODO: Determine the availability of location services
    
    func locationServicesAvailability() {
        locationManager.delegate = self
        if CLLocationManager.locationServicesEnabled() == false { // this will check if location services are enabled.
            //If they are - run program, if not display a popup with message to user to enable location services
            
            // ** How can I test this code and make sure it does what I expect it to do? **
            
            let alertController = UIAlertController(title: "Location services are disabled", message: "Please enable location services in Settings", preferredStyle: .alert)
            let userAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(userAction) // ** the alert is not displaying when app is launched **
            self.present(alertController, animated: true, completion: nil)
            // does this need to be a loop?
        }
    }
    
    // TODO: Determine user location
    
    //**IMPORTANT ASKING USER FOR LOCATION PERMISSION** It is recommended that you request only when-in-use authorization whenever possible. If your app requests and receives when-in-use authorization, you can make a separate request for always authorization later.
    
    // **IMPORTANT TODO: PICKING SERVICE TYPE TO FETCH USER LOCATION** - To help save power, disable location services (or switch to a lower-power alternative) when you do not need the location data offered by the service. For example, you might disable location services when your app is in the background and would not use that data otherwise.
    
    // TODO: disable location services when your app is in the background to save user battery
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationServicesAvailability()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("location updated")
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(Error.self)
    }
    //    func startReceivingSignificantLocationChanges() {
    //        let authorizationStatus = CLLocationManager.authorizationStatus()
    //        if authorizationStatus != .authorizedAlways {
    //            // if user has not authorized access to location information - display a popup to the user that requests authorization with message
    //            // "We need to access your location to show you the nearest stores"
    //            return
    //        }
    //
    //        if !CLLocationManager.significantLocationChangeMonitoringAvailable() {
    //            // The service is not available.
    //            return
    //        }
    //        locationManager.delegate = self
    //        locationManager.startMonitoringSignificantLocationChanges()
    //    }
    //
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
    
    
    
    
    //MARK: - 
    /***************************************************************/

  

}
