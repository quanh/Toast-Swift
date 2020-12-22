//
//  Toast+Forevery.swift
//  Toast-Swift
//
//  Created by 权海 on 2020/12/21.
//  Copyright © 2020 Charles Scalesse. All rights reserved.
//

import UIKit

let kToastCustomDuration = 1.0
let kToastStatusDuration = 1.3
let kToastWarningDuration = 1.5

extension UIView{
    func defaultToastStyle(){
        ToastManager.shared.style.imageSize = CGSize(width: 40, height: 40)
        ToastManager.shared.style.backgroundColor = UIColor(white: 0, alpha: 0.8)
        ToastManager.shared.style.displayShadow = false
        ToastManager.shared.style.titleColor = .white
        ToastManager.shared.style.messageColor = .white
        ToastManager.shared.style.contentAligment = .centerLeft
    }
    
    func loadingToastStyle(){
        ToastManager.shared.style.activitySize = CGSize(width: 40, height: 80)
        ToastManager.shared.style.backgroundColor = UIColor(white: 0, alpha: 0.8)
        ToastManager.shared.style.displayShadow = false
        ToastManager.shared.style.titleColor = .white
        ToastManager.shared.style.messageColor = .white
        ToastManager.shared.style.contentAligment = .centerLeft
    }
    
    func statusToastStyle(){
        ToastManager.shared.style.imageSize = CGSize(width: 30, height: 30)
        ToastManager.shared.style.backgroundColor = UIColor(white: 1, alpha: 0.9)
        ToastManager.shared.style.displayShadow = true
        ToastManager.shared.style.titleColor = .black
        ToastManager.shared.style.messageColor = .black
        ToastManager.shared.style.contentAligment = .topCenter
    }
    
    func makeSuccessToast(title: String?, message: String?){
        self.statusToastStyle()
        // Make toast with an image
        self.makeToast(message, duration: kToastStatusDuration, position: .center, title: title, image: UIImage(named: "success"))
    }
    func makeFailedToast(title: String?, message: String?){
        self.statusToastStyle()
        // Make toast with an image
        self.makeToast(message, duration: kToastStatusDuration, position: .center, title: title, image: UIImage(named: "toast.png"))
    }
    func makeWarningToast(title: String?, message: String?){
        self.statusToastStyle()
        // Make toast with an image
        self.makeToast(message, duration: kToastStatusDuration, position: .center, title: title, image: UIImage(named: "toast.png"))
    }
    func makeCustomToast(title: String){
        self.defaultToastStyle()
        self.makeToast(title, duration: kToastCustomDuration, position: .center)
    }
    
    func startLoading(){
        self.loadingToastStyle()
        self.makeForeveryToastActivity(.center, "start loading...")
    }
    func endLoading(){
        self.hideToastActivity()
    }
}
