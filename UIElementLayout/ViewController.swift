//
//  ViewController.swift
//  UIElementLayout
//
//  Created by sindija.dzintare on 21/08/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftButtonUp: UIButton!
    @IBOutlet weak var rightButtonUp: UIButton!
    @IBOutlet weak var leftButtonDown: UIButton!
    @IBOutlet weak var rightButtonDown: UIButton!
    
    @IBOutlet var styleOutloetCollection: [UIButton]!
    
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleUI()
    }
    
    func styleUI(){
        myLabel.layer.borderWidth = 2
        myLabel.layer.borderColor = UIColor.white.cgColor
        
        styleOutloetCollection.forEach { button in
            button.layer.cornerRadius = 10
            button.layer.borderWidth = 2
            button.layer.borderColor = UIColor.white.cgColor
        }
        
    }
    
    func adjustLUButton(with image: String) {
        leftButtonUp.setImage(UIImage(named: image), for: .normal)
        leftButtonUp.backgroundColor = .green
        leftButtonUp.tintColor = .black
        leftButtonUp.imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 15)
        myLabel.text = "Your input is accepted!"
        myLabel.backgroundColor = .green
    }
    
    @IBAction func touchDragOutsideButtonLU(_ sender: Any) {
        print("Left button touched dragged outside")
        adjustLUButton(with: "accepted.png")
        mainImageView.image = UIImage(systemName: "trash.fill")
        mainImageView.tintColor = .green
    }
    
    func adjustRUButton(with image: String) {
        rightButtonUp.setImage(UIImage(named: image), for: .normal)
        rightButtonUp.backgroundColor = .red
        rightButtonUp.tintColor = .black
        rightButtonUp.imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 15)
        myLabel.text = "STOP! Try another button."
        myLabel.backgroundColor = .red
    }
    
    @IBAction func touchDragInsideButtonRU(_ sender: Any) {
        print("Right button touched dragged inside")
        adjustRUButton(with: "stop.png")
        mainImageView.image = UIImage(systemName: "trash.slash")
        mainImageView.tintColor = .red
    }
    
    
    func adjustLDButton(with image: String) {
           leftButtonDown.setImage(UIImage(named: image), for: .normal)
           leftButtonDown.backgroundColor = .blue
           leftButtonDown.tintColor = .black
           leftButtonDown.imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 15)
        myLabel.text = "This won't work! Try again!"
        myLabel.backgroundColor = .blue
       }
    
    @IBAction func touchUpInsideButtonLD(_ sender: Any) {
        print("Left button touched up inside")
        adjustLDButton(with: "back.png")
        mainImageView.image = UIImage(systemName: "arrowshape.turn.up.left.2")
        mainImageView.tintColor = .blue
    }
    
    func adjustRDButton(with image: String) {
        rightButtonDown.setImage(UIImage(named: image), for: .normal)
        rightButtonDown.backgroundColor = .magenta
        rightButtonDown.tintColor = .black
        rightButtonDown.imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 15)
        myLabel.text = "You broke it with your button smashing!"
        myLabel.backgroundColor = .magenta
    }
    
    
    
    @IBAction func touchDownRepeatButton(_ sender: Any) {
        print("Right button touched down repeat")
        adjustRDButton(with: "error.png")
        mainImageView.image = UIImage(systemName: "xmark.seal")
        mainImageView.tintColor = .magenta
    }
    
}
