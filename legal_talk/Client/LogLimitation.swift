//
//  LogLimitation.swift
//  legal_talk
//
//  Created by Jack on 6/10/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit


class LogLimitation: UIViewController, UITextViewDelegate {
    
    //MARK: Properties
    @IBOutlet weak var logLimitationText: UITextView!
    @IBOutlet weak var saveButton: UIButton!
    var server_action = server_handler()
    var clickedOnce = false
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logLimitationText.delegate = self
        
        //        self.saveButton.layer.cornerRadius = 5
        //        self.saveButton.layer.borderWidth = 1
        
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "segueToCheckMark":
            guard let animationController = segue.destination as? AnimationController else{
                fatalError("Unexpected destination")
            }
            
            /*
             Insert the limitation
             */
            
            self.server_action.insert_limitation(Limitation: self.logLimitationText.text)
            
            
            
        default:
            fatalError("NO hits on segue")
        }
    }
    
    
    
    //MARK: UITextView
    func textViewDidEndEditing(_ textView: UITextView) {
        self.resignFirstResponder()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if(self.clickedOnce == false){
            textView.text = ""
        }
        self.clickedOnce = true
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
}
