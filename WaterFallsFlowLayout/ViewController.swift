//
//  ViewController.swift
//  WaterFallsFlowLayout
//
//  Created by 刘春奇 on 2019/3/1.
//  Copyright © 2019 com.nsqk.chunqi.liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var collectionView : UICollectionView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = HCFallsFlowLayout.init()
        
        //... 设置UIEdgeinset 行间距 列间距 可以自己定义
        //        layout.interitemSpacing
        //        layout.edgeInset
        //        layout.lineSpacing
        layout.basicSetting()
        //设置几列 默认是2列
        layout.columCount = 3
        
        layout.delegate = self
        
        self.collectionView = UICollectionView.init(frame: self.view.bounds, collectionViewLayout: layout)
        
        
        
        self.collectionView.backgroundColor = UIColor.white
        
        self.collectionView.register(HomeCollectionCell.self, forCellWithReuseIdentifier: "HomeCollectionCell")
        
        self.collectionView.delegate = self
        
        
        self.collectionView.dataSource = self
        
        self.view.addSubview(collectionView)

    }


}


extension ViewController: WaterflowLayoutDelegate{
    func collectionView(_ collectionView: UICollectionView, heightForItemAt indexPath: IndexPath) -> CGFloat {
        return CGFloat.random(in: 100...500)
    }
    
    
}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        
        return 100
    }
    
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionCell", for: indexPath) as! HomeCollectionCell
        
        cell.backgroundColor = UIColor.yellow
        
        cell.label?.text = "\(indexPath.row)"
        cell.label?.textAlignment = .center
        
        cell.label?.frame = cell.bounds
        
        return cell
        
        
        
    }
    
    
    
    
}

