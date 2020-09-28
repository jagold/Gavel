//
//  FilterTreatmentController.swift
//  legal_talk
//
//  Created by Jack on 7/22/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit
import Foundation

class FilterTreatmentController: UIViewController {

    private let popUpWindowView = FilterWindowView()
    var parentController = ClientsHistory()
    init() {
        super.init(nibName: nil, bundle: nil)
        modalTransitionStyle = .crossDissolve
        modalPresentationStyle = .overFullScreen
        
        popUpWindowView.filterByTreatment.addTarget(self, action: #selector(dismissView), for: .touchUpInside)
        
        view = popUpWindowView
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func dismissView(){
        
        parentController.tableView.reloadData()
        self.dismiss(animated: true, completion: nil)
    }


}


private class FilterWindowView: UIView {
    
    let popupView = UIView(frame: CGRect.zero)
    let popupTitle = UILabel(frame: CGRect.zero)
    
    let filterByTreatment = UIButton(frame: CGRect.zero)
    let filterByDoctor = UIButton(frame: CGRect.zero)
    let filterByProvider = UIButton(frame: CGRect.zero)
    let filterByDate = UIButton(frame: CGRect.zero)
    
    let BorderWidth: CGFloat = 2.0
    
    
    init() {
        super.init(frame: CGRect.zero)
        
        // Semi-transparent background
        backgroundColor = UIColor.black.withAlphaComponent(0.3)
        
        
        
        //Popup Background
        popupView.backgroundColor = UIColor.white
        popupView.layer.borderWidth = BorderWidth
        popupView.layer.masksToBounds = true
        popupView.layer.borderColor = UIColor.white.cgColor
        popupView.layer.cornerRadius = 11
        
        // Popup Title
        popupTitle.textColor = UIColor.black
        popupTitle.backgroundColor = UIColor.white
        popupTitle.layer.masksToBounds = true
        popupTitle.adjustsFontSizeToFitWidth = true
        popupTitle.clipsToBounds = true
        popupTitle.font = UIFont.systemFont(ofSize: 23.0, weight: .bold)
        popupTitle.numberOfLines = 1
        popupTitle.textAlignment = .center
        popupTitle.text = "Filter the Treatments"
        
        /*
         Pop up Buttons
         */
        
        filterByTreatment.setTitleColor(UIColor.black, for: .normal)
        filterByTreatment.titleLabel?.font = UIFont.systemFont(ofSize: 23.0, weight: .bold)
        filterByTreatment.backgroundColor = UIColor.white
        filterByTreatment.setTitle("Filter By Treatment", for: .normal)
        
        popupView.addSubview(popupTitle)
        popupView.addSubview(filterByTreatment)
        
        addSubview(popupView)
        
        //PopupView constraints
        popupView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([popupView.widthAnchor.constraint(equalToConstant: 293),
                                     popupView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                                     popupView.centerXAnchor.constraint(equalTo: self.centerXAnchor)])
        
        // PopupTitle constraints
        popupTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            popupTitle.leadingAnchor.constraint(equalTo: popupView.leadingAnchor, constant: BorderWidth),
            popupTitle.trailingAnchor.constraint(equalTo: popupView.trailingAnchor, constant: -BorderWidth),
            popupTitle.topAnchor.constraint(equalTo: popupView.topAnchor, constant: BorderWidth),
            popupTitle.heightAnchor.constraint(equalToConstant: 55)
            ])
        
        //Popup Button constraints
        
        filterByTreatment.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([filterByTreatment.heightAnchor.constraint(equalToConstant: 44),filterByTreatment.leadingAnchor.constraint(equalTo: popupView.leadingAnchor),filterByTreatment.trailingAnchor.constraint(equalTo: popupView.trailingAnchor),filterByTreatment.bottomAnchor.constraint(equalTo: popupView.bottomAnchor)])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
}
