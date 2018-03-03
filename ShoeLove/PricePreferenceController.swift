//
//  PricePreferenceController.swift
//  ShoeLove
//
//  Created by Charity Youngblood  on 1/27/18.
//  Copyright © 2018 Charity Youngblood . All rights reserved.
//

import UIKit

class PricePreferenceController: UIViewController {

    @IBAction func underFifty(_ sender: UIButton) {
        // change Shoe Suggestions stores to display hyperlink connected to button for the following stores: - make sure link goes directly to the under $50 page
        // Asos
        // Belk
        // ShopBop
        // Nordstrom Rack
    }
    
    
    @IBAction func fiftyToOneHundred(_ sender: UIButton) {
    }
    
    @IBAction func oneHundredToTwoFifty(_ sender: UIButton) {
        // display Nordstrom, Revolve, Saks Off Fifth, Glamest
    }
    
    @IBAction func aboveTwoFifty(_ sender: UIButton) {
        // display ShopBazaar, Barneys Warehouse, NeimanMarcus
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //TODO: functions to create
        // if user selected $250 then display Macys, etc

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
