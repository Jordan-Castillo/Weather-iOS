//
//  ViewController.swift
//  Lab6
//
//  Created by user128574 on 7/17/17.
//  Copyright © 2017 JTC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var dayData : [Day] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TVCell", for: indexPath) as! TwitterTVCell
        
        let thisTweet = ourTweets[indexPath.row]
        cell.headerLabel!.text = thisTweet.sender
        cell.bodyLabel!.text = thisTweet.body
        
        return cell
    }


}

