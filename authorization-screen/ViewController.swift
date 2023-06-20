//
//  ViewController.swift
//  authorization-screen
//
//  Created by Amahastla on 21.06.2023.
//
import SnapKit
import UIKit

class ViewController: UIViewController {
    
// MARK - gradient
    private lazy var gradient: CAGradientLayer = {
            let gradient = CAGradientLayer()
            gradient.frame = view.bounds
            gradient.colors = [UIColor.systemBlue.cgColor, UIColor.white.cgColor]
            gradient.startPoint = CGPoint(x: 0.5, y: 0)
            gradient.endPoint = CGPoint(x: 0.5, y: 1)
            return gradient
        }()
    private func initialize() {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.insertSublayer(gradient, at: 0)
        // Do any additional setup after loading the view.
    }


}

