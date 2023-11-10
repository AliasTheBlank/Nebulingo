//
//  Circle.swift
//  Nebulingo
//
//  Created by Aldo Lozano on 2023-11-10.
//

import Foundation
import UIKit

class Circle: UIView {

    // MARK: Properties

    private var circleLayer: CALayer!

    // MARK: Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        // Create a circular layer
        circleLayer = CALayer()
        circleLayer.backgroundColor = UIColor.blue.cgColor
        circleLayer.cornerRadius = bounds.width / 2.0
        layer.addSublayer(circleLayer)
    }

    // MARK: Public Methods

    func configure(with color: UIColor) {
        circleLayer.backgroundColor = color.cgColor
    }

    // MARK: Layout

    override func layoutSubviews() {
        super.layoutSubviews()
        // Update the layer's corner radius to ensure it stays circular
        circleLayer.cornerRadius = bounds.width / 2.0
    }
}

