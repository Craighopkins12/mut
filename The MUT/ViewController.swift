//
//  ViewController.swift
//  The MUT
//
//  Created by Michael Levenick on 10/17/16.
//  Copyright © 2016 Levenick Enterprises LLC. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
                preferredContentSize = NSSize(width: 600, height: 400)

        // Do any additional setup after loading the view.
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBOutlet weak var lblTest: NSTextField!


}
