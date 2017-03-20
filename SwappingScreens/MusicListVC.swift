//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Marko Poikkimäki on 2017-03-20.
//  Copyright © 2017 Marko Poikkimäki. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func BackBtnClick(_ sender: Any) {
        dismiss(animated: true, completion: nil )
        
    }
 
    @IBAction func Load3rdBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "PlaySongVC", sender: "Total Eclipse Of The Heart")
        
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let destination = segue.destination as? PlaySongVC {
            
            if let song = sender as? String {
                 destination.selectedSong = song
            }
           
        }
        
    }
   
}
