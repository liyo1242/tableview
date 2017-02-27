//
//  ViewController.swift
//  tableview
//
//  Created by mmslab on 2017/1/14.
//  Copyright © 2017年 mmslab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var restaurantNames = ["Cafe","Home","teakha","Cafe2","homeBUG","SYM","forfood","restCafe","MYkitchen","Cat","Dog","Panda BBQ","popBBQ","cafe3","cafe4"]

    func tableView(tableView: UITableView,numberOfRowsInSection section:Int) -> Int{
        return restaurantNames.count
    }
        func tableView(tableView:UITableView,cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
            let cellIdentifier = "Cell"
            let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell
            
            cell.textLabel?.text =  restaurantNames[indexPath.row]
            
            return cell
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

