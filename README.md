# YLTimer

[![Swift](https://img.shields.io/badge/Swift-5-orange?logo=Swift&logoColor=white&style=for-the-badge)](https://developer.apple.com/swift/)
[![Platform](https://img.shields.io/badge/platform-iOS%2010%2B-%238D6748.svg?style=for-the-badge)](https://www.apple.com/nl/ios/)
[![Release](https://img.shields.io/cocoapods/v/YLTimer.svg?style=for-the-badge)](https://cocoapods.org/?q=YLTimer)
[![SPM](https://img.shields.io/badge/SPM-✔-4BC51D.svg?style=for-the-badge)](https://swift.org/package-manager)
[![License](https://img.shields.io/badge/license-mit-%23d9ead3.svg?style=for-the-badge)](http://opensource.org/licenses/MIT)

## Installation

### CocoaPods

To integrate YLTimer into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'YLTimer'
end
```

Then, run the following command:

```bash
$ pod install
```

### Swift Package Manager

In Xcode, select `File` > `Add Packages...` > Paste `https://github.com/YuLeiFuYun/YLTimer.git`

## Usage

```swift
import YLTimer

class ViewController: UIViewController {

    var timer: GCDTimer?
    var cdTimer: CountDownTimer?

    override func viewDidLoad() {
        super.viewDidLoad()

        gcdTimer()
//        countdownTimer()
    }

    func countdownTimer() {
        cdTimer = CountDownTimer(duration: 8, handler: { remainingTime in
            NSLog("remainingTime: \(remainingTime)")
        }, completion: {
            NSLog("completion")
        })
        cdTimer?.fire()

//        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
//            self.cdTimer?.skip(shouldPerformCompletion: true)
//        }
    }

    func gcdTimer() {
        NSLog("start")
        timer = GCDTimer(startImmediately: false, times: 6, handler: { timer in
            NSLog("handle events")
        })
        timer?.resume()

//        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//            self.timer?.suspend()
//        }
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + 7) {
//            self.timer?.resume()
//        }
    }
}
```
