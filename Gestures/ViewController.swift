//
//  ViewController.swift
//  Gestures
//
//  Created by LT Carbonell on 3/20/17.
//  Copyright © 2017 LT Carbonell. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {

    var audioPlayer : AVAudioPlayer?
    let tapSound = URL(fileURLWithPath: Bundle.main.path(forResource: "tap", ofType: "mp3")!)
    let rotatepSound = URL(fileURLWithPath: Bundle.main.path(forResource: "rotate", ofType: "mp3")!)
    let swipeSound = URL(fileURLWithPath: Bundle.main.path(forResource: "swipe", ofType: "mp3")!)
    let pinchSound = URL(fileURLWithPath: Bundle.main.path(forResource: "pinch", ofType: "mp3")!)
    let longPressSound = URL(fileURLWithPath: Bundle.main.path(forResource: "long_press", ofType: "mp3")!)
    let panSound = URL(fileURLWithPath: Bundle.main.path(forResource: "pan", ofType: "mp3")!)
    
    @IBOutlet weak var tapLabel: UILabel!
    @IBOutlet weak var swipeLabel: UILabel!
    @IBOutlet weak var rotateLabel: UILabel!
    @IBOutlet weak var pinchLabel: UILabel!
    @IBOutlet weak var longPressLabel: UILabel!
    @IBOutlet weak var panLabel: UILabel!
    
    let tapRec = UITapGestureRecognizer()
    let swipeRec = UISwipeGestureRecognizer()
    let rotateRec = UIRotationGestureRecognizer()
    let pinchRec = UIPinchGestureRecognizer()
    let longPressRec = UILongPressGestureRecognizer()
    let panRec = UIPanGestureRecognizer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tapRec.addTarget(self, action: #selector(ViewController.tappedView))
        tapLabel.addGestureRecognizer(tapRec)
        tapLabel.isUserInteractionEnabled = true
        
        swipeRec.addTarget(self, action: #selector(ViewController.swipedView))
        swipeLabel.addGestureRecognizer(swipeRec)
        swipeLabel.isUserInteractionEnabled = true
        
        rotateRec.addTarget(self, action: #selector(ViewController.rotatedView))
        rotateLabel.addGestureRecognizer(rotateRec)
        rotateLabel.isUserInteractionEnabled = true
        
        pinchRec.addTarget(self, action: #selector(ViewController.pinchedView))
        pinchLabel.addGestureRecognizer(pinchRec)
        pinchLabel.isUserInteractionEnabled = true
        
        longPressRec.addTarget(self, action: #selector(ViewController.longPressedView))
        longPressLabel.addGestureRecognizer(longPressRec)
        longPressLabel.isUserInteractionEnabled = true
        
        panRec.addTarget(self, action: #selector(ViewController.pannedView))
        panLabel.addGestureRecognizer(panRec)
        panLabel.isUserInteractionEnabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tappedView() {
        let tappedAlert = UIAlertController(title: "Tapped", message: "You just tapped the tap label", preferredStyle: UIAlertControllerStyle.alert)
        tappedAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.destructive, handler: nil))
        self.present(tappedAlert, animated: true, completion: nil)
    }
    
    func swipedView(){
        let tapAlert = UIAlertController(title: "Swiped", message: "You just swiped the swipe view", preferredStyle: UIAlertControllerStyle.alert)
        tapAlert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
        self.present(tapAlert, animated: true, completion: nil)
    }
    
    func longPressedView(){
        let tapAlert = UIAlertController(title: "Long Pressed", message: "You just long pressed the long press view", preferredStyle: UIAlertControllerStyle.alert)
        tapAlert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
        self.present(tapAlert, animated: true, completion: nil)
    }

    func rotatedView() {
        let rotatedAlert = UIAlertController(title: "Rotated", message: "You just rotated the rotated label", preferredStyle: UIAlertControllerStyle.alert)
        rotatedAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.destructive, handler: nil))
        self.present(rotatedAlert, animated: true, completion: nil)
    }
    
    func pinchedView(){
        let pinchedAlert = UIAlertController(title: "Pinched", message: "You just pinched the pinch view", preferredStyle: UIAlertControllerStyle.alert)
        pinchedAlert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
        self.present(pinchedAlert, animated: true, completion: nil)
    }
    
    func pannedView(){
        let pannedAlert = UIAlertController(title: "Panned", message: "You just long panned the panned view", preferredStyle: UIAlertControllerStyle.alert)
        pannedAlert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
        self.present(pannedAlert, animated: true, completion: nil)
    }
}

