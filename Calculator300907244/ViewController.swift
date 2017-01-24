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
    var savedNum:Int = 0
    var lastButtonWasMode: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func didPressPlus(_ sender: AnyObject) {
        changeMode(newMode: .addition)
    }
    
    @IBAction func didPressSubstract(_ sender: AnyObject) {
        changeMode(newMode: .substraction)
    }
    
    @IBAction func didPressEqual(_ sender: AnyObject) {
        guard let labelInt:Int  = Int(labelString) else {
            return
        }
        if (currentMode == .not_set || lastButtonWasMode) {
            return
        }
        if (currentMode == .addition) {
            savedNum  += labelInt
        }
        else if(currentMode == .substraction) {
            savedNum -= labelInt
        }
        currentMode = .not_set
        labelString = "\(savedNum)"
        updateText()
        lastButtonWasMode = true
    }
    
    @IBAction func didPressClear(_ sender: AnyObject) {
        labelString = "0"
        currentMode = .not_set
        savedNum = 0
        lastButtonWasMode = false
        label.text = "0"
    }
    
    
    @IBAction func didPressNumber(_ sender: UIButton) {
        let stringValue:String? = sender.titleLabel?.text
        
        if (lastButtonWasMode) {
            lastButtonWasMode = false
            labelString = "0"
        }
        
        labelString = labelString.appending(stringValue!)
        updateText()
    }
    
    func updateText() {
        guard let labelInt:Int  = Int(labelString) else {
        return
        }
        
        if (currentMode == .not_set) {
        savedNum = labelInt
        }
        
        label.text = "\(labelInt)"
    }
    
    func changeMode(newMode:modes) {
        if (savedNum == 0) {
            return
        }
        
        currentMode = newMode
        lastButtonWasMode = true
    }
    
    
    
    
    
    
    
    
}

