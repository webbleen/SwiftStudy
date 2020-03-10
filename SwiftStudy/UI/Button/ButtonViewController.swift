//
//  ButtonViewController.swift
//  SwiftStudy
//
//  Created by WENBIN.LI on 3/10/20.
//  Copyright © 2020 webbleen. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {
    
    static var buttonIndex = 1
    
    override func viewDidLoad() {
        self.view.backgroundColor = .systemGray
        
        createButton(type: UIButton.ButtonType.system)
        createButton(type: UIButton.ButtonType.custom)
        createButton(type: UIButton.ButtonType.contactAdd)
        createButton(type: UIButton.ButtonType.detailDisclosure)
        createButton(type: UIButton.ButtonType.infoLight)
        createButton(type: UIButton.ButtonType.infoDark)
        
        
        createButton(type: UIButton.ButtonType.system)
        createButton(type: UIButton.ButtonType.custom)
        createButton(type: UIButton.ButtonType.custom)
        createButton(type: UIButton.ButtonType.custom)
        createButton(type: UIButton.ButtonType.custom)
        createButton(type: UIButton.ButtonType.custom)
    }
    
    private func createButton(type: UIButton.ButtonType) {
        //创建一个type类型的按钮
        let button: UIButton = UIButton(type: type)
        //设置按钮的位置和大小
        button.frame = CGRect(x: 10, y: ButtonViewController.buttonIndex * 60, width: 200, height: 60)
        
        
        if ButtonViewController.buttonIndex < 7 {
            //设置按钮文字
            button.setTitle("按钮\(ButtonViewController.buttonIndex)", for: .normal)
        }
        
        if ButtonViewController.buttonIndex == 7 {
            //按钮文字的设置
            button.setTitle("普通状态(可点击)", for: .normal)
            button.setTitle("触摸状态", for: .highlighted)
            button.setTitle("禁用状态", for: .disabled)
            
            //按钮触摸点击时间响应
            button.addTarget(self, action: #selector(tappedDown(_:)), for: .touchDown)
            button.addTarget(self, action: #selector(tappedUp), for: .touchUpInside)
        }
        
        if ButtonViewController.buttonIndex == 8 {
            //按钮文字的设置
            button.setTitle("普通状态", for: .normal)
            button.setTitle("触摸状态", for: .highlighted)
            button.setTitle("禁用状态", for: .disabled)
            
            //按钮文字颜色的设置
            button.setTitleColor(.black, for: .normal)
            button.setTitleColor(.green, for: .highlighted)
            button.setTitleColor(.gray, for: .disabled)
        }
        
        
        if ButtonViewController.buttonIndex == 9 {
            //按钮文字的设置
            button.setTitle("普通状态", for: .normal)
            button.setTitle("触摸状态", for: .highlighted)
            button.setTitle("禁用状态", for: .disabled)
            
            //按钮文字阴影颜色的设置
            button.setTitleShadowColor(.green, for: .normal)
            button.setTitleShadowColor(.yellow, for: .highlighted)
            button.setTitleShadowColor(.gray, for: .disabled)
        }
        
        if ButtonViewController.buttonIndex == 10 {
            //按钮文字的设置
            button.setTitle("普通状态", for: .normal)
            
            //按钮文字的字体和大小
            button.titleLabel?.font = .systemFont(ofSize: 24)
            //按钮背景颜色设置
            button.backgroundColor = .orange
        }
        
        if ButtonViewController.buttonIndex == 11 {
            
            button.setTitle("图片按钮", for: .normal)
            //按钮文字图标的设置
            button.setImage(UIImage(named: "favicon"), for: .normal)
            button.adjustsImageWhenHighlighted = false
            button.adjustsImageWhenDisabled = false
        }
        
        if ButtonViewController.buttonIndex == 12 {
            //按钮文字太长的处理方法
            button.setTitle("这是一个很很很很很很很长的文字", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .orange
            //省略尾部文字
            button.titleLabel?.lineBreakMode = .byTruncatingTail
        }
        
        self.view.addSubview(button)
        
        ButtonViewController.buttonIndex += 1
    }
    
    @objc func tappedUp() {
        print("tappedUp")
    }
    
    @objc func tappedDown(_ button: UIButton) {
        print("tappedDown:\(String(describing: button.titleLabel?.text))")
    }
}
