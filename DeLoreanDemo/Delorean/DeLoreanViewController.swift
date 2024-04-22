//
//  DeLoreanViewController.swift
//  DeLoreanDemo
//
//  Created by Javier Cervantes on 09/04/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//
//  You can apply clean architecture to your iOS and Mac projects,
//

import UIKit
import Design_System_iOS

class DeLoreanViewController: UIViewController {
    
    var interactor: DeLoreanInteractorProtocol!
    
    var secondaryButton: DeLoreanSecondaryButton!
    var primaryButton: DeLoreanPrimaryButton!
    var iconButton: DeLoreanIconButton!
    var textInput: DeLoreanTextInput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        interactor.getDeLoreanData()
        
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    private func setupView() {
        guard let containerData = interactor.data?.dataContainerView else { return }
        
        let containerView = DeLoreanContainerView(data: containerData)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(containerView)
        containerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        containerView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 8).isActive = true
        containerView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -8).isActive = true
        
        guard let labelData = interactor.data?.dataLabel else { return }
        let titleLabel = DeLoreanLabel(data: labelData)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 8).isActive = true
        
        guard let primaryButtonData = interactor.data?.dataPrimaryButton else { return }
        primaryButton = DeLoreanPrimaryButton(data: primaryButtonData)
        primaryButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        primaryButton.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(primaryButton)
        primaryButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        primaryButton.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 8).isActive = true
        primaryButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -20).isActive = true
        
        guard let secondaryButtonData = interactor.data?.dataSecondaryButton else { return }
        secondaryButton = DeLoreanSecondaryButton(data: secondaryButtonData)
        secondaryButton.addTarget(self, action: #selector(buttonSPressed), for: .touchUpInside)
        secondaryButton.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(secondaryButton)
        secondaryButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        secondaryButton.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -8).isActive = true
        
        guard let iconButtonData = interactor.data?.dataIconButton else { return }
        iconButton = DeLoreanIconButton(data: iconButtonData)
        iconButton.addTarget(self, action: #selector(buttonIPressed), for: .touchUpInside)
        iconButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(iconButton)
        iconButton.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 20).isActive = true
        iconButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 8).isActive = true
        
        guard let textInputData = interactor.data?.dataTextInput else { return }
        textInput = DeLoreanTextInput(data: textInputData)
        textInput.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textInput)
        textInput.topAnchor.constraint(equalTo: iconButton.bottomAnchor, constant: 20).isActive = true
        textInput.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 8).isActive = true
        textInput.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -8).isActive = true
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        // Cambiar el estado del botón
        secondaryButton.isEnabled = !secondaryButton.isEnabled
    }
    
    @objc func buttonSPressed(_ sender: UIButton) {
        // Cambiar el estado del botón
        iconButton.isEnabled = !iconButton.isEnabled
    }
    
    @objc func buttonIPressed(_ sender: UIButton) {
        // Cambiar el estado del botón
        primaryButton.isEnabled = !primaryButton.isEnabled
    }
    
    
}

extension DeLoreanViewController: DeLoreanViewProtocol {
    
    func viewDisplayData() {
        //logic to update view
    }

    func viewShowError() {
        //logic to show error
    }
}


