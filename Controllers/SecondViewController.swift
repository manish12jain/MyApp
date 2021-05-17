//
//  SecondViewController.swift
//  MyApp
//
//  Created by Manish Jain on 05/05/21.
//

import UIKit

class SecondViewController: UIViewController {

    //Adding Table View
    @IBOutlet var mTableView: UITableView?
    
    //Create DataSet
    var dataArray: [[String:String]] = [[:]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mTableView?.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.navigationItem.title = "Questions"

        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if let plistPath = Bundle.main.path(forResource: "Data", ofType: "plist") {
            
            do {
                let data = try Data.init(contentsOf: URL(fileURLWithPath:plistPath))
                if  let array = try PropertyListSerialization.propertyList(from: data, options: [], format:nil) as? [[String:String]] {
                    dataArray = array
                    self.mTableView?.reloadData()
                }
            } catch {
                
            }
            
        }
        
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

extension SecondViewController: UITableViewDataSource , UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "cell")
        
        if let question = dataArray[indexPath.row]["Q"] {
            cell.textLabel?.text = "\(question)?"
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        let detailObj = storyboard.instantiateViewController(identifier: "DetailViewController") as? DetailViewController
        detailObj?.questionAnswer = dataArray[indexPath.row]["A"]
        if let detailObj = detailObj {
            self.navigationController?.pushViewController(detailObj, animated: false)
        }
        
        
    }
    
}
