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
    @IBOutlet weak var SendButton: UIButton!

    var amazing = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var newTitle = "Now this is a string"
        newTitle = "hello";
        🍅.text = newTitle;
        🍅.textColor = .green;
 
    }

    var buttonPressed = 0

    @IBAction func makeAmazing(_ sender: Any) {
        🍅.textColor = .red;
        
        if buttonPressed == 0 {
            SendButton.setTitleColor(UIColor.red, for: UIControlState.normal)
            SendButton.setTitle("SENT!", for: UIControlState.normal)
            buttonPressed = 1
        } else {            
            SendButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
            SendButton.setTitle("Press to send to broLAD!", for: UIControlState.normal)
            buttonPressed = 0
        }
        
        let messageToSend = InfoLabel?.text ?? ""
        
        sendToLads(message: messageToSend);

    }
    
        
    func sendToLads(message: String){
        print(message)
        let whatsappURL = URL(string: "whatsapp://send?text=Hello%2C%20World!");

        if (UIApplication.shared.canOpenURL(whatsappURL!)){
            UIApplication.shared.open(whatsappURL!,
                                      options: [:],
                                      completionHandler: nil)

        }
        else{
            displayMessage(message: "no whatsapp installed")
        }
    }
    
    
    
    func displayMessage(message: String){
        🍅.text = message;
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
    
