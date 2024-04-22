//
//  DeLoreanInteractor.swift
//  DeLoreanDemo
//
//  Created by Javier Cervantes on 09/04/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//
//  You can apply clean architecture to your iOS and Mac projects,
//

import Foundation

class DeLoreanInteractor: DeLoreanInteractorProtocol {
    var presenter: DeLoreanPresenterProtocol!
    var data: DeLoreanModels.DeLoreanView?

    func getDeLoreanData() {
        let jsonData = """
        {
            "container_view" : {
                "cornerRadius": 28,
                "color": "grey100"
            },
            "header" : {
                "labelType": "System",
                "color": "primary700",
                "font": "H1Bold",
                "title": "Hello, World! Vane"
            },
            "primary_button" : {
                "title": "Continuar",
                "size": "large",
                "deeplink": "stori://pagarmistori",
                "event": "",
                "eventType": "tokenEvent"
            },
            "secondary_button" : {
                "title": "secondary button",
                "size": "small",
                "icon": "chevronRight",
                "deeplink": "stori://pagarmistori",
                "event": "",
                "eventType": "tokenEvent"
            },
            "icon_button" : {
                "size": "large",
                "icon": "menuCircles",
                "deeplink": "stori://pagarmistori",
                "event": "",
                "eventType": "tokenEvent"
            },
            "text_input" : {
                "textHelp": "Error",
                "placeHolder": "Correo Electronico",
                "securityTextEntry": true,
                "icon": "chevronRight",
                "regex": "",
                "keyboardType": "tokenEvent"
            }
        }
        """.data(using: .utf8)!

        do {
            let decoder = JSONDecoder()
            data = try decoder.decode(DeLoreanModels.DeLoreanView.self, from: jsonData)
        } catch {
            print("Error decoding JSON: \(error.localizedDescription)")
        }
    }
}

