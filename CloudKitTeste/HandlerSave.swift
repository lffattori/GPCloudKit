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
    let predicate = NSPredicate(value: true)

    func getAllStudentsName() {
        let query = CKQuery(recordType: "Aluno", predicate: predicate)

        dataBase.perform(query, inZoneWith: nil) { (records, error) in
            if let error = error {
                print(error.localizedDescription)
            } else {
                records?.first
            }
        }
    }
}
