# CampusView TV - Project Plan

## Module

SE4041 - Mobile Application Design and Development

## Assignment

Assignment 02 - Part B

## Application

CampusView TV

## Platform

tvOS

---

## 1. Project Concept

CampusView TV is a tvOS application designed to provide university students, staff and campus visitors with important campus information through a large-screen television interface.

The application focuses on university announcements, upcoming events, campus services and facility information.

The interface is designed specifically for Apple TV and uses focus-based navigation suitable for the Apple TV remote.

---

## 2. Problem Statement

University information is often distributed through several communication channels such as websites, social media platforms, notice boards and messaging systems.

This can make it difficult for students and visitors to quickly identify important announcements, upcoming events and relevant campus information.

A centralized large-screen campus information application can provide a more visible and accessible way to present important information in common university areas.

---

## 3. Proposed Solution

CampusView TV will provide a tvOS-based campus information experience.

The application will allow users to browse:

- Featured announcements
- Recent campus updates
- Upcoming events
- Campus facilities
- Detailed information about announcements and events

The interface will use large cards, readable typography and focus-based interactions designed for television viewing.

---

## 4. Target Users

The primary users are:

- University students
- Campus visitors
- Academic staff
- Administrative staff

---

## 5. Core Features

### Featured Announcement

A prominent featured card will display important university information on the Home screen.

### Campus Announcements

Users can browse multiple university announcements using focusable tvOS cards.

### Upcoming Events

Upcoming campus events will be displayed using horizontal content sections.

### Campus Information

Users can view information about important campus facilities and services.

### Detail Views

Selecting an announcement, event or facility will navigate to a dedicated detail screen.

---

## 6. Planned Screens

### HomeView

The main dashboard will contain:

- Application title
- Featured announcement
- Latest announcements
- Upcoming events
- Campus information section

### AnnouncementsView

Displays campus announcements using focusable cards.

### EventsView

Displays upcoming events.

### DetailView

Displays full information for the selected content item.

---

## 7. tvOS-Specific Interaction

The application will make use of tvOS interaction patterns.

### Focus-Based Navigation

Users will navigate between interface elements using the Apple TV focus system.

Cards will visually respond when focused.

### Remote-Friendly Controls

The interface will avoid small controls and touch-oriented interaction patterns.

### Large-Screen Layout

UI elements will use:

- Large typography
- Large spacing
- Large cards
- Clear visual hierarchy
- High readability

### Horizontal Browsing

Content sections will use horizontally scrollable rows suitable for Apple TV interaction.

---

## 8. User Experience Goals

The application should:

- Be easy to navigate using the Apple TV remote
- Present information clearly from a viewing distance
- Provide obvious focus feedback
- Minimize unnecessary navigation steps
- Maintain a consistent visual design
- Provide smooth transitions between screens

---

## 9. Technologies

The planned technologies include:

- Swift
- SwiftUI
- NavigationStack
- tvOS Focus System
- SwiftUI animations
- ScrollView
- LazyHStack
- Reusable SwiftUI components
- Local structured sample data

---

## 10. Application Architecture

The project will use a simple SwiftUI architecture.

```text
Sample Data
    ↓
Models
    ↓
HomeView
    ↓
Focusable Cards
    ↓
NavigationStack
    ↓
DetailView
