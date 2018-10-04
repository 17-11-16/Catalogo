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
    @IBOutlet weak var botonCarrito: UIButton!
    
        var tenis = [producto]()
        var comprado = [producto]()
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        tenis.append(producto(marca: "Nike", precio: 1850, size: "No. 23, color negro", ImagenA: UIImage(named: "Nike")!, cantidad: 0))
        tenis.append(producto(marca: "Adidas", precio: 1099, size: "No. 24, color negro", ImagenA: UIImage(named: "Adidas")!, cantidad: 0))
        tenis.append(producto(marca: "Vans", precio: 1200, size: "No. 27, color gris", ImagenA: UIImage(named: "Vans")!, cantidad: 0))
        tenis.append(producto(marca: "DC", precio: 950, size: "No. 25, color gris", ImagenA: UIImage(named: "DC")!, cantidad: 0))
        tenis.append(producto(marca: "Pirma", precio: 899, size: "No. 26.5, color rojo", ImagenA: UIImage(named: "Pirma")!, cantidad: 0))
        tenis.append(producto(marca: "Puma", precio: 1399, size: "No. 21, color blanco", ImagenA: UIImage(named: "Puma")!, cantidad: 0))
        tenis.append(producto(marca: "Converse", precio: 700, size: "No. 28, color gris", ImagenA: UIImage(named: "Converse")!, cantidad: 0))
        tenis.append(producto(marca: "Charly", precio: 420, size: "No. 25.5, color negro", ImagenA: UIImage(named: "Charly")!, cantidad: 0))
        tenis.append(producto(marca: "Reebok", precio: 899, size: "No. 29, color rojo", ImagenA: UIImage(named: "Reebok")!, cantidad: 0))
        tenis.append(producto(marca: "Skechers", precio: 399, size: "No. 20, color negro", ImagenA: UIImage(named: "Skechers")!, cantidad: 0))
 
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tenis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        cell.textLabel?.text = "\(tenis[indexPath.row].marca)"
        return cell
    }

    
    
    @IBAction func unwindSecondView(segue: UIStoryboardSegue)
    {
        if let origin = segue.source as? secondViewController
        {
            let data = origin.deFirstView
            comprado.append(data!)
            print(comprado)
            self.tabla.reloadData()
        }
    }
    @IBAction func unwinNewView(segue: UIStoryboardSegue)
    {
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "siguiente"
        {
            let indexPath = tabla.indexPathForSelectedRow
            let destination = segue.destination as! secondViewController
            
            destination.deFirstView = tenis[(indexPath?.row)!]
        }
        if segue.identifier == "carrito"
        {
            let destino = segue.destination as! carritoViewController
            destino.productos = comprado
            print(destino.productos)
        }
        
        
    }
    
    

    
}
