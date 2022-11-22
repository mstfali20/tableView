//
//  ViewController2.swift
//  tableView
//
//  Created by Mustafa Ali KILCI on 22.11.2022.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var imagevievname: UIImageView!
    @IBOutlet weak var labelnametext: UILabel!
    
    
    var selectanimalName = ""
    var selctanimalİmage = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        labelnametext.text = selectanimalName
        imagevievname.image = selctanimalİmage

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
