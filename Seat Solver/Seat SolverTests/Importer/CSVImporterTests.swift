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
    
    func testItRetrievesTheCorrectURL() {
        XCTAssertNotNil(CSVImporter.urlForFile(named: "DemoData.csv", bundle: Bundle(for: self.classForCoder)))
    }
}
