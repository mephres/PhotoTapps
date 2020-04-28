//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by INTAS Company on 27/04/2020.
//  Copyright © 2020 INTAS Company. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    public var image: UIImage?
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.photoImageView.image = image
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
    
    @IBAction func shareAction(_ sender: UIButton) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        present(shareController, animated: true, completion: nil)
        shareController.completionWithItemsHandler = {_, bool,_,_ in
            if bool {
                print("OK")
            }
        }
    }
    
}
