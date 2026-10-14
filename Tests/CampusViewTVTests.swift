import XCTest
@testable import CampusViewTV

final class CampusViewTVTests: XCTestCase {

    func testSampleContentIsAvailable() {

        XCTAssertFalse(
            SampleContent.items.isEmpty
        )
    }


    func testAnnouncementsExist() {

        XCTAssertFalse(
            SampleContent.announcements.isEmpty
        )

        XCTAssertTrue(
            SampleContent.announcements.allSatisfy {
                $0.type == .announcement
            }
        )
    }


    func testEventsExist() {

        XCTAssertFalse(
            SampleContent.events.isEmpty
        )

        XCTAssertTrue(
            SampleContent.events.allSatisfy {
                $0.type == .event
            }
        )
    }


    func testFacilitiesExist() {

        XCTAssertFalse(
            SampleContent.facilities.isEmpty
        )

        XCTAssertTrue(
            SampleContent.facilities.allSatisfy {
                $0.type == .facility
            }
        )
    }


    func testFeaturedContentExists() {

        let featured =
            SampleContent.featuredContent

        XCTAssertNotNil(featured)

        XCTAssertEqual(
            featured?.isFeatured,
            true
        )
    }


    func testCampusContentValues() {

        let item = CampusContent(
            type: .event,
            title: "Test Event",
            subtitle: "Test Subtitle",
            description: "Test Description",
            dateText: "October 30, 2026",
            location: "Main Hall",
            symbolName: "calendar"
        )

        XCTAssertEqual(
            item.type,
            .event
        )

        XCTAssertEqual(
            item.title,
            "Test Event"
        )

        XCTAssertEqual(
            item.location,
            "Main Hall"
        )

        XCTAssertFalse(
            item.isFeatured
        )
    }
}
