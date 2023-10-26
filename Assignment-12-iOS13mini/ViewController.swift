//
//  ViewController.swift
//  Assignment-12-iOS13mini
//
//  Created by Eka Kelenjeridze on 25.10.23.
//

import UIKit

final class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet private weak var sizeLabelS: UIButton!
    @IBOutlet private weak var sizeLabelM: UIButton!
    @IBOutlet private weak var sizeLabelL: UIButton!
    @IBOutlet private weak var buyNowButton: UIButton!
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buyNowButton.layer.cornerRadius = 16
        
        sizeLabelS.layer.cornerRadius = 12
        sizeLabelM.layer.cornerRadius = 12
        sizeLabelL.layer.cornerRadius = 12
        
        sizeLabelS.layer.borderWidth = 1
        sizeLabelM.layer.borderWidth = 1
        sizeLabelL.layer.borderWidth = 1
        
        sizeLabelS.layer.borderColor = UIColor(red: 0.871, green: 0.871, blue: 0.871, alpha: 1).cgColor
        sizeLabelM.layer.borderColor = UIColor(red: 0.776, green: 0.486, blue: 0.306, alpha: 1).cgColor
        sizeLabelL.layer.borderColor = UIColor(red: 0.871, green: 0.871, blue: 0.871, alpha: 1).cgColor
    }
    
    //MARK: - enum
    private enum AdditionalIngredient {
        case milk
        case chocolate
    }
    
    //MARK: - class
    private struct Coffee {
        let productName: String
        var rating: Double
        var addIngredient: AdditionalIngredient
        
        let description: String
        let size: Character
        var price: Double
    }
    
    //MARK: - object
    private let cappuccino = Coffee(productName: "Cappuccino", rating: 4.8, addIngredient: .milk, description: "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More", size: "M", price: 4.53)
}

