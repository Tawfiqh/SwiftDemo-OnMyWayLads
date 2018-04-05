//
//  ViewController.swift
//  Hello World
//
//  Created by Tawfiq Hamid on 25/03/2018.
//  Copyright © 2018 Tawfiq Hamid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var 🍅: UILabel!
    var amazing = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var newTitle = "Now this is a string"
        newTitle = "hello";
        🍅.text = newTitle;
        🍅.textColor = .green;
 
    }

    @IBAction func makeAmazing(_ sender: Any) {
        🍅.textColor = .red;
    }
    
    //Bonus:
//    Make the button toggle state.
//    change button colour
//    Change button name
//    change button without using an outlet.
//
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
    
