//
//  ViewController.swift
//  ShoeLove
//
//  Created by Charity Youngblood  on 1/26/18.
//  Copyright © 2018 Charity Youngblood . All rights reserved.
//

import UIKit
import CoreLocation

// by adding CLLocationManagerDelegate - our ViewController class is a subclass of the UIViewController, and it conforms to the rules of the Core location location manager delegate (CLLocationManagerDelegate)
class ViewController: UIViewController, CLLocationManagerDelegate {
    
    //Constants
    let WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather"
    let APP_ID = "a3d337183a430d921a50f64a3f37677a" // this is the same as the API key
    
// create a new LocationManager object - store in an instance variable
    
    let locationManager = CLLocationManager()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO:Set up the location manager here.
        
        locationManager.delegate = self // delegate method is an included method from Apple - this allows us to access the GPS data from the iPhone
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters// the higher the accuracy, the longer it's going to take and the more battery your app will use
        locationManager.requestWhenInUseAuthorization() // this asks the user for their permission to give app their current location
        locationManager.startUpdatingLocation() // asynchronous method, meaning it works in the background 
        
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    } 



//MARK: - Networking
/***************************************************************/

//Write the getWeatherData method here:







//MARK: - JSON Parsing
/***************************************************************/


//Write the updateWeatherData method here:





//MARK: - UI Updates
/***************************************************************/


//Write the updateUIWithWeatherData method here:






//MARK: - Location Manager Delegate Methods
/***************************************************************/


//Write the didUpdateLocations method here:



//Write the didFailWithError method here:





//MARK: - Change City Delegate methods
/***************************************************************/


//Write the userEnteredANewCityName Delegate method here:



//Write the PrepareForSegue Method here





}


