//
//  ViewController.swift
//  CloudKitTeste
//
//  Created by Luiza Fattori on 01/04/20.
//  Copyright © 2020 Luiza Fattori. All rights reserved.
//

import UIKit
import CloudKit

class ViewController: UIViewController {

    let container = CKContainer.init(identifier: "iCloud.Xuxu")

    override func viewDidLoad() {
        super.viewDidLoad()
//
//        let aluno = CKRecord(recordType: "Aluno")
//
//        aluno.setValue("Luiza", forKey: "Nome")
//        aluno.setValue("Psicologia", forKey: "Curso")
//        aluno.setValue("31827284", forKey: "TIA")
//
        let dataBase = container.publicCloudDatabase
        let predicado = NSPredicate(value: true)

        let query = CKQuery(recordType: "Aluno", predicate: predicado)

        dataBase.perform(query, inZoneWith: nil) { (records, error) in
            if let error = error {
                print(error.localizedDescription)
            } else if let records = records {
                for aluno in records {
                    dataBase.delete(withRecordID: aluno.recordID) { (aluno, error) in
                        if let error = error {
                            print("deu ruim")
                        } else {
                            print("funfô")
                        }
                    }
                }
            }
        }
//
//        dataBase.save(aluno) { (record, error) in
//            if let error = error {
//                print(error.localizedDescription)
//            } else {
//                print("Funfô")
//            }
//        }
        // Do any additional setup after loading the view.
    }


}

