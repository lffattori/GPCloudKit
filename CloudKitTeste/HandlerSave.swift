//
//  HandlerSave.swift
//  CloudKitTeste
//
//  Created by Luiza Fattori on 01/04/20.
//  Copyright © 2020 Luiza Fattori. All rights reserved.
//

import UIKit
import CloudKit

class HandlerSave {

    let container = CKContainer.init(identifier: "iCloud.Xuxu")
    lazy var dataBase = container.publicCloudDatabase
    let aluno = CKRecord(recordType: "Aluno")
    let predicado = NSPredicate(value: true)

    func getAllStudentsName(completionHandler: @escaping ([String]) -> Void) {
        var nomes = [String]()

        let query = CKQuery(recordType: "Aluno", predicate: predicado)
        dataBase.perform(query, inZoneWith: nil) { (records, error) in
            if let error = error {
                print(error.localizedDescription)
            } else if let records = records {
                for aluno in records {
                    nomes.append(aluno["Nome"] as! String)
                }
                completionHandler(nomes)
            }
        }
        return
    }

    func getAllStudentsCourse(completionHandler: @escaping ([String]) -> Void){
        var cursos = [String]()
        let query = CKQuery(recordType: "Aluno", predicate: predicado)

        dataBase.perform(query, inZoneWith: nil) { (records, error) in
            if let error = error {
                print(error.localizedDescription)
            } else if let records = records {
                for aluno in records {
                    cursos.append(aluno["Curso"] as! String)
                }
                completionHandler(cursos)
            }
        }
         return
    }

    func getAllStudentsTIAs(completionHandler: @escaping ([String]) -> Void) {
        var tias = [String]()

        let query = CKQuery(recordType: "Aluno", predicate: predicado)

        dataBase.perform(query, inZoneWith: nil) { (records, error) in
            if let error = error {
                print(error.localizedDescription)
            } else if let records = records {
                for aluno in records {
                    tias.append(aluno["TIA"] as! String)
                }
                completionHandler(tias)
            }
        }
        return
    }
}
