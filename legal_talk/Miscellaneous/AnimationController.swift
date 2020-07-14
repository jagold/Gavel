//
//  AnimationController.swift
//  legal_talk
//
//  Created by Jack on 6/19/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit
import Lottie

class AnimationController: UIViewController {
    
    
    //The view
    @IBOutlet weak var animationView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        //Check is the checkmark animation
        let check = Animation.named("23232-check-mark")
        //Set the view animation to the checkmark
        animationView.animation = check
        
        //Play it immediately and unwind to main menu when done
        animationView.play(){finished in
            self.performSegue(withIdentifier: "unwindToMedMenu", sender: nil)
        }
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
            case "unwindToMedMenu":
                guard let medMenu = segue.destination as? ClientMedMenu else{
                    fatalError("Unexpected destination")
                }

                
            default:
                fatalError("NO hits on segue")
            }
    }
    
    
    @IBAction func unwindToCheckmark(sender: UIStoryboardSegue){
        
    }

}
