//
//  ViewController.swift
//  DemoWebKit
//
//  Created by Nguyen Minh Tam on 11/28/17.
//  Copyright © 2017 Nguyen Minh Tam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlet
    @IBOutlet var txtURL: UITextField!
    @IBOutlet var webView: UIWebView!
    
    // Action
    @IBAction func Duyet(_ sender: Any) {
        duyetWeb()
    }
    @IBAction func back(_ sender: Any) {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    @IBAction func refesh(_ sender: Any) {
        webView.reload()
    }
    @IBAction func forward(_ sender: Any) {
        if webView.canGoForward {
            webView.goForward()
        }
    }
    @IBAction func txtURLEDE(_ sender: Any) {
        duyetWeb()
    }
    
    func duyetWeb(){
        if let uRL = URL(string: txtURL.text!) {
            webView.loadRequest(URLRequest(url: uRL))
            if !webView.isLoading {
                webView.loadRequest(URLRequest(url: URL(string: "https://www.google.com.vn")!))
            }
        } else {
            webView.loadRequest(URLRequest(url: URL(string: "https://www.google.com.vn")!))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        webView.loadRequest(URLRequest(url: URL(string: "http://www.cit.ctu.edu.vn")!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
