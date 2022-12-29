//
//  ChessBattlesUITests.swift
//  ChessBattlesUITests
//
//  Created by Frederic Lefebvre on 2022-12-08.
//

import XCTest

final class ChessBattlesUITests: XCTestCase {
    
    /*
     func testAll(){
         testNavigationViews()
         testVersusView()
         testTournamentView()
         testAddPlayerButton()
     }
     */
    
    func testNavigationViews(){
        let tabBar = XCUIApplication().tabBars["Tab Bar"]
        tabBar.buttons["Players"].tap()
        tabBar.buttons["Tournaments"].tap()
        tabBar.buttons["Versus"].tap()
        tabBar.buttons["History"].tap()
        
    }
    
    func testVersusView(){
        
        let app = XCUIApplication()
        let tabBar = app.tabBars["Tab Bar"]
        tabBar.buttons["Versus"].tap()
        
        let addPlayer1Button = app.buttons["Add Player 1"]
        addPlayer1Button.tap()
        
        let searchElementsQuery = app.scrollViews.otherElements.containing(.textField, identifier:"Search")
        searchElementsQuery.children(matching: .button).matching(identifier: "Add Slide").element(boundBy: 11).tap()
        addPlayer1Button.tap()
        
        let addSlideButton = searchElementsQuery.children(matching: .button).matching(identifier: "Add Slide").element(boundBy: 15)
        addSlideButton.tap()
        
        let addPlayer2Button = app.buttons["Add Player 2"]
        addPlayer2Button.tap()
        searchElementsQuery.children(matching: .button).matching(identifier: "Add Slide").element(boundBy: 9).tap()
        addPlayer2Button.tap()
        addSlideButton.tap()
        app.buttons["Calculate win odds"].tap()
        
        let historyButton = tabBar.buttons["History"]
        historyButton.tap()
        
        let clearLogsButton = app.navigationBars["Logs"]/*@START_MENU_TOKEN@*/.buttons["Clear logs"]/*[[".otherElements[\"Clear logs\"].buttons[\"Clear logs\"]",".buttons[\"Clear logs\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        clearLogsButton.tap()
        
    }
    
    func testTournamentView(){
        
        let app = XCUIApplication()
        let tabBar = app.tabBars["Tab Bar"]
        tabBar.buttons["Tournaments"].tap()
        
        let scrollViewsQuery = app.scrollViews
        let elementsQuery = scrollViewsQuery.otherElements
        elementsQuery.buttons["Add Player 1"].tap()
        
        let searchElementsQuery = scrollViewsQuery.otherElements.containing(.textField, identifier:"Search")
        searchElementsQuery.children(matching: .button).matching(identifier: "Add Slide").element(boundBy: 2).tap()
        elementsQuery.buttons["Add Player 2"].tap()
        searchElementsQuery.children(matching: .button).matching(identifier: "Add Slide").element(boundBy: 5).tap()
        elementsQuery.buttons["Add Player 3"].tap()
        searchElementsQuery.children(matching: .button).matching(identifier: "Add Slide").element(boundBy: 11).tap()
        elementsQuery.buttons["Add Player 4"].tap()
        searchElementsQuery.children(matching: .button).matching(identifier: "Add Slide").element(boundBy: 13).tap()
        elementsQuery.buttons["Add Player 5"].tap()
        
        let addSlideButton = searchElementsQuery.children(matching: .button).matching(identifier: "Add Slide").element(boundBy: 18)
        addSlideButton.tap()
        elementsQuery.buttons["Add Player 6"].tap()
        addSlideButton.tap()
        elementsQuery.buttons["Add Player 7"].tap()
        searchElementsQuery.children(matching: .button).matching(identifier: "Add Slide").element(boundBy: 23).tap()
        elementsQuery.buttons["Add Player 8"].tap()
        searchElementsQuery.children(matching: .button).matching(identifier: "Add Slide").element(boundBy: 24).tap()
        elementsQuery.buttons["Calculate win odds"].tap()
        tabBar.buttons["History"].tap()
        app.navigationBars["Logs"]/*@START_MENU_TOKEN@*/.buttons["Clear logs"]/*[[".otherElements[\"Clear logs\"].buttons[\"Clear logs\"]",".buttons[\"Clear logs\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
    }
    
    func testAddPlayerButton(){
        let app = XCUIApplication()
        
        let tabBar = app.tabBars["Tab Bar"]
        tabBar.buttons["Players"].tap()
        
        XCUIApplication().navigationBars["Players"].buttons["person.crop.circle.fill.badge.plus"].tap()
        
        
        let ratingField = app.textFields["createRating"]
        let dobfield = app.textFields["createDOB"]
        let namefield = app.textFields["createName"]
        
        ratingField.tap()
        ratingField.typeText("2175")
        XCUIApplication()/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        dobfield.tap()
        dobfield.typeText("1986")
        XCUIApplication()/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()

        namefield.tap()
        namefield.typeText("John Doe")
        XCUIApplication()/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()

        
        XCUIApplication().navigationBars["Create"]/*@START_MENU_TOKEN@*/.buttons["Done"]/*[[".otherElements[\"Done\"].buttons[\"Done\"]",".buttons[\"Done\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        
        tabBar.buttons["Versus"].tap()
        tabBar.buttons["Players"].tap()
        
        
        XCUIApplication().scrollViews["navBarCreateNewPlayer"].otherElements.buttons["Trash"].tap()
        
    }
    
}
