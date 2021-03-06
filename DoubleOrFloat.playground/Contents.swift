//: Playground - noun: a place where people can play
import Foundation

let doubleNum: Double = Double(5.02) * Double(100.0) // 501.9999999999999
let floatNum: Float = Float(5.02) * Float(100.0) // 502

NSDecimalNumber(value: doubleNum) // 501.9999999999998
NSDecimalNumber(value: floatNum) // 502
String(doubleNum) // 502.0
String(floatNum) // 502.0
NSDecimalNumber(string: String(doubleNum)) // 502
NSDecimalNumber(string: String(floatNum)) //502
