//
//  EZTextSpace
//  PodTest
//
//  Created by Goktug Yilmaz on 2/27/16.
//  Copyright © 2016 Goktug Yilmaz. All rights reserved.
//

import UIKit

/// The bottom location of the image
public enum EZTextSpaceImageStartLocation {
    case TopOfName
    case TopOfBlack
    case BottomOfName
    case BottomOfScreen
    
    private func getLocation() -> CGFloat {
        switch self {
        case .TopOfName: return screenHeight - EZTextSpace.Settings.height
        case .TopOfBlack: return screenHeight - EZTextSpace.Settings.height*3/4
        case .BottomOfName: return screenHeight - EZTextSpace.Settings.height +  EZTextSpace.Settings.padding
        case .BottomOfScreen: return screenHeight
        }
    }
}

public struct EZTextSpace {
    
    public struct Settings {
        public static var padding: CGFloat = 20
        public static var height: CGFloat = 150
        public static var textSpeed: Double = 0.025
    }
    
    private static var instance: TextSpace?
    private static var loadingText = false
    
    public static func show(name: String, text: String, image: UIImage, imageLocation: EZTextSpaceImageStartLocation, onClick: () -> ()) -> Bool {
        guard topMostVC != nil else {
            print("EZMortyView Error: You don't have any views set. You may be calling them in viewDidLoad. Try viewDidAppear instead.")
            return false
        }

        guard instance == nil else {
            print("EZMortyView Warning: You still have an active view, please dismiss that before creating a new one")
            return false
        }
        
        instance = TextSpace(name: name, text: text, image: image, imageLocation: imageLocation, onClick: onClick)
        dispatch_async(dispatch_get_main_queue()) {
            instance?.showTextSpace()
        }
        return true
    }
    
//TODO:    public static update()
    
    public static func hide() -> Bool {
        guard instance != nil else {
            print("EZMortyView Warning: You don't have an activity instance")
            return false
        }
        
        guard loadingText == false else {
            print("EZMortyView Warning: Text is still showing")
            return false
        }
        
        if !NSThread.currentThread().isMainThread {
            dispatch_async(dispatch_get_main_queue()) {
                instance?.removeFromSuperview()
                instance = nil
            }
        } else {
            instance?.removeFromSuperview()
            instance = nil
        }
        return true
    }
    
    private class TextSpace: UIView {
        
        var tapClosure: () -> () = {}
        @objc func tappedScreen() {
            tapClosure()
        }
        
