# CampusView TV - Testing Plan

## Module

SE4041 - Mobile Application Design and Development

## Assignment

Assignment 02 - Part B

## Application

CampusView TV

## Platform

tvOS

---

## 1. Purpose

The purpose of testing is to verify that CampusView TV functions correctly on tvOS and provides a clear, responsive and remote-friendly user experience.

Testing will focus on:

- Application launch
- tvOS focus navigation
- Screen navigation
- Content presentation
- Focus animations
- Unit testing
- UI testing
- User acceptance testing
- Performance and stability

---

## 2. Test Environment

Final testing will be completed using:

- macOS
- Xcode
- tvOS SDK
- Apple TV Simulator
- XCTest
- XCUITest

All test results will remain marked as **Pending** until the project is executed in Xcode.

---

## 3. Functional Test Cases

| Test ID | Feature | Test Procedure | Expected Result | Status |
|---|---|---|---|---|
| TV-01 | App Launch | Launch CampusView TV | Home screen should appear correctly | Pending |
| TV-02 | Home Screen | View the Home screen | Featured content, Explore section, events and facilities should appear | Pending |
| TV-03 | Featured Content | Select the featured item | DetailView should open | Pending |
| TV-04 | Announcements | Open Announcements | AnnouncementsView should appear | Pending |
| TV-05 | Announcement Detail | Select an announcement | Correct DetailView should appear | Pending |
| TV-06 | Events | Open Events | EventsView should appear | Pending |
| TV-07 | Event Detail | Select an event | Event details should appear | Pending |
| TV-08 | Facilities | Open Facilities | FacilitiesView should appear | Pending |
| TV-09 | Facility Detail | Select a facility | Facility details should appear | Pending |
| TV-10 | Back Navigation | Return from a detail screen | Previous screen should be restored | Pending |

---

## 4. Focus System Tests

| Test ID | Test | Expected Result | Status |
|---|---|---|---|
| FOCUS-01 | Move focus across Home navigation cards | Focus should move predictably | Pending |
| FOCUS-02 | Focus a content card | Card should visually highlight | Pending |
| FOCUS-03 | Move between horizontal cards | Focus should move smoothly | Pending |
| FOCUS-04 | Focus featured content | Featured card should provide clear visual feedback | Pending |
| FOCUS-05 | Select focused card | Correct destination should open | Pending |
| FOCUS-06 | Return to previous screen | Focus should remain usable and predictable | Pending |

---

## 5. Focus Visual Feedback

Focused cards should demonstrate:

- Scale increase
- Accent border
- Elevated background
- Shadow
- Clear visual emphasis

The focus state should be visible from normal television viewing distance.

---

## 6. Unit Testing

Unit test source code is located in:

```text
Tests/CampusViewTVTests.swift
