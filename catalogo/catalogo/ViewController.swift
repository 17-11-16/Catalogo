//
//  ViewController.swift
//  catalogo
//
//  Created by Daniel on 26/09/18.
//  Copyright © 2018 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    @IBOutlet weak var tabla: UITableView!
    
        var tenis = [producto]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tenis.append(producto(marca: "Nike", precio: "$ \(1850)", descripcion: "Comodos"))
        tenis.append(producto(marca: "Adidas", precio: "$ \(1099)", descripcion: "Comodos"))
        tenis.append(producto(marca: "Vans", precio: "$ \(1200)", descripcion: "Comodos"))
        tenis.append(producto(marca: "DC", precio: "$ \(950)", descripcion: "Comodos"))
        tenis.append(producto(marca: "Pirma", precio: "$ \(899)", descripcion: "Comodos"))
        tenis.append(producto(marca: "Puma", precio: "$ \(1399)", descripcion: "Comodos"))
        tenis.append(producto(marca: "Converse", precio: "$ \(700)", descripcion: "Comodos"))
        tenis.append(producto(marca: "Charly", precio: "$ \(420)$", descripcion: "Comodos"))
        tenis.append(producto(marca: "Reebok", precio: "$ \(899)$", descripcion: "Comodos"))
        tenis.append(producto(marca: "Skechers", precio: "$ \(399)$", descripcion: "Comodos"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tenis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        cell.textLabel?.text = "\(tenis[indexPath.row].marca) - \(tenis[indexPath.row].precio)"
        return cell
    }
    
    @IBAction func unwindSecondView(segue: UIStoryboardSegue){
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "siguiente"{
            
            let indexPath = tabla.indexPathForSelectedRow
            let destination = segue.destination as! secondViewController
            
            destination.deFirstView = tenis[(indexPath?.row)!]
        }
    }
}

