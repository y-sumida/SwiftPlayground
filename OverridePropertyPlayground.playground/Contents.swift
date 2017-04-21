//: Playground - noun: a place where people can play

import UIKit

class CustomButton: UIButton {
    override var isEnabled: Bool {
        didSet {
            super.isEnabled = isEnabled
            if isEnabled {
                self.alpha = 1.0
            }
            else {
                self.alpha = 0.4
            }
        }
    }
}

let button: UIButton = UIButton()
let customButton: CustomButton = CustomButton()

print(button.isEnabled)
print(button.alpha)
print(customButton.isEnabled)
print(customButton.alpha)


button.isEnabled = !button.isEnabled
customButton.isEnabled = !customButton.isEnabled

print(button.isEnabled)
print(button.alpha)
print(customButton.isEnabled)
print(customButton.alpha)