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

    func getAllStudentsName() -> [String] {
        var nomes = [String]()
        let namesPredicate = NSPredicate(format: "Nomes")

        let query = CKQuery(recordType: "Aluno", predicate: namesPredicate)
        dataBase.perform(query, inZoneWith: nil) { (records, error) in
            if let error = error {
                print(error.localizedDescription)
            } else if let records = records {
                for aluno in records {
                    nomes.append(aluno["Nome"] as! String)
                }
                print(nomes)
            }
        }
        return nomes
    }

    func getAllStudentsCourse() -> [String] {
        var cursos = [String]()
        let cursosPredicado = NSPredicate(format: "Curso")

        let query = CKQuery(recordType: "Aluno", predicate: cursosPredicado)

        dataBase.perform(query, inZoneWith: nil) { (records, error) in
            if let error = error {
                print(error.localizedDescription)
            } else if let records = records {
                for aluno in records {
                    cursos.append(aluno["Curso"] as! String)
                }
            }
        }
         return cursos
    }

    func getAllStudentsTIAs() -> [String] {
        var tias = [String]()
        let tiasPredicado = NSPredicate(format: "TIA")

        let query = CKQuery(recordType: "Aluno", predicate: tiasPredicado)

        dataBase.perform(query, inZoneWith: nil) { (records, error) in
            if let error = error {
                print(error.localizedDescription)
            } else if let records = records {
                for aluno in records {
                    tias.append(aluno["Curso"] as! String)
                }
            }
        }
        return tias
    }
}
