//
//  HomeCollectionViewCell.swift
//  kuppa
//
//  Created by Deepak Singh Shekhawat on 01/09/22.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var pricelbl: UILabel!
    @IBOutlet var Dname: UILabel!
    @IBOutlet var dataImg: UIImageView!
    override func  awakeFromNib()
    {
        
    }
    func addValue(_ value: restoData)
    {
        dataImg.image = UIImage(named: value.dishimg )
        Dname.text =  value.dishName
        pricelbl.text = value.dishValue
    }
}
