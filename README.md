# UIFeedback

[![CI Status](http://img.shields.io/travis/dawnofthedebayan/UIFeedback.svg?style=flat)](https://travis-ci.org/dawnofthedebayan/UIFeedback)
[![Version](https://img.shields.io/cocoapods/v/UIFeedback.svg?style=flat)](http://cocoapods.org/pods/UIFeedback)
[![License](https://img.shields.io/cocoapods/l/UIFeedback.svg?style=flat)](http://cocoapods.org/pods/UIFeedback)
[![Platform](https://img.shields.io/cocoapods/p/UIFeedback.svg?style=flat)](http://cocoapods.org/pods/UIFeedback)



## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Introduction 
UIFeedback gives an elegant and easy way to enhance user experience through a feedback.
Let your users know when a web request fails or when request succeeds.  

## Requirements
iOS 8.0+
Xcode 8.1+
Swift 3.0+

## Installation

UIFeedback is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "UIFeedback"
```
## Usage 

```
import UIFeedback 

```

Default height of feedback view = ```75```

Apply Shadow to view = ```false```

Default Font = ```HelveticaNeue-Light```

Default Font Size = ```15```


```
UIFeedback.showFeedback(message: "A Hard Rains Gonna Fall", textColor: UIColor.white, backgroundColor: UIColor.red
```

```
UIFeedback.showFeedback(message: "Mr. Tambourine Man", textColor: UIColor.white, backgroundColor: UIColor.red, applyShadow: true)
```
```
UIFeedback.showFeedback(message: "The Times They are a-Changin'", textColor: UIColor.white, backgroundColor: UIColor.red, heightOfView: 64, applyShadow: true)
```

```
UIFeedback.showFeedback(message: "Times Have Changed", textColor: UIColor.red, backgroundColor: UIColor.green, heightOfView : 100, font : UIFont(name: "HelveticaNeue-Bold",size:30)!, applyShadow : true)
```


## Author

dawnofthedebayan, debayanbhattacharyaece@gmail.com

## License

UIFeedback is available under the MIT license. See the LICENSE file for more info.
