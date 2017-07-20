//
//  PortfolioViewController.swift
//  Hairiest
//
//  Created by Lobsang Tashi on 7/16/17.
//  Copyright © 2017 Lobsang Tashi. All rights reserved.
//

import UIKit

class PortfolioViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    @IBOutlet weak var HairDresserImage: UIImageView!
    @IBOutlet weak var HairDresserName: UILabel!
    @IBOutlet weak var hairDresserContact: UILabel!
    @IBOutlet weak var hairDresserReserve: UILabel!

    @IBOutlet weak var ImagesCollectionView: UICollectionView!
    
    var images = ["one","two", "three", "four"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Portfolio"
        
        self.ImagesCollectionView.delegate = self
        self.ImagesCollectionView.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "myImage", for: indexPath) as! IndividualImageCollectionViewCell
        
        cell.ImageView.image = UIImage(named: images[indexPath.row])
        
        return cell
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
