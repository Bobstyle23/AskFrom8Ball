//
//  ViewController.swift
//  Magic 8 Ball
//
// 
//

import UIKit

class ViewController: UIViewController {
    
    var advice: String = ""
    
    let languageArray = [#imageLiteral(resourceName: "Swift"), #imageLiteral(resourceName: "JavaScript"), #imageLiteral(resourceName: "Ruby"), #imageLiteral(resourceName: "python"), #imageLiteral(resourceName: "C_C++"), #imageLiteral(resourceName: "Java")]
    
    override func viewDidLoad() {
        imageView.image = languageArray[Int.random(in: 0...5)]
    }
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        imageView.image = languageArray[Int.random(in: 0...5)]
        learnAdvice()
    }
    
    func learnAdvice() {
        if imageView.image == languageArray[0] {
            adviceLabel.text = "Swift"
        }
        else if imageView.image == languageArray[1] {
            adviceLabel.text = "JavaScript"
        }
        else if imageView.image == languageArray[2] {
             adviceLabel.text = "Ruby"
        }
        else if imageView.image == languageArray[3] {
             adviceLabel.text = "Python"
        }
        else if imageView.image == languageArray[4] {
             adviceLabel.text = "C/C++"
        }
        else {
             adviceLabel.text = "Java"
        }
        
    }



}

