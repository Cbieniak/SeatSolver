//
//  CSVImporter.swift
//  Seat Solver
//  Takes a CSV file and extracts the data into a JSON format.
//
//  Created by Christian Bieniak on 15/7/18.
//  Copyright © 2018 Christian Bieniak. All rights reserved.
//

import Foundation

struct CSVImporter {
    static func urlForCSVFile(named filename: String, bundle: Bundle) -> URL? {
        return bundle.url(forResource: filename, withExtension: "csv")
    }
    
//    static func extractData(from fileName: String, bundle: Bundle) -> Data {
//
//    }
}
