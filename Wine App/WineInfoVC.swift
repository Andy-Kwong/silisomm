//
//  WineInfoViewController.swift
//  Wine App
//
//  Created by Andy Kwong on 2/1/18.
//  Copyright © 2018 Andy Kwong. All rights reserved.
//

import UIKit

class WineInfoVC: UIViewController {

    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var regionLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var yearVar = ""
    var typeVar = ""
    var regionVar = ""
    var descriptionVar = ""
    var pointsVar = ""
    var priceVar = ""
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        yearLabel.text = yearVar
        typeLabel.text = typeVar
        regionLabel.text = regionVar
        descriptionLabel.text = descriptionVar
        pointsLabel.text = pointsVar
        priceLabel.text = priceVar

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
