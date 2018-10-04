//
//  carritoViewController.swift
//  catalogo
//
//  Created by Daniel on 27/09/18.
//  Copyright © 2018 Daniel. All rights reserved.
//

import UIKit

class carritoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   
    @IBOutlet weak var Vacio: UILabel!
    @IBOutlet weak var tablaCompras: UITableView!
    
    @IBOutlet weak var Total: UILabel!
    
    var productos = [producto]()
    var totalPagar : Int = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    if productos.isEmpty
    {
        Vacio.alpha = 1
        Total.text = "Total: $ 0"
    }
    else
    {
        Vacio.alpha = 0
        for i in 0...productos.count-1
        {
            totalPagar += productos[i].precio
        }
        Total.text = "Total: $\(totalPagar)"
        reloadInputViews()
    }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return productos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda2", for: indexPath)
        
        cell.textLabel?.text = "\(productos[indexPath.row].marca)"
        cell.detailTextLabel?.text = "$ \(productos[indexPath.row].precio)"
        return cell
    }

}
