//
//  DescViewController.swift
//  Actors
//
//  Created by Elite- 77 on 27/03/18.
//  Copyright © 2018 Elite- 77. All rights reserved.
//

import UIKit

class DescViewController: UIViewController, UITextViewDelegate {

    
    
    
    @IBOutlet weak var actorImg: UIImageView!
    
    @IBOutlet weak var descTextView: UITextView!
    
    @IBOutlet weak var namelabel: UILabel!
    
    
    
    
    var  actorName = ""
    var  actorImage = UIImage()
    var desc = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actorImg.image = actorImage
        namelabel.text = actorName
        descTextView.text = desc
        descTextView.scrollRangeToVisible(NSMakeRange(0, 0))
    }
    
    
    
    
    @IBAction func actionBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
