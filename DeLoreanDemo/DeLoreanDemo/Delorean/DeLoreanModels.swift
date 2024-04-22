//
//  DeLoreanModels.swift
//  DeLoreanDemo
//
//  Created by Javier Cervantes on 09/04/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//
//  You can apply clean architecture to your iOS and Mac projects,
//

import UIKit

struct DeLoreanModels: Codable {
    
    struct Request: Codable {}
    
    struct Response: Codable {}
    
    struct DeLoreanView: Codable {
        
        private enum CodingKeys : String, CodingKey {
            case dataLabel = "header"
            case dataPrimaryButton = "primary_button"
            case dataSecondaryButton = "secondary_button"
            case dataIconButton = "icon_button"
            case dataTextInput = "text_input"
            case dataContainerView = "container_view"
        }
        
        var dataLabel: DeLoreanLabelModel?
        var dataPrimaryButton: DeLoreanPrimaryButtonModel?
        var dataSecondaryButton: DeLoreanSecondaryButtonModel?
        var dataIconButton: DeLoreanIconButtonModel?
        var dataTextInput: DeLoreanTextInputModel?
        var dataContainerView: DeLoreanContainerViewModel?
    }
}

