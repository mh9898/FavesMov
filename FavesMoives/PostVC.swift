//
//  PostVC.swift
//  FavesMoives
//
//  Created by MiciH on 5/18/16.
//  Copyright © 2016 MichaelH. All rights reserved.
//

import UIKit
import CoreData

class PostVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var postMoiveTitle: UITextField!
    
    @IBOutlet weak var postMoiveDesc: UITextField!
    
    @IBOutlet weak var PostMoiveImgae: UIImageView!
    
    @IBOutlet weak var postMoiveAddImage: UIButton!
    
    var imagePicker : UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
 
    }

    @IBAction func addImageAction(sender: AnyObject) {
        
        postMoiveAddImage.setTitle("", forState: .Normal)
        
       presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        dismissViewControllerAnimated(true, completion: nil)
        PostMoiveImgae.image = image
    }
    
    @IBAction func createPostAction(sender: AnyObject) {
        
        if let moiveTitle = postMoiveTitle.text where postMoiveTitle.text != ""{
            
            //save the data
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            
            let context = app.managedObjectContext
            
            let entity = NSEntityDescription.entityForName("Moive", inManagedObjectContext: context)!
            
            let moive = Moive(entity: entity, insertIntoManagedObjectContext: context)
            
            moive.title = moiveTitle
            moive.desc = postMoiveDesc.text
            moive.setMoiveImage(PostMoiveImgae.image!)
            
            context.insertObject(moive)
            
            do{
                try context.save()
            }catch {
                print("not saved")
            }
            self.navigationController?.popViewControllerAnimated(true)
            
        }
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
}
