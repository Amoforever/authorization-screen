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
        
        //MARK: - firstTextField
        let loginTextField = UITextField()
        loginTextField.textColor = .gray
        loginTextField.textAlignment = .left
        loginTextField.placeholder = "keanureevs01"
        loginTextField.backgroundColor = .white
        loginTextField.layer.cornerRadius = 25
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(loginTextField)
        loginTextField.snp.makeConstraints { make in
            
            make.top.equalTo(label).inset(70)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
        
        let iconImage = UIImage(systemName: "person")?.withTintColor(.lightGray, renderingMode: .alwaysOriginal)
        if let iconImage = iconImage { loginTextField.setLeftIcon(iconImage)}
       
        let markImage = UIImage(systemName: "checkmark.circle.fill")?.withTintColor(.systemGreen, renderingMode: .alwaysOriginal)
        if let markImage = markImage { loginTextField.setRightIcon(markImage)}
        
        //MARK: - secondTextField
        let passwordTextField = UITextField()
        passwordTextField.textColor = .gray
        passwordTextField.textAlignment = .left
        passwordTextField.placeholder = "password"
        passwordTextField.backgroundColor = .white
        passwordTextField.layer.cornerRadius = 25
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints { make in
            
            make.top.equalTo(loginTextField).inset(70)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
        let passwordImage = UIImage(systemName: "lock")?.withTintColor(.lightGray, renderingMode: .alwaysOriginal)
        if let passwordImage = passwordImage{ passwordTextField.setLeftIcon(passwordImage)}
            
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.layer.insertSublayer(gradient, at: 0)
            initialize()
        }
        
        
    }
