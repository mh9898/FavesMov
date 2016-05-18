//
//  DetailMoiveVC.swift
//  FavesMoives
//
//  Created by MiciH on 5/18/16.
//  Copyright © 2016 MichaelH. All rights reserved.
//

import UIKit

class DetailMoiveVC: UIViewController {

    @IBOutlet weak var imageDetailMoive: UIImageView!
    
    @IBOutlet weak var titleDetailMoive: UILabel!
    
    @IBOutlet weak var descDetailMoive: UILabel!
    
    var moive: Moive!
    var movDetTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleDetailMoive.text = movDetTitle

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
