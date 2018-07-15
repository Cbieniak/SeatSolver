//
//  CSVImporter.swift
//  Seat Solver
//  Takes a CSV file and extracts the data into a JSON format.
//
//  Created by Christian Bieniak on 15/7/18.
//  Copyright © 2018 Christian Bieniak. All rights reserved.
//

import Foundation

enum CSVImporterError: Error {
    case fileNotFound
    case invalidFormat
}

struct CSVImporter {
    
    static let csvExtension = "csv"
    
    static func extractData(from fileName: String, bundle: Bundle) throws -> [[String]] {
        let url = try urlForCSVFile(named: fileName, bundle: bundle)
        let data = try Data(contentsOf: url)
        return try stringsFromData(data: data)
    }
    
    static func urlForCSVFile(named filename: String, bundle: Bundle) throws -> URL {
        if let result = bundle.url(forResource: filename, withExtension: csvExtension) {
            return result
        } else {
            throw CSVImporterError.fileNotFound
        }
    }
    
    static func stringsFromData(data: Data) throws -> [[String]] {
        guard let stringData = String(data: data, encoding: .utf8) else { throw CSVImporterError.invalidFormat }
        let outerArrays: [String] = stringData.split(separator: "\r\n").map { String($0) }
        return outerArrays.map { $0.split(separator: ",").map({ String($0) }) }
    }
    
    
}
