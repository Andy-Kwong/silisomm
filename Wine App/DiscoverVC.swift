//
//  DiscoverViewController.swift
//  Wine App
//
//  Created by Andy Kwong on 2/1/18.
//  Copyright © 2018 Andy Kwong. All rights reserved.
//

import UIKit

class DiscoverVC: UIViewController {
    
    var wines = ["Rainstorm 2013 Pinot Gris (Willamette Valley)", "Silverado 2006 Cabernet Sauvignon (Napa Valley)", "Vina Bisquertt 2007 Casa La Joya Reserve Merlot (Colchagua Valley)"]
    var varietal = ["PINOT GRIS", "CABERNET SAUVIGNON", "MERLOT"]
    var descriptionLabel = ["Tart and snappy, the flavors of lime flesh and rind dominate. Some green pineapple pokes through, with crisp acidity underscoring the flavors. The wine was all stainless-steel fermented.", "This sophisticated wine is mostly Cabernet Sauvignon, which accounts for the firm tannins and dense structure as well as most of the blackberries and blackcurrants. Smaller amounts of Merlot and Cabernet Franc add cherries and violets, while oak contributes smoky complexities. Rich and elegant, the wine provides lovely drinking now.", "Bisquertt usually does well with its value-priced Merlots, and seeing that 2007 was an excellent vintage in Chile, this wine excels in the value price range. The nose is dark and saturated, but pure and inviting. And the palate is ripe and smooth, with spice, plum, blackberry and herb notes, particularly anise. Finishes clean, smooth and peppery. Drink now."]
    var year = ["2013", "2006", "2007"]
    var price = ["14", "45", "11"]
    var points = ["87", "92", "88"]
    var region = ["Willamette Valley, Oregon", "Napa Valley, California", "Colchagua Valley, Chile"]
    
    @IBOutlet weak var discoverTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        discoverTableView.reloadData()
        discoverTableView.delegate = self
        discoverTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let wineInfoView = segue.destination as! WineInfoVC
        
        if ((sender as? IndexPath) != nil) {
            let indexPath = sender as! IndexPath
            wineInfoView.yearVar = year[indexPath.row]
            wineInfoView.typeVar = varietal[indexPath.row]
            wineInfoView.regionVar = region[indexPath.row]
            wineInfoView.descriptionVar = descriptionLabel[indexPath.row]
            wineInfoView.pointsVar = points[indexPath.row]
            wineInfoView.priceVar = price[indexPath.row]
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        discoverTableView.reloadData()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Pass the selected object to the new view controller.
//    }

}

extension DiscoverVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wines.count
    }
    
    // ************************* cell for row at ***********************
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "discoverCell") as! DiscoverTVCell
        let title = wines[indexPath.row]
        let variety = varietal[indexPath.row]
        
        print(title)
        print(variety)
        
        cell.nameLabel.text = title
        cell.varietalLabel.text = variety
//        cell.typeColor.backgroundColor = UIColor.red
        
        return cell
    }
    
    // func numberOfSections(in tableView: UITableView) -> Int {
    //
    //     return 0
    // }
    
    // func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    //
    //     return nil
    // }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "descriptionSegue", sender: indexPath)
   }
    
}
