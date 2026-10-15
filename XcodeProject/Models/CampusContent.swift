import Foundation

enum CampusContentType: String, CaseIterable, Hashable {

    case announcement = "Announcement"
    case event = "Event"
    case facility = "Facility"
}


struct CampusContent: Identifiable, Hashable {

    let id: UUID
    let type: CampusContentType

    let title: String
    let subtitle: String
    let description: String

    let dateText: String?
    let location: String?

    let symbolName: String
    let isFeatured: Bool


    init(
        id: UUID = UUID(),
        type: CampusContentType,
        title: String,
        subtitle: String,
        description: String,
        dateText: String? = nil,
        location: String? = nil,
        symbolName: String,
        isFeatured: Bool = false
    ) {

        self.id = id
        self.type = type
        self.title = title
        self.subtitle = subtitle
        self.description = description
        self.dateText = dateText
        self.location = location
        self.symbolName = symbolName
        self.isFeatured = isFeatured
    }
}
