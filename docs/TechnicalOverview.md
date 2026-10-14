# CampusView TV - Technical Overview

## Module

SE4041 - Mobile Application Design and Development

## Assignment

Assignment 02 - Part B

## Application

CampusView TV

## Platform

tvOS

---

## 1. Overview

CampusView TV is a SwiftUI-based tvOS application designed for large-screen campus information delivery.

The application provides access to university announcements, upcoming events and campus facility information using a focus-based television interface.

The architecture is intentionally lightweight and modular so that the application remains easy to maintain, test and extend.

---

## 2. Technologies

CampusView TV uses the following technologies:

- Swift
- SwiftUI
- NavigationStack
- tvOS Focus System
- ScrollView
- LazyHStack
- Reusable SwiftUI components
- SF Symbols
- XCTest
- XCUITest
- Local structured sample data

---

## 3. Application Architecture

The application is divided into several logical layers.

```text
App
 ↓
Views
 ↓
Reusable Components
 ↓
Models
 ↓
Sample Data
