//
//  Storyboardable.swift
//  DiagnosticApp
//
//  Created by Kevin Torres on 13-05-21.
//

import UIKit

// MARK: - Storyboardable
protocol Storyboardable: AnyObject {
    static var defaultStoryboardName: String { get }
}

extension Storyboardable where Self: UIViewController {
    static var defaultStoryboardName: String {
        let selfName = String(describing: self)
        return selfName.replacingOccurrences(of: "ViewController", with: "")
    }

    static func storyboardViewController(bundle: Bundle? = nil) -> Self {
        let storyboard = UIStoryboard(name: defaultStoryboardName, bundle: bundle)

        guard let vc = storyboard.instantiateInitialViewController() as? Self else {
            fatalError("Could not instantiate initial storyboard with name: \(defaultStoryboardName)")
        }

        return vc
    }
}

extension UIViewController: Storyboardable { }
