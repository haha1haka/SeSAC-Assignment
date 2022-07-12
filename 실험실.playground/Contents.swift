import UIKit


enum AppleDevice: String {
    case iPhone = "아이폰"
    case iPad = "아이패드"
    case watch
    case mac
    case airPods
}

print(AppleDevice.iPad.rawValue)
