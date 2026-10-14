# SE4041 Assignment 02 - Part B

## CampusView TV

CampusView TV is a SwiftUI-based tvOS application prototype developed for the SE4041 Mobile Application Design and Development module.

The application is designed to present university announcements, upcoming events and campus facility information through a large-screen, focus-based Apple TV interface.

---

## Project Information

**Module:** SE4041 - Mobile Application Design and Development

**Assignment:** Assignment 02 - Part B

**Platform:** tvOS

**Application:** CampusView TV

**Framework:** SwiftUI

---

## Problem

University announcements, event information and campus updates are often distributed through multiple communication channels.

Students, staff and visitors may therefore miss important information or have difficulty finding relevant updates quickly.

---

## Solution

CampusView TV provides a centralized large-screen campus information experience designed specifically for Apple TV.

The application presents important university information using remote-friendly navigation, large typography, focusable cards and clear content sections.

---

## Main Features

- Featured campus announcement
- Campus announcements
- Upcoming university events
- Campus facility information
- Reusable detail screens
- Focus-based tvOS navigation
- Apple TV remote-friendly interaction
- Horizontal content browsing
- Focus animations
- Large-screen optimized UI
- Accessibility labels
- Reusable SwiftUI components

---

## Application Screens

### Home

Provides:

- Featured content
- Announcements navigation
- Events navigation
- Facilities navigation
- Upcoming event cards
- Campus facility cards

### Announcements

Displays university announcements using horizontally browsable focus cards.

### Events

Displays upcoming university events with dates, locations and detail navigation.

### Facilities

Displays important campus facilities and student services.

### Detail View

Provides complete information for announcements, events and facilities.

---

## tvOS-Specific Features

CampusView TV is designed around Apple TV interaction patterns including:

- Focus-based navigation
- Large focus targets
- Remote-friendly controls
- Horizontal browsing
- Focus-responsive card animations
- Clear large-screen typography
- Strong visual hierarchy

Focused cards use visual feedback including:

- Scale changes
- Accent borders
- Elevated backgrounds
- Shadows

---

## Technologies

- Swift
- SwiftUI
- NavigationStack
- tvOS Focus System
- ScrollView
- LazyHStack
- SF Symbols
- XCTest
- XCUITest

---

## Architecture

```text
SampleContent
      ↓
CampusContent
      ↓
SwiftUI Views
      ↓
NavigationLink
      ↓
FocusCard
      ↓
DetailView
