//
//  ViewController.swift
//  WebViewer
//
//  Created by 小川慧 on 2022/06/01.
//

import UIKit
import WebKit

class ViewController: UIViewController,UITabBarDelegate {
    @IBOutlet weak var webViewer: WKWebView!
    @IBOutlet weak var tabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.delegate = self
    }
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 0:
            let url = URL(string: "https://google.com")
            let request = URLRequest(url: url!)
            webViewer.load(request)
        case 1:
            let url = URL(string: "https://yahoo.co.jp")
            let request = URLRequest(url: url!)
            webViewer.load(request)
        case 2:
            let url = URL(string: "https://amazon.co.jp")
            let request = URLRequest(url: url!)
            webViewer.load(request)
        default: return
        }
    }
    
    @IBAction func backBtn(_ sender: Any) {
        if(webViewer.canGoBack){
            webViewer.goBack()
        }
    }
    
    @IBAction func forwardBtn(_ sender: Any) {
        if(webViewer.canGoForward){
            webViewer.goForward()
        }
    }
}

