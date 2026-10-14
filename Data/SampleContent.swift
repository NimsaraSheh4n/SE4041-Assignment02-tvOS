import Foundation

enum SampleContent {

    static let items: [CampusContent] = [

        // MARK: - Announcements

        CampusContent(
            id: UUID(
                uuidString:
                    "11111111-1111-1111-1111-111111111111"
            )!,
            type: .announcement,
            title: "Semester Registration Reminder",
            subtitle: "Complete your registration before the deadline",
            description:
                "Students are reminded to complete semester registration and verify their academic information before the registration period closes.",
            dateText: "October 20, 2026",
            location: "Student Services",
            symbolName: "megaphone.fill",
            isFeatured: true
        ),

        CampusContent(
            id: UUID(
                uuidString:
                    "22222222-2222-2222-2222-222222222222"
            )!,
            type: .announcement,
            title: "Library Extended Hours",
            subtitle: "Additional study time during assessment period",
            description:
                "The university library will operate with extended opening hours during the upcoming assessment period to support student study activities.",
            dateText: "October 24, 2026",
            location: "Main Library",
            symbolName: "books.vertical.fill"
        ),

        CampusContent(
            id: UUID(
                uuidString:
                    "33333333-3333-3333-3333-333333333333"
            )!,
            type: .announcement,
            title: "Campus Network Maintenance",
            subtitle: "Temporary interruptions may occur",
            description:
                "Scheduled maintenance will be carried out on selected campus network services. Short interruptions may occur during the maintenance period.",
            dateText: "October 26, 2026",
            location: "Campus Wide",
            symbolName: "wifi.exclamationmark"
        ),


        // MARK: - Events

        CampusContent(
            id: UUID(
                uuidString:
                    "44444444-4444-4444-4444-444444444444"
            )!,
            type: .event,
            title: "Innovation Week",
            subtitle: "Explore student technology and research projects",
            description:
                "Innovation Week brings together student projects, research demonstrations and technology showcases from across the university.",
            dateText: "October 28, 2026",
            location: "Main Auditorium",
            symbolName: "lightbulb.fill"
        ),

        CampusContent(
            id: UUID(
                uuidString:
                    "55555555-5555-5555-5555-555555555555"
            )!,
            type: .event,
            title: "Career Development Session",
            subtitle: "Prepare for internships and graduate opportunities",
            description:
                "A career development session focused on CV preparation, interview skills and professional opportunities for university students.",
            dateText: "November 2, 2026",
            location: "Conference Hall",
            symbolName: "briefcase.fill"
        ),

        CampusContent(
            id: UUID(
                uuidString:
                    "66666666-6666-6666-6666-666666666666"
            )!,
            type: .event,
            title: "Student Club Showcase",
            subtitle: "Discover university clubs and communities",
            description:
                "Meet student societies and campus communities, learn about their activities and discover opportunities to participate.",
            dateText: "November 5, 2026",
            location: "Student Centre",
            symbolName: "person.3.fill"
        ),


        // MARK: - Facilities

        CampusContent(
            id: UUID(
                uuidString:
                    "77777777-7777-7777-7777-777777777777"
            )!,
            type: .facility,
            title: "Main Library",
            subtitle: "Study and academic resources",
            description:
                "The Main Library provides study spaces, academic resources, digital services and support facilities for students.",
            location: "Central Campus",
            symbolName: "books.vertical.fill"
        ),

        CampusContent(
            id: UUID(
                uuidString:
                    "88888888-8888-8888-8888-888888888888"
            )!,
            type: .facility,
            title: "Student Services Centre",
            subtitle: "Student support and administration",
            description:
                "The Student Services Centre provides academic support, administrative assistance and general services for students.",
            location: "Administration Area",
            symbolName: "person.2.fill"
        ),

        CampusContent(
            id: UUID(
                uuidString:
                    "99999999-9999-9999-9999-999999999999"
            )!,
            type: .facility,
            title: "Campus Cafeteria",
            subtitle: "Meals, snacks and refreshments",
            description:
                "The campus cafeteria provides meals, snacks and refreshments for students, staff and visitors.",
            location: "Student Centre",
            symbolName: "fork.knife"
        )
    ]


    // MARK: - Filtered Content

    static var announcements: [CampusContent] {

        items.filter {
            $0.type == .announcement
        }
    }


    static var events: [CampusContent] {

        items.filter {
            $0.type == .event
        }
    }


    static var facilities: [CampusContent] {

        items.filter {
            $0.type == .facility
        }
    }


    static var featuredContent: CampusContent? {

        items.first {
            $0.isFeatured
        }
    }
}
