//
//  ViewController.swift
//  Hairiest
//
//  Created by Lobsang Tashi on 7/16/17.
//  Copyright © 2017 Lobsang Tashi. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {
    
    
    var handle = AuthstateDidChangeListenerHandle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        handle = Auth.auth().addStateDidChangeListener {(auth,user)}
    }

}

