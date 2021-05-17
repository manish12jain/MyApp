//
//  DetailViewController.swift
//  MyApp
//
//  Created by Manish Jain on 05/05/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var mTextView: UITextView?
    var questionAnswer : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = false
     self.mTextView?.text = questionAnswer ?? ""
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
