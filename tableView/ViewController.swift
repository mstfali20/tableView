//
//  ViewController.swift
//  tableView
//
//  Created by Mustafa Ali KILCI on 22.11.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    
// UITableViewDelegate,UITableViewDataSource  burada tablevievden viev controle protül alıyoruz kalımı bir bakıma vivcontrolle akraıyoruz
    var animalsName = [String]()
    var animalsİmage = [UIImage]()
    
    
    var secilmisname = ""
    var secilmisİmage = UIImage()
    @IBOutlet weak var tableviev: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        tableviev.delegate = self // self ile viewcontrollera komutları vermiş oluyoruz
        tableviev.dataSource = self
        
      
        animalsName.append("Köpek")
        animalsName.append("Kedi")
        animalsName.append("Yılan")
        animalsName.append("Aslan")
        animalsName.append("Kartal")
        animalsName.append("Balık")
        animalsName.append("Zebra")
        animalsName.append("Fare")
        animalsName.append("Kuş")
        animalsName.append("Horoz")
        
        
      
        animalsİmage.append(UIImage(named: "köpek.jpg")!)
        animalsİmage.append(UIImage(named: "kedi.jpg")!)
        animalsİmage.append(UIImage(named: "yılan.jpg")!)
        animalsİmage.append(UIImage(named: "aslan.jpg")!)
        animalsİmage.append(UIImage(named: "kartal.jpg")!)
        animalsİmage.append(UIImage(named: "balık.jpg")!)
        animalsİmage.append(UIImage(named: "zebra.jpg")!)
        animalsİmage.append(UIImage(named: "fare.jpg")!)
        animalsİmage.append(UIImage(named: "kus.jpg")!)
        animalsİmage.append(UIImage(named: "horoz.jpg")!)
    }
//--num -> bu  UITableViewDelegate
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalsName.count
    }
    
    //cell ->UITableViewDataSource bu fonksiyonları tableviev protokkelerını calıstırmak icin eklemek zorundayız
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = animalsName[indexPath.row]
        //content.secondaryText = "Test"
        // content.text = "Başlık"
        // content. diyip istediğimiz iceriği cağıramiliriz image vs.
        cell.contentConfiguration = content
        return cell
        // ne gösterecek cell(hücre) hücrelerde ne  verisi olcak
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilmisname = animalsName[indexPath.row]
        secilmisİmage = animalsİmage[indexPath.row]
            performSegue(withIdentifier: "twoVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "twoVC" {
            let destinationVC = segue.destination as! ViewController2
            destinationVC.selectanimalName = secilmisname
            destinationVC.selctanimalİmage = secilmisİmage
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            self.animalsName.remove(at: indexPath.row)
            self.animalsİmage.remove(at: indexPath.row)
            tableviev.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

