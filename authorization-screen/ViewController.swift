//
//  ViewController.swift
//  authorization-screen
//
//  Created by Amahastla on 21.06.2023.
//
import SnapKit
import UIKit

// MARK: - extension
extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 30, y: 8, width: 15, height: 15))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 80, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}

extension UITextField {
    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 30, y: 8, width: 15, height: 15))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 80, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}


class ViewController: UIViewController {
    
// MARK: - gradient
    private lazy var gradient: CAGradientLayer = {
            let gradient = CAGradientLayer()
            gradient.frame = view.bounds
            gradient.colors = [UIColor.systemBlue.cgColor, UIColor.white.cgColor]
            gradient.startPoint = CGPoint(x: 0.5, y: 0)
            gradient.endPoint = CGPoint(x: 0.5, y: 1)
            return gradient
        }()
    
    private func initialize() {
        
// MARK: - label
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        label.textAlignment = .center
        view.addSubview(label)
        label.snp.makeConstraints { maker in
            maker.left.equalToSuperview().inset(150)
            maker.top.equalToSuperview().inset(150)
            }
        let loginTextField = UITextField()
        loginTextField.
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.insertSublayer(gradient, at: 0)
        initialize()
        
    }


}

