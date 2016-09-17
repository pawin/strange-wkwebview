//
//  WebTableViewCell.swift
//  webview
//
//  Created by win on 9/17/16.
//  Copyright © 2016 Pawin Thepbanchaporn. All rights reserved.
//

import UIKit
import WebKit

class WebTableViewCell: UITableViewCell, WKNavigationDelegate {

    let webView = WKWebView()
    
    var tableView: UITableView!
    
    var height: CGFloat = 1200.0
    
    var heightConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        webView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(webView)
        
        webView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        webView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        webView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        webView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure() {
        webView.navigationDelegate = self
        webView.scrollView.isScrollEnabled = false

        let url = URL(string: "https://www.apple.com")!
        let request = URLRequest(url: url)
        webView.load(request)
        
    }
    
    func updateCellHeight() {
        height = webView.scrollView.contentSize.height

        //heightConstraint.isActive = false
        heightConstraint = webView.heightAnchor.constraint(equalToConstant: height)
        heightConstraint.isActive = true
        
        tableView.reloadData()
        
    }
    
    //MARK: - WKWebView
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateCellHeight), userInfo: nil, repeats: false)
    }

    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        //        let js = "var meta = document.createElement('meta');meta.setAttribute('name', 'viewport');meta.setAttribute('content', 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no');document.getElementsByTagName('head')[0].appendChild(meta);"
        //webView.evaluateJavaScript(js, completionHandler: nil)
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        decisionHandler(.allow)
    }
    
}
