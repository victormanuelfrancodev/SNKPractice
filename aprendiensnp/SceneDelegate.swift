//
//  SceneDelegate.swift
//  aprendiensnp
//
//  Created by Victor Manuel Lagunas on 2024/03/19.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        let vc = SNPLearningVC()
        window.rootViewController = vc
        self.window = window
        window.makeKeyAndVisible()
    }

   
}

