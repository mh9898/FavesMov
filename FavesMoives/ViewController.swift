//
//  ViewController.swift
//  FavesMoives
//
//  Created by MiciH on 5/17/16.
//  Copyright © 2016 MichaelH. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
     var movies = [Moive]()
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        fetchAndSetResults()
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //go to the database and request results and set it in the array
    func fetchAndSetResults(){
        //grap the data for the context in the app delegate
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let context = app.managedObjectContext
        
        //request the data
        let request = NSFetchRequest(entityName: "Moive")
        
        do{
            let results = try context.executeFetchRequest(request)
            self.movies = results as! [Moive]
        } catch let err as NSError{
            print(err.debugDescription)
        }
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell =  tableView.dequeueReusableCellWithIdentifier("MoiveCell") as? MoiveCell{
            
            let moive = movies[indexPath.row]
            cell.confgCell(moive)
            return cell
            }
        
        else{
            return MoiveCell()
        }

            
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "DetailsVC"{
         
            //where the segue is going
            let destinationController = segue.destinationViewController as! DetailMoiveVC
            
            //which cell was selectd
            let indexPath = tableView.indexPathForSelectedRow
            //what is the moive in that cell
            let theMoive = movies[indexPath!.row]
            
            //pass the moive coredata object
            destinationController.moive = theMoive
            
            let movieDetailTitle = theMoive.title
            
            destinationController.movDetTitle = movieDetailTitle
//            dest.descDetailMoive.text = theMoive.desc
//            dest.imageDetailMoive.image = theMoive.getMoiveImage()
            
          
        }
    }

    
   

}
