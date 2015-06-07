//
//  ViewController.swift
//  ThumbTest
//
//  Created by Colton Booth on 2015-05-12.
//  Copyright (c) 2015 Colton Booth. All rights reserved.
//
//  This project is released under the GNU GPL v2 licence or any later version.
//  You can find the link to the licence here: http://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html

import UIKit

class ViewController: UIViewController {
    //seperate the outlets from the actions
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var cardButton: UIButton!
    
    let numberOfTapsRequired: Int = 1
    var first:String = "First Card"
    var cardNamesArray:[String] = ["ace", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //adding swipe gesture recognizer support
        var leftSwipe = UISwipeGestureRecognizer(target: self, action: "handleSwipes:")
        var rightSwipe = UISwipeGestureRecognizer(target: self, action: "handleSwipes:")
        var tapScreen = UITapGestureRecognizer(target: self, action: "handleTap:")
        
        //set whats left and right
        leftSwipe.direction = UISwipeGestureRecognizerDirection.Left
        rightSwipe.direction = UISwipeGestureRecognizerDirection.Right
        tapScreen.direction
        
        self.view.addGestureRecognizer(leftSwipe)
        self.view.addGestureRecognizer(rightSwipe)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func cardButtonTapped(sender: UIButton) {
        //randomize number for the imageview (added Int( ) around whole arc4random statement for array)
        var randomNumber:Int = Int(arc4random_uniform(13))
        var cardString:String = self.cardNamesArray[randomNumber]
        
        //change the imageview to whatever card the random gen is
        self.cardImageView.image = UIImage(named: cardString)
        return
    }

    @IBAction func handleTap(sender: UITapGestureRecognizer) {
        if sender.state == .Ended{
            var randomNumber:Int = Int(arc4random_uniform(13))
            var cardString:String = self.cardNamesArray[randomNumber]
            
            self.cardImageView.image = UIImage(named: cardString)
        }
        
    }
    
    
    func handleSwipes(sender: UIGestureRecognizer) {
        var randomNumber:Int = Int(arc4random_uniform(13))
        var cardString:String = self.cardNamesArray[randomNumber]
                
        self.cardImageView.image = UIImage(named: cardString)
        return
            }
    
    
}
