//
//  CSVImporterTests.swift
//  Seat SolverTests
//
//  Created by Christian Bieniak on 15/7/18.
//  Copyright © 2018 Christian Bieniak. All rights reserved.
//

import XCTest
@testable import Seat_Solver

class CSVImporterTests: XCTestCase {
    
    func testExtractData() {
        XCTAssertNoThrow(try CSVImporter.extractData(from: "DemoData", bundle: Bundle(for: self.classForCoder)))
        
        let data = try! CSVImporter.extractData(from: "DemoData", bundle: Bundle(for: self.classForCoder))
        
        XCTAssertTrue(data.count == 5)
        XCTAssertTrue(data[0].count == 3)
        
    }
    
    func testItRetrievesTheURL() {
        XCTAssertNoThrow(try CSVImporter.urlForCSVFile(named: "DemoData", bundle: Bundle(for: self.classForCoder)))
    }
    
    func testItThrowsErrorWhenFileDoesntExist() {
        XCTAssertThrowsError(try CSVImporter.urlForCSVFile(named: "DoesntExist", bundle: Bundle(for: self.classForCoder)))
    }
}
