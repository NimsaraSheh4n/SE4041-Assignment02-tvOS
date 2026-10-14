# CampusView TV - AI-Assisted Development Documentation

## Module

SE4041 - Mobile Application Design and Development

## Assignment

Assignment 02 - Part B

## Application

CampusView TV

## Platform

tvOS

---

## AI Tool Used

ChatGPT was used as an AI-assisted development tool during the planning and source preparation of CampusView TV.

AI assistance was used as development support while the final implementation, testing and presentation remain the responsibility of the student.

---

## Areas of AI Assistance

AI assistance was used for:

- tvOS application concept planning
- Requirement interpretation
- Project architecture
- SwiftUI source code preparation
- tvOS focus-based interface planning
- Navigation structure
- Reusable component design
- Sample data preparation
- Accessibility considerations
- Unit test preparation
- UI test preparation
- Technical documentation
- Xcode migration planning

---

## Development Interaction 1 - Platform Selection

### Prompt Summary

Requested guidance on whether tvOS or visionOS would be more practical for Assignment 02 Part B.

### AI Assistance

Suggested tvOS because the project can demonstrate platform-specific interaction using:

- Focus-based navigation
- Apple TV remote interaction
- Large-screen layouts
- Horizontal browsing
- tvOS-specific user experience

### Student Action

Selected tvOS and developed the CampusView TV concept.

---

## Development Interaction 2 - Application Concept

### Prompt Summary

Requested a suitable tvOS application concept for the assignment.

### AI Assistance

Suggested CampusView TV, a large-screen campus information application containing:

- Announcements
- Events
- Campus facilities
- Detail screens

### Student Action

Reviewed the concept and used it as the basis of the Part B prototype.

---

## Development Interaction 3 - Project Architecture

### Prompt Summary

Requested guidance for organizing the tvOS SwiftUI project.

### AI Assistance

Suggested separating the project into:

- App
- Models
- Data
- Components
- Views
- Theme
- Tests
- UI Tests
- Documentation

### Student Action

Created the GitHub repository and organized the source files using this structure.

---

## Development Interaction 4 - tvOS Focus System

### Prompt Summary

Requested a television-friendly interaction design suitable for Apple TV.

### AI Assistance

Suggested using focusable navigation controls, large content cards and visual focus feedback.

The proposed visual feedback included:

- Scale changes
- Accent borders
- Elevated backgrounds
- Shadows
- Focus animations

### Student Action

Implemented the reusable `FocusCard` component and focus-responsive navigation cards.

---

## Development Interaction 5 - SwiftUI Navigation

### Prompt Summary

Requested guidance for connecting the Home screen with announcements, events and facilities.

### AI Assistance

Suggested using `NavigationStack` and `NavigationLink`.

### Student Action

Created the following navigation flow:

```text
HomeView
 ├── AnnouncementsView
 ├── EventsView
 ├── FacilitiesView
 └── DetailView
