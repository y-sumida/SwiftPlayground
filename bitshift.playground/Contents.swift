import Foundation

var x: UInt32 = 0
[0x01, 0x02, 0x03].forEach {
    x <<= 8
    x |= UInt32($0)
}
print(String(x, radix: 2))
