//
//  onboardingViewController.swift
//  kuppa
//
//  Created by Deepak Singh Shekhawat on 29/08/22.
//

import UIKit

class onboardingViewController: UIViewController {

    @IBOutlet var signbtn: UIButton!
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var continuebtn: UIButton!
    @IBOutlet var collectionView: UICollectionView!
    var Slide: [OnboardingSlide] = []
   
    var currentpage = 0{
        didSet{
            pageControl.currentPage = currentpage
            if currentpage == Slide.count - 1 {
                continuebtn.setTitle("Start", for: .normal)
            }else{
                continuebtn.setTitle("Next", for: .normal)
            }
        }
        
    }
  
    var frame = CGRect.zero
    override func viewDidLoad() {
        super.viewDidLoad()
        continuebtn.layer.cornerRadius = 10
        continuebtn.clipsToBounds = true
        signbtn.layer.cornerRadius = 10
        signbtn.clipsToBounds = true
        collectionView.delegate = self
        collectionView.dataSource = self
        
     
        Slide = [OnboardingSlide(title: "All your favorites foods", decripation: "order your favorite menu with easy  on-demand delivary", restoimage: "pic1"),OnboardingSlide(title: "Get delivery at your doorstep", decripation: "Your ready order will be delivered quickly by our courier", restoimage: "delivary 1")]
        pageControl.numberOfPages = Slide.count
    }
    
    @IBAction func continuebtntapped(_ sender: Any) {
        if currentpage == Slide.count - 1 {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "signupViewController") as! signupViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }else{
        currentpage += 1
        let indexpath = IndexPath(item: currentpage, section: 0)
        collectionView.scrollToItem(at: indexpath, at: .centeredHorizontally, animated: true)
        }
    }
    
    @IBAction func signinbtntapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension onboardingViewController: UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Slide.count
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.setup(Slide[indexPath.row])
      //  cell.titellbl.text = data[indexPath.row]
     // cell.slideimage.image = UIImage(named: restoimg[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
     }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentpage = Int(scrollView.contentOffset.x/width)

    }
     }
    
    

