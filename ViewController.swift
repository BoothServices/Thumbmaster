//
//  ViewController.swift
//  ThumbTest
//
//  Created by Colton Booth on 2015-05-12.
//  Copyright (c) 2015 Colton Booth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var backgroundImageView: UIImageView!

    @IBOutlet weak var cardButton: UIButton!
    
    var first:String = "First Card"

    
    var cardNamesArray:[String] = ["ace", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cardButtonTapped(sender: UIButton) {
        
        cardButton.setTitle("Next Card", forState: UIControlState.Normal)
        
        

        
        //randomize number for the imageview (added Int( ) around whole arc4random statement for array
        var randomNumber:Int = Int(arc4random_uniform(13))
        
        var cardString:String = self.cardNamesArray[randomNumber]


    
        //change the imageview to whatever card the random gen is
        self.cardImageView.image = UIImage(named: cardString)
        
        
    
    
    }

}
