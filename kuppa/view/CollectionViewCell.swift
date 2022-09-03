//
//  CollectionViewCell.swift
//  kuppa
//
//  Created by Deepak Singh Shekhawat on 29/08/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var descriptionlbl: UILabel!
    @IBOutlet var titellbl: UILabel!
    @IBOutlet var slideimage: UIImageView!
    
    override  func awakeFromNib() {
        
        slideimage.layer.cornerRadius = slideimage.frame.size.width/2
        
        
    }
    func setup(_ slide: OnboardingSlide)
    {
        slideimage.image = UIImage(named: slide.restoimage ?? "")
        titellbl.text = slide.title
        descriptionlbl.text = slide.decripation
        
    }
}
