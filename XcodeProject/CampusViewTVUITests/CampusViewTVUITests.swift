import XCTest

final class CampusViewTVUITests: XCTestCase {

    private var app: XCUIApplication!


    override func setUpWithError() throws {

        continueAfterFailure = false

        app = XCUIApplication()

        app.launch()
    }


    override func tearDownWithError() throws {

        app = nil
    }


    func testHomeScreenLoads() {

        XCTAssertTrue(
            app.staticTexts[
                "CampusView TV"
            ].exists
        )
    }


    func testAnnouncementsNavigationExists() {

        XCTAssertTrue(
            app.staticTexts[
                "Announcements"
            ].exists
        )
    }


    func testEventsNavigationExists() {

        XCTAssertTrue(
            app.staticTexts[
                "Events"
            ].exists
        )
    }


    func testFacilitiesNavigationExists() {

        XCTAssertTrue(
            app.staticTexts[
                "Facilities"
            ].exists
        )
    }


    func testFeaturedContentAppears() {

        XCTAssertTrue(
            app.staticTexts[
                "Semester Registration Reminder"
            ].exists
        )
    }
}
