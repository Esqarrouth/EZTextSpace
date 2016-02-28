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
        backgroundImage.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
//        backgroundImage.image = UIImage(named: "whatsapp")!
        view.addSubview(backgroundImage)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        backgroundImage.image = UIImage(named: "spacex")!
        elonMuskLoop()
//        mainLoop()
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
        case 6: EZTextSpace.show("Doctor Amy", text: "This library was developed in the Launch Hackathon. Use it! Star it!", image: UIImage(named: "doctor")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.standardCompletionBlock()
        })
        case 7: EZTextSpace.show("Doctor Amy", text: "Check the next gif for some cool use cases. 😎", image: UIImage(named: "doctor")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.backgroundImage.image = UIImage(named: "back")!
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
        default: currentIndex = 0; backgroundImage.image = UIImage(named: "whatsapp")!;  mainLoop()
        }
        print(currentIndex)
    }
    
    func elonMuskLoop() {
        switch currentIndex {
        case 0: EZTextSpace.show("Elon Musk", text: "Hello my name is Elon Musk, I build rocket ships and other cool shit.", image: UIImage(named: "elonmusk")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 1: EZTextSpace.show("Elon Musk", text: "I will introduce you to the awesome library EZText.Space", image: UIImage(named: "elonmusk")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 2: EZTextSpace.show("Elon Musk", text: "EZText.Space shows a speech bubble, like this one, inside your app.", image: UIImage(named: "elonmusk")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.muskCompletionBlock()
            self.backgroundImage.image = UIImage(named: "spacex2")!
        })
        case 3: EZTextSpace.show("Elon Musk", text: "It is very customizable. As you see.", image: UIImage(named: "elonmusk2")!, imageLocation: EZTextSpaceImageStartLocation.TopOfName, onClick: { () -> () in
            self.muskCompletionBlock()
            self.backgroundImage.image = UIImage(named: "whatsapp")!
        })
        case 4: EZTextSpace.show("Elon Musk", text: "You can also show me over your app screen, like a guide or tutorial.", image: UIImage(named: "elonmusk")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 5: EZTextSpace.show("Elon Musk", text: "Throw your lame tutorials out and narrate your app by me. Or maybe Morgan Freeman.", image: UIImage(named: "elonmusk")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.muskCompletionBlock()
            self.backgroundImage.image = UIImage(named: "space")!
        })
        case 6: EZTextSpace.show("Morgan Freeman", text: "This library creates a separate layer, which doesn't affect your app at all.", image: UIImage(named: "morgan")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 7: EZTextSpace.show("Morgan Freeman", text: "This library was developed in the Launch Hackathon.", image: UIImage(named: "morgan")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 8: EZTextSpace.show("Morgan Freeman", text: "I want you to star this library.", image: UIImage(named: "morgan")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.muskCompletionBlock()
            self.backgroundImage.image = UIImage(named: "spacex")!
        })
        case 9: EZTextSpace.show("Elon Musk", text: "I'll show you some of my best tweets.", image: UIImage(named: "elonmusk")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 10: EZTextSpace.show("Bored Elon Musk", text: "Put QR codes on guns so no one will use them.", image: UIImage(named: "elonmusk3")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfName, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 11: EZTextSpace.show("Bored Elon Musk", text: "Mars now officially has more water than California.", image: UIImage(named: "elonmusk3")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfName, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 12: EZTextSpace.show("Bored Elon Musk", text: "Instead of adding a leap second we should be correcting the speed of the Earth's rotation.", image: UIImage(named: "elonmusk3")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfName, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 13: EZTextSpace.show("Bored Elon Musk", text: "An easier way to cheat an emissions test is to not have emissions.", image: UIImage(named: "elonmusk3")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfName, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 14: EZTextSpace.show("Bored Elon Musk", text: "'I can't do X until Y happens.' -People who never get anything done.", image: UIImage(named: "elonmusk3")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfName, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 15: EZTextSpace.show("Bored Elon Musk", text: "Fireworks are silly. No point of shooting things up towards space that purposely blow up.", image: UIImage(named: "elonmusk3")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfName, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 16: EZTextSpace.show("Bored Elon Musk", text: "You don't need a startup ecosystem. You need customers.", image: UIImage(named: "elonmusk3")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfName, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 17: EZTextSpace.show("Bored Elon Musk", text: "LinkedIn: Pokemon for adults.", image: UIImage(named: "elonmusk3")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfName, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 18: EZTextSpace.show("Elon Musk", text: "For all the startup folks out there, here are some good startup ideas:", image: UIImage(named: "elonmusk")!, imageLocation: EZTextSpaceImageStartLocation.TopOfBlack, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 19: EZTextSpace.show("Bored Elon Musk", text: "Ad blocker that blocks a site's ability to recognize you're using an ad blocker.", image: UIImage(named: "elonmusk3")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfName, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 20: EZTextSpace.show("Bored Elon Musk", text: "Shazam for relatives you can't quite remember while at family gatherings.", image: UIImage(named: "elonmusk3")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfName, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 21: EZTextSpace.show("Bored Elon Musk", text: "Counter that shows TIME ELAPSED X HOURLY RATE of people in the meeting.", image: UIImage(named: "elonmusk3")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfName, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 22: EZTextSpace.show("Bored Elon Musk", text: "Resealable cereal bags. Still somehow not a thing.", image: UIImage(named: "elonmusk3")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfName, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 23: EZTextSpace.show("Bored Elon Musk", text: "Send a big 'NOOO' to your Uber driver as you watch them make wrong turns on the map.", image: UIImage(named: "elonmusk3")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfName, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        case 24: EZTextSpace.show("Bored Elon Musk", text: "The ability to upvote and downvote other drivers on the road.", image: UIImage(named: "elonmusk3")!, imageLocation: EZTextSpaceImageStartLocation.BottomOfName, onClick: { () -> () in
            self.muskCompletionBlock()
        })
        default: currentIndex = 0; backgroundImage.image = UIImage(named: "spacex")!;  elonMuskLoop()
        }
        print(currentIndex)
    }
    

    func standardCompletionBlock() {
        if EZTextSpace.hide() {
            currentIndex++
            mainLoop()
        }
    }
    
    func muskCompletionBlock() {
        if EZTextSpace.hide() {
            currentIndex++
            elonMuskLoop()
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

