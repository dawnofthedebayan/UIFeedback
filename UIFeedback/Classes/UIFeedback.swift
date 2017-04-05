//
//  UIFeedback.swift
//  Pods
//
//  Created by Debayan Bhattacharya on 05/04/17.
//
//

import Foundation
import UIKit

public class UIFeedback : UIView {
    
    fileprivate static var heightOfFeedbackView : CGFloat = 75
    
    
    fileprivate static func showView(view : UIView) {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 5.0, options: .curveEaseIn, animations: {
            
            let viewFrame = CGRect(x : 0 , y : 0, width : UIScreen.main.bounds.width, height : heightOfFeedbackView)
            view.frame = viewFrame
            
        }, completion: {(success) in
            
            if success {
                self.delay(delay: 3, closure: {
                    
                    self.removeView(view: view)
                    
                })
                
            }
            
        })
    }
    
    fileprivate static func removeView(view : UIView) {
        UIView.animate(withDuration: 0.5, animations: {
            
            let viewFrame = CGRect(x : 0 , y : -self.heightOfFeedbackView, width : UIScreen.main.bounds.width, height : self.heightOfFeedbackView)
            view.frame = viewFrame
        }) { (success) in
            if success {
                view.removeFromSuperview()
            }
        }
        
    }
    
    //Remove
    @objc fileprivate static func removeViewWithTap(gestureRecognizer : UIGestureRecognizer) {
        removeView(view: gestureRecognizer.view ?? UIView())
    }
    
    fileprivate static func delay(delay:Double, closure:@escaping ()->()) {
        
        DispatchQueue.main.asyncAfter(
            deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: closure)
    }
}

//API functions 
extension UIFeedback {
    
    public  class func showFeedback(message : String, textColor : UIColor, backgroundColor : UIColor, applyShadow : Bool = false) {
        
        let view = UIView()
        view.backgroundColor = backgroundColor
        
        let viewFrame = CGRect(x : 0 , y : -heightOfFeedbackView, width : UIScreen.main.bounds.width, height : heightOfFeedbackView)
        view.frame = viewFrame
        
        
        let label = UILabel()
        label.text = message
        label.textColor = textColor
        label.font = UIFont(name : "HelveticaNeue-Light",size : 15.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        
        view.addSubview(label)
        
        let viewDictionary = ["view": view, "label": label]
        let horizontalConstraint = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[label]-0-|", options: NSLayoutFormatOptions(rawValue : 0), metrics: nil, views: viewDictionary)
        let verticalConstraint = NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[label]-0-|", options: NSLayoutFormatOptions(rawValue : 0), metrics: nil, views: viewDictionary)
        view.addConstraints(horizontalConstraint)
        view.addConstraints(verticalConstraint)
        
        UIApplication.shared.keyWindow?.addSubview(view)
        
        if applyShadow {
            view.layer.shadowOffset = CGSize.zero
            view.layer.shadowColor = UIColor.black.cgColor
            view.layer.shadowRadius = 3
            view.layer.shadowOpacity = 0.8
        }
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(removeViewWithTap(gestureRecognizer:)))
        view.addGestureRecognizer(tap)
        showView(view: view)
        
    }
    
    public class func showFeedback(message : String,textColor : UIColor, backgroundColor : UIColor , heightOfView : CGFloat = 75, applyShadow : Bool = false) {
        
        let view = UIView()
        
        view.backgroundColor = backgroundColor
        
        heightOfFeedbackView = heightOfView
        
        let viewFrame = CGRect(x : 0 , y : -heightOfView, width : UIScreen.main.bounds.width, height : heightOfView)
        view.frame = viewFrame
        
        
        let label = UILabel()
        label.text = message
        label.textColor = textColor
        label.font = UIFont(name : "HelveticaNeue-Light",size : 15.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        
        view.addSubview(label)
        
        let viewDictionary = ["view": view, "label": label]
        let horizontalConstraint = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[label]-0-|", options: NSLayoutFormatOptions(rawValue : 0), metrics: nil, views: viewDictionary)
        let verticalConstraint = NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[label]-0-|", options: NSLayoutFormatOptions(rawValue : 0), metrics: nil, views: viewDictionary)
        view.addConstraints(horizontalConstraint)
        view.addConstraints(verticalConstraint)
        
        UIApplication.shared.keyWindow?.addSubview(view)
        
        if applyShadow {
            view.layer.shadowOffset = CGSize.zero
            view.layer.shadowColor = UIColor.black.cgColor
            view.layer.shadowRadius = 3
            view.layer.shadowOpacity = 0.8
        }
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(removeViewWithTap(gestureRecognizer:)))
        view.addGestureRecognizer(tap)
        showView(view: view)
        
        
    }
    
    public class func showFeedback(message : String,textColor: UIColor, backgroundColor : UIColor , heightOfView : CGFloat = 75, font: UIFont, applyShadow : Bool = false) {
        
        let view = UIView()
        
        view.backgroundColor = backgroundColor
        
        heightOfFeedbackView = heightOfView
        
        let viewFrame = CGRect(x : 0 , y : -heightOfView, width : UIScreen.main.bounds.width, height : heightOfView)
        view.frame = viewFrame
        
        
        let label = UILabel()
        label.text = message
        label.textColor = textColor
        label.font = font
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        
        view.addSubview(label)
        
        let viewDictionary = ["view": view, "label": label]
        let horizontalConstraint = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[label]-0-|", options: NSLayoutFormatOptions(rawValue : 0), metrics: nil, views: viewDictionary)
        let verticalConstraint = NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[label]-0-|", options: NSLayoutFormatOptions(rawValue : 0), metrics: nil, views: viewDictionary)
        view.addConstraints(horizontalConstraint)
        view.addConstraints(verticalConstraint)
        
        UIApplication.shared.keyWindow?.addSubview(view)
        
        if applyShadow {
            
            view.layer.shadowOffset = CGSize.zero
            view.layer.shadowColor = UIColor.black.cgColor
            view.layer.shadowRadius = 3
            view.layer.shadowOpacity = 0.8
            
        }
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(removeViewWithTap(gestureRecognizer:)))
        view.addGestureRecognizer(tap)
        self.showView(view: view)
        
        
    }
    
    

}
