//
//  HomeCollectionCell.swift
//  MedicineLog
//
//  Created by 刘春奇 on 2019/3/1.
//  Copyright © 2019 com.nsqk.chunqi.liu. All rights reserved.
//

import UIKit

class HomeCollectionCell: UICollectionViewCell {
    
    var label : UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.label = UILabel.init(frame: self.bounds)
        
        self.label?.font = UIFont.systemFont(ofSize: 30)
        
        
        self.addSubview(label!)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