        convenience init(name: String, text: String, image: UIImage, imageLocation: EZTextSpaceImageStartLocation, onClick: () -> ()) {
            self.init(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
            tapClosure = onClick
            loadingText = true
            let gesture = UITapGestureRecognizer(target: self, action: "tappedScreen")
            addGestureRecognizer(gesture)
            userInteractionEnabled = true

            let containerView = UIView(x: 0, y: frame.height - Settings.height, w: frame.width, h: Settings.height)
            //        containerView.backgroundColor = UIColor.clearColor()
            addSubview(containerView)
    
            let blackView = UIView(x: 0, y: containerView.frame.height/4, w: frame.width, h: containerView.frame.height/2)
            blackView.backgroundColor = UIColor.blackColor()
            containerView.addSubview(blackView)
            
            let textContainerView = UIView(superView: containerView, padding: Settings.padding)
            textContainerView.backgroundColor = UIColor(r: 249, g: 248, b: 248)
            textContainerView.layer.borderColor = UIColor.blackColor().CGColor
            textContainerView.layer.cornerRadius = 20 //Maybe swift extensions doesnt need this
            textContainerView.layer.borderWidth = 5

            let textView = UITextView(superView: textContainerView, padding: Settings.padding/2)
            textView.editable = false
            textView.selectable = false
            textView.text = ""
            textView.textAlignment = NSTextAlignment.Natural
            textView.font = UIFont(name: "HelveticaNeue-Bold", size: 20)
            addSubview(textView)
            
            addSubview(textContainerView)
    
            let imageView = UIImageView(image: image)
            imageView.scaleImageFrameToWidth(width: screenWidth/2)
            imageView.y = imageLocation.getLocation() - imageView.h // ez.screenHeight - containerView.h - imageView.h
            addSubview(imageView)
    
            let nameView = UILabel(x: textContainerView.x + textContainerView.w/10, y: textContainerView.y - Settings.height/5, w: 10, h: Settings.height/4)
            textView.editable = false
            textView.selectable = false
            nameView.backgroundColor = UIColor.blackColor()
            nameView.layer.cornerRadius = 10
            nameView.textColor = UIColor.whiteColor()
            nameView.text = name
            nameView.textAlignment = NSTextAlignment.Center
            nameView.font = UIFont(name: "HelveticaNeue-Bold", size: 20)
            nameView.resizeToFitWidth()
            nameView.w += 20
            addSubview(nameView)
            bringSubviewToFront(textContainerView)
            bringSubviewToFront(textView)
            
            runTextLoop(textView, text: text)
        }
    
        func runTextLoop(textView: UITextView, text: String) {
            var currentLoop = 0
            runThisEvery(seconds: Settings.textSpeed, handler: { (timer) -> Void in
                if currentLoop == text.characters.count {
                    timer.invalidate()
                    loadingText = false
                }
                textView.text = text[0..<currentLoop]
                currentLoop++
            })
        }
        
        func showTextSpace() {
            topMostVC?.view.addSubview(self)
        }
    }
    
}

// MARK: - HELPER CODE AFTER THIS

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

/// EZSwiftExtensions
private func runThisEvery(seconds seconds: NSTimeInterval, handler: NSTimer! -> Void) -> NSTimer {
    let fireDate =  CFAbsoluteTimeGetCurrent()
    let timer = CFRunLoopTimerCreateWithHandler(kCFAllocatorDefault, fireDate, seconds, 0, 0, handler)
    CFRunLoopAddTimer(CFRunLoopGetCurrent(), timer, kCFRunLoopCommonModes)
    return timer
}

/// EZSwiftExtensions - Gives you the VC on top so you can easily push your popups
private var topMostVC: UIViewController? {
    var presentedVC = UIApplication.sharedApplication().keyWindow?.rootViewController
    while let pVC = presentedVC?.presentedViewController {
        presentedVC = pVC
    }
    
    if presentedVC == nil {
        print("EZMortyView Error: You don't have any views set. You may be calling them in viewDidLoad. Try viewDidAppear instead.")
    }
    return presentedVC
}

private extension UIView {
    
    /// EZSwiftExtensions
    convenience init(x: CGFloat, y: CGFloat, w: CGFloat, h: CGFloat) {
        self.init(frame: CGRect(x: x, y: y, width: w, height: h))
    }
    
    /// EZSwiftExtensions, puts padding around the view
    convenience init(superView: UIView, padding: CGFloat) {
        self.init(frame: CGRect(x: superView.x + padding, y: superView.y + padding, width: superView.w - padding*2, height: superView.h - padding*2))
    }
    
    /// EZSwiftExtensions
    var x: CGFloat {
        get {
            return self.frame.origin.x
        } set(value) {
            self.frame = CGRect(x: value, y: self.y, width: self.w, height: self.h)
        }
    }
    
    /// EZSwiftExtensions
    var y: CGFloat {
        get {
            return self.frame.origin.y
        } set(value) {
            self.frame = CGRect(x: self.x, y: value, width: self.w, height: self.h)
        }
    }
    
    /// EZSwiftExtensions
    var w: CGFloat {
        get {
            return self.frame.size.width
        } set(value) {
            self.frame = CGRect(x: self.x, y: self.y, width: value, height: self.h)
        }
    }
    
    /// EZSwiftExtensions
    var h: CGFloat {
        get {
            return self.frame.size.height
        } set(value) {
            self.frame = CGRect(x: self.x, y: self.y, width: self.w, height: value)
        }
    }
    
    /// EZSwiftExtensions
    func resizeToFitWidth() {
        let currentHeight = self.h
        self.sizeToFit()
        self.h = currentHeight
    }
}

extension UIColor {
    
    /// EZSwiftExtensions
    public convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1)
    }
}

extension UIImageView {
    /// EZSwiftExtensions, scales this ImageView size to fit the given width
    public func scaleImageFrameToWidth(width width: CGFloat) {
        let widthRatio = image!.size.width / width
        let newWidth = image!.size.width / widthRatio
        let newHeigth = image!.size.height / widthRatio
        frame = CGRect(x: frame.origin.x, y: frame.origin.y, width: newWidth, height: newHeigth)
    }
}

extension String {
    /// EZSwiftExtensions
    public subscript(integerRange: Range<Int>) -> String {
        let start = startIndex.advancedBy(integerRange.startIndex)
        let end = startIndex.advancedBy(integerRange.endIndex)
        let range = start..<end
        return self[range]
    }
}
