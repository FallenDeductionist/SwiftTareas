//
//  TareaCompletadaViewController.swift
//  Tareas
//
//  Created by Mario Fernando on 9/04/19.
//  Copyright © 2019 Tecsup. All rights reserved.
//

import UIKit

class TareaCompletadaViewController: UIViewController {

    
    @IBOutlet weak var tareaLabel: UILabel!
    var anteriorVC = ViewController()
    
    var tarea = Tarea()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if tarea.importante {
            tareaLabel.text = "🦆\(tarea.nombre)"
        }
        else{
            tareaLabel.text = tarea.nombre
        }

    }
    
    @IBAction func completarTarea(_ sender: Any){
        anteriorVC.tareas.remove(at: anteriorVC.indexSeleccionado)
    }
    
}
