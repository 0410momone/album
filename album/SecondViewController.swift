//
//  SecondViewController.swift
//  album
//
//  Created by ももね on 2017/11/04.
//  Copyright © 2017年 ももね. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var cameraImageView: UIImageView!
    
    var recieveImage: UIImage!
    
    var albumArray1: [UIImage] = []
    
    var albumArray2: [UIImage] = []
    
    var albumArray3: [UIImage] = []
    
    var albumArray4: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cameraImageView.image = recieveImage
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Button1() {
        albumArray1.append(recieveImage)
        print("成功！")
    }
    
    @IBAction func Button2() {
        albumArray2.append(recieveImage)
    }
    
    @IBAction func Button3() {
        albumArray3.append(recieveImage)
    }
    
    @IBAction func Button4() {
        albumArray4.append(recieveImage)
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
