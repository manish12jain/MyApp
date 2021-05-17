//
//  FirstViewController.swift
//  MyApp
//
//  Created by Manish Jain on 05/05/21.
//

import UIKit
import WebKit

class FirstViewController: UIViewController {

    @IBOutlet var mwebView :WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let appleURL = URL.init(string: "https://developer.apple.com/news/") {
            mwebView?.load(URLRequest.init(url: appleURL))
        }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
