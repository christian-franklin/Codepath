//
//  ViewController.swift
//  Yelpy
//
//  Created by Memo on 5/21/20.
//  Copyright © 2020 memo. All rights reserved.
//

import UIKit
import AlamofireImage

class RestaurantsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    // ––––– TODO: Add storyboard Items (i.e. tableView + Cell + configurations for Cell + cell outlets)
    // ––––– TODO: Next, place TableView outlet here
    @IBOutlet weak var tableView: UITableView!
    
    
    // –––––– TODO: Initialize restaurantsArray
    var restaurantsArray: [[String:Any?]] = []
    
    
    // ––––– TODO: Add tableView datasource + delegate
    override func viewDidLoad() {
        super.viewDidLoad()
        getAPIData()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 150
    }
    
    
    // ––––– TODO: Get data from API helper and retrieve restaurants
    func getAPIData(){
        API.getRestaurants() {
            (restaurants) in guard let restaurants = restaurants else {
                return
            }
            //print(restaurants)
            self.restaurantsArray = restaurants
            self.tableView.reloadData() // reload data!
        }
    }



// ––––– TODO: Create tableView Extension and TableView Functionality
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return restaurantsArray.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //Create Restaurant Cell
    let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantCell") as! RestaurantCell
    
    let restaurant = restaurantsArray[indexPath.row]
    
    // Set Label to restaurant name for each cell
    cell.label.text = restaurant["name"] as? String ?? ""
    
    // Set Image of restaurant
    if let imageUrlString = restaurant["image_url"] as? String {
        let imageUrl = URL(string: imageUrlString)
        cell.RestaurantImage.af.setImage(withURL: imageUrl!)
    }
    
    return cell
}

    
}
