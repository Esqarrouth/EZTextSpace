//
//  ViewController.swift
//  EZText.Space
//
//  Created by Goktug Yilmaz on 2/27/16.
//  Copyright © 2016 Goktug Yilmaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var backgroundImage = UIImageView()
    var currentIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgroundImage.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
        view.addSubview(backgroundImage)
        
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
     
        

        
        
        mainLoop()

        //
        //            EZMortyView.show("Donald Trump", text: "We need to kick doctors out of the country!", image: UIImage(named: "trump")!, imageLocation: EZMortyImageStartLocation.TopOfText, onClick: { () -> () in
        //                EZMortyView.hide()
        //
        //                EZMortyView.show("Gandalf", text: "Come here little hobbit, I have a task for you. You see this ring, you need to destroy it.", image: UIImage(named: "gandalf")!, imageLocation: EZMortyImageStartLocation.BottomOfScreen, onClick: { () -> () in
        //                    EZMortyView.hide()
        //                })
        //                
        //            })
        //        }

    }
    
    
    func mainLoop() {
        switch currentIndex {
        case 0: EZTextSpace.show("Doctor Amy", text: "Hello my name is Doctor Amy, I will show you how to use this library.", image: UIImage(named: "doctor")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.standardCompletionBlock()
        })
        case 1: EZTextSpace.show("Doctor Amy", text: "EZText.Space shows a speech bubble, like this one, inside your app.", image: UIImage(named: "doctor")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.standardCompletionBlock()
        })
        case 2: EZTextSpace.show("Doctor Amy", text: "It is all customizable, this example shows how to put image on top the name.", image: UIImage(named: "doctor")!, imageLocation: EZTextSpaceImageStartLocation.TopOfName, onClick: { () -> () in
            self.backgroundImage.image = UIImage(named: "iphone6")!
            self.standardCompletionBlock()
        })
        case 3: EZTextSpace.show("Doctor Amy", text: "You can also show me over your app screen, like a guide or tutorial.", image: UIImage(named: "doctor")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.backgroundImage.image = UIImage(named: "facebook")!
            self.standardCompletionBlock()
        })
        case 4: EZTextSpace.show("Doctor Amy", text: "Here is an example with the Facebook app.", image: UIImage(named: "doctor")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.backgroundImage.image = UIImage(named: "facebook")!
            self.standardCompletionBlock()
        })
        case 5: EZTextSpace.show("Doctor Amy", text: "This library creates a separate layer, which doesn't affect your app at all.", image: UIImage(named: "doctor")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.backgroundImage.image = UIImage(named: "launch")!
            self.standardCompletionBlock()
        })
        case 6: EZTextSpace.show("Doctor Amy", text: "This library was developed in the Launch Hackathon. Use it!", image: UIImage(named: "doctor")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.standardCompletionBlock()
        })
        case 7: EZTextSpace.show("Doctor Amy", text: "Now I'll show you some cool use cases. 😎", image: UIImage(named: "doctor")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.backgroundImage.image = nil
            self.standardCompletionBlock()
        })
        case 8: EZTextSpace.show("Gandalf the Gray", text: "Run little hobbit, I will hold the Balrog, run and destroy the ring!", image: UIImage(named: "gandalf")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfScreen, onClick: { () -> () in
            self.standardCompletionBlock()
        })
        case 9: EZTextSpace.show("Gandalf the White", text: "I killed the beast. Now I am the most powerful wizard in the world.", image: UIImage(named: "gandalf1")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfScreen, onClick: { () -> () in
            self.standardCompletionBlock()
        })
        case 10: EZTextSpace.show("Obiwan", text: "Use the tap dude..", image: UIImage(named: "obiwan")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfScreen, onClick: { () -> () in
            self.standardCompletionBlock()
        })
        case 11: EZTextSpace.show("Granpa Rick", text: "I neeeeed some booze!", image: UIImage(named: "rick")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.standardCompletionBlock()
        })
        case 12: EZTextSpace.show("Granpa Rick", text: "Wohhoooo!", image: UIImage(named: "rick1")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfName, onClick: { () -> () in
            self.standardCompletionBlock()
        })
        case 13: EZTextSpace.show("Granpa Rick", text: "You want some boozeeurpp kid?", image: UIImage(named: "rick2")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfName, onClick: { () -> () in
            self.standardCompletionBlock()
        })
        case 14: EZTextSpace.show("Donald Trump", text: "We need to make iOS apps great again!!", image: UIImage(named: "trump")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.standardCompletionBlock()
        })
        case 15: EZTextSpace.show("Donald Trump", text: "Did you say Android??? We need to kick them out of the country.", image: UIImage(named: "trump1")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.standardCompletionBlock()
        })
        default: currentIndex = 0; mainLoop()
        }
        print(currentIndex)
    }
    
//    Put QR codes on guns so no one will use them.
//
//    Mars now officially has more water than California.
//
//    Instead of adding a leap second we should be correcting the speed of the Earth's rotation. This is just laziness.
//
//    An easier way to cheat an emissions test is to not have emissions.
//
//    App that recognizes your phone is falling and likely to get cracked and auto purchases insurance instantly prior to impact.
//
//    Sun blocking drone that flys ahead of you at the perfect angle.
//
//    LinkedIn: Pokemon for adults.
//
//    "I can't do X until Y happens." -People who never get anything done.
//
//    Shazam for relatives you can't quite remember while at family gatherings.
//
//    Digital counter in conference rooms that displays running sum of TIME ELAPSED x HOURLY RATE of all people in a meeting.
//
//    Resealable cereal bags. Still somehow not a thing.
//
//    Fireworks are silly. There's no point of shooting things up towards space that purposely blow up.
//
//    Feature that lets you send a big "NOOO" to your Lyft/Uber driver as you wait and watch them make wrong turns on the map.
//
//    You don't need a startup ecosystem. You need customers.
//
//    The ability to upvote and downvote other drivers on the road.
//    
//    Ad blocker that blocks a site's ability to recognize you're using an ad blocker and also blocks the guilt trip pop-up.


    
    
    func standardCompletionBlock() {
        if EZTextSpace.hide() {
            currentIndex++
            mainLoop()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

//Helpers:

/// EZSwiftExtensions
private var screenWidth: CGFloat {
    if UIInterfaceOrientationIsPortrait(screenOrientation) {
        return UIScreen.mainScreen().bounds.size.width
    } else {
        return UIScreen.mainScreen().bounds.size.height
    }
}

/// EZSwiftExtensions
private var screenHeight: CGFloat {
    if UIInterfaceOrientationIsPortrait(screenOrientation) {
        return UIScreen.mainScreen().bounds.size.height
    } else {
        return UIScreen.mainScreen().bounds.size.width
    }
}

/// EZSwiftExtensions
private var screenOrientation: UIInterfaceOrientation {
    return UIApplication.sharedApplication().statusBarOrientation
}

