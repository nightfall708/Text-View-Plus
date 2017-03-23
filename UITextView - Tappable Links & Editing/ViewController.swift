//
//  ViewController.swift
//  UITextView - Tappable Links & Editing
//
//  Created by Tal Shrestha on 23/03/2017.
//  Copyright © 2017 None. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.textView.attributedText = NSAttributedString(string: "http://www.google.com", attributes: [NSLinkAttributeName: NSURL(string:"http://www.google.com")!])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        return true
    }
}

