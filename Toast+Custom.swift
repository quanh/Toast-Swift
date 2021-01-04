//
//  Toast+Forevery.swift
//  Toast-Swift
//
//  Created by 权海 on 2020/12/21.
//  Copyright © 2020 Charles Scalesse. All rights reserved.
//

import UIKit

fileprivate let kToastCustomDuration = 1.0
fileprivate let kToastStatusDuration = 1.5
fileprivate let kToastWarningDuration = 1.5

extension UIView{
    //MARK: - 样式
    fileprivate func defaultToastStyle(){
        ToastManager.shared.style.imageSize = CGSize(width: 40, height: 40)
        ToastManager.shared.style.backgroundColor = UIColor(white: 0, alpha: 0.8)
        ToastManager.shared.style.displayShadow = false
        ToastManager.shared.style.titleColor = .white
        ToastManager.shared.style.messageColor = .white
        ToastManager.shared.style.contentAligment = .centerLeft
        ToastManager.shared.position = .center
        ToastManager.shared.isQueueEnabled = false
    }
    
    fileprivate func loadingToastStyle(){
        ToastManager.shared.style.activitySize = CGSize(width: 80, height: 80)
        ToastManager.shared.style.backgroundColor = UIColor(white: 0, alpha: 0.8)
        ToastManager.shared.style.displayShadow = false
        ToastManager.shared.style.titleColor = .white
        ToastManager.shared.style.messageColor = .white
        ToastManager.shared.style.contentAligment = .centerLeft
        ToastManager.shared.position = .center
    }
    
    fileprivate func statusToastStyle(){
        ToastManager.shared.style.imageSize = CGSize(width: 30, height: 30)
        ToastManager.shared.style.backgroundColor = .white
        ToastManager.shared.style.displayShadow = true
        ToastManager.shared.style.titleColor = .black
        ToastManager.shared.style.messageColor = .black
        ToastManager.shared.style.contentAligment = .centerLeft
        ToastManager.shared.position = .center
    }
    //MARK: - TOAST
    /// 成功图片 + 标题 + 内容
    func makeSuccessToast(title: String?, message: String?, duration: TimeInterval = kToastStatusDuration){
        self.statusToastStyle()
        // Make toast with an image
        self.makeToast(message, duration: duration, position: .center, title: title, image: UIImage(named: "toast_success"))
    }
    /// 失败图片 + 标题 + 内容
    func makeFailedToast(title: String?, message: String?, duration: TimeInterval = kToastStatusDuration){
        self.statusToastStyle()
        // Make toast with an image
        self.makeToast(message, duration: duration, position: .center, title: title, image: UIImage(named: "toast_fail"))
    }
    /// 警告图片 + 标题 + 内容
    func makeWarningToast(title: String?, message: String?, duration: TimeInterval = kToastStatusDuration){
        self.statusToastStyle()
        // Make toast with an image
        self.makeToast(message, duration: duration, position: .center, title: title, image: UIImage(named: "toast_warning"))
    }
    /// 标题 + 内容
    func makeCustomToast(title: String?, message: String?, duration: TimeInterval = kToastCustomDuration){
        self.defaultToastStyle()
        self.makeToast(message ,duration: duration, position: .center, title: title)
    }
    //MARK: -   展示自定义视图
    func showToast(toast: UIView,duration: TimeInterval = 1.0, point: CGPoint = .zero){
        self.showToast(toast, duration: duration, point: point)
    }
    func showToast(toast: UIView,duration: TimeInterval = 1.0, position: ToastPosition = .center){
        self.showToast(toast, duration: duration, position: position)
    }
    //MARK: - 自定义图片 + 标题 + 文字
    func makeToastImage(image: UIImage, title: String?, message: String?, position: ToastPosition = .center){
        
    }
    //MARK: - 不会自己中断的loading
    func startLoading(title: String?){
        self.loadingToastStyle()
        self.makeForeveryToastActivity(.center, title)
    }
    func endLoading(){
        self.hideToastActivity()
    }
}
