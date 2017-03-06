//
//  PhotosViewController.swift
//  FotoG
//
//  Created by Harry Ng on 06/03/2017.
//  Copyright © 2017 DevConcept. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var photos = Photo.downloadAllPhotos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        tableView.dataSource = self
        tableView.rowHeight = 250
        
        
        
    }

  

}

extension PhotosViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PhotoCell") as! PhotoTableViewCell
        let photo = self.photos[indexPath.row]
        
        cell.photo = photo
        
        
        return cell
    }
    
}

