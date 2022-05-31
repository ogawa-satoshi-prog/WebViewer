//
//  ViewController.swift
//  WebViewer
//
//  Created by 小川慧 on 2022/06/01.
//

import UIKit
import WebKit

class ViewController: UIViewController,UITabBarDelegate {
    @IBOutlet weak var webviewer: WKWebView!
    @IBOutlet weak var tabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let url = URL(string: "ランディングページのURL")
//        let request = URLRequest(url: url!)
//        webviewer.load(request)
        self.tabBar.delegate = self
    }
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 0:
            let url = URL(string: "https://google.com")
            let request = URLRequest(url: url!)
            webviewer.load(request)
        case 1:
            let url = URL(string: "https://yahoo.co.jp")
            let request = URLRequest(url: url!)
            webviewer.load(request)
        case 2:
            let url = URL(string: "https://amazon.co.jp")
            let request = URLRequest(url: url!)
            webviewer.load(request)
        default: return
        }
    }
    
}

