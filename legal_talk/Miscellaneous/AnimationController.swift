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
    
    let group = DispatchGroup()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        //Check is the checkmark animation
        let check = Animation.named("23232-check-mark")
        //Set the view animation to the checkmark
        animationView.animation = check
        
        
        //Play it immediately and unwind to main menu when done
        animationView.play(){finished in
            
            self.group.enter()
            UIViewPropertyAnimator(duration: 2, curve: .easeOut, animations:  {
                self.animationView.alpha = 0.0
                self.view.alpha = 0.0
                
                self.group.leave()
                }).startAnimation()

            self.group.notify(queue: .main){
                self.performSegue(withIdentifier: "unwindToMedMenu", sender: nil)
            }
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
            
//            UIView.animate(withDuration: 5){
//                self.animationView.alpha = 0
//            }
            
                UIViewPropertyAnimator(duration: 5, curve: .easeOut, animations:  {
                    self.animationView.alpha = 0.0
                    self.view.alpha = 0.0
                    }).startAnimation()

                
            default:
                fatalError("NO hits on segue")
            }
    }
    
    
    @IBAction func unwindToCheckmark(sender: UIStoryboardSegue){
        
    }

}
