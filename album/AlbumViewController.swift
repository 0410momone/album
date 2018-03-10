//
//  AlbumViewController.swift
//  album
//
//  Created by ももね on 2018/01/13.
//  Copyright © 2018年 ももね. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController, UIScrollViewDelegate {
    
    var imageArray: [UIImage] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let viewWidth = self.view.bounds.width
        let viewHeight = self.view.bounds.height
        
        let imageWidth = viewWidth/2
        let imageHeight = imageWidth
        
        imageArray = [UIImage(named:"img1.jpg")!,UIImage(named:"img2.jpg")!,UIImage(named:"img3.jpg")!, UIImage(named:"img1.jpg")!]

        let scrollView = UIScrollView()
        scrollView.backgroundColor = UIColor.white
        
        //表示窓のサイズと位置を指定
        scrollView.frame.size = CGSize(width: viewWidth, height: viewHeight)
        scrollView.center = self.view.center
        
        //中身の大きさを設定
        scrollView.contentSize = CGSize(width: viewWidth, height: 1000)
        
        //スクロールの跳ね返り
        scrollView.bounces = false
        
        // スクロールバーの見た目と余白
        scrollView.indicatorStyle = .white
        scrollView.scrollIndicatorInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        //Delegate を設定
        scrollView.delegate = self
        
        //ScrollViewの中身を作る
        for i in 0 ..< imageArray.count/2+1 {
            
            
            for j in 0 ..< 2 {
                // 画像数が偶数のときのbreak
                if imageArray.count == 2*i {
                    break
                }
                
                // 画像を表示する処理
                let imageView = UIImageView(frame: CGRect(x: 0,y: 0,width: imageWidth,height: imageHeight))
                imageView.image = imageArray[2*i+j]
                imageView.contentMode = UIViewContentMode.scaleAspectFit
                var x = 0.0
                if j == 0 {
                    x = Double(imageWidth/2)
                }
                else if j == 1 {
                    x = Double(imageWidth/2*3)
                }
                let y = Double(imageHeight/2) + Double(imageHeight) * Double(i)
                imageView.layer.position = CGPoint(x: x,y: y)
            
                scrollView.addSubview(imageView)
                
                // 画像数が奇数のときのbreak
                if imageArray.count == 2*i+j+1 {
                    break
                }
            }
            
        }
        
        self.view.addSubview(scrollView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /* 以下は UITextFieldDelegate のメソッド */
    func scrollViewDidscroll(_ scrollView: UIScrollView) {
        // スクロール中の処理
        print("didScroll")
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        //ドラッグ開始時の処理
        print("biginDragging")
    }
    
}


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

