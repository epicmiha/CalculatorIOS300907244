//
//  ViewController.swift
//  Calculator300907244
//
//  Created by Mykhailo Obelchak on 2017-01-23.
//  Copyright © 2017 mykhailo.obelchak. All rights reserved.
//

import UIKit

enum modes {
    case not_set
    case addition
    case substraction
}



class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    var labelString: String = "0"
    var currentMode: modes = .not_set
    var savedNum:Int = "0"
    var lastButtonWasMode: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func didPressPlus(_ sender: AnyObject) {
    }
    
    @IBAction func didPressSubstract(_ sender: AnyObject) {
    }
    
    @IBAction func didPressEqual(_ sender: AnyObject) {
    }
    
    @IBAction func didPressClear(_ sender: AnyObject) {
    }
    @IBAction func didPressNumber(_ sender: UIButton) {
    }
    
    func updateText() {
    }
    
    func changeMode(newMode:modes) {
    }
    
    
    
    
    
    
    
    
}

