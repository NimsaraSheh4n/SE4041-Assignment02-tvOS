# CampusView TV - Screen Flow

## Module

SE4041 - Mobile Application Design and Development

## Assignment

Assignment 02 - Part B

## Application

CampusView TV

## Platform

tvOS

---

## Overview

CampusView TV uses a simple NavigationStack-based structure designed for Apple TV remote interaction.

The application begins at the Home screen and provides access to announcements, events, campus facilities and reusable detail screens.

---

## Main Navigation Flow

```text
CampusViewTVApp
        ↓
     HomeView
        │
        ├── Featured Announcement
        │          ↓
        │      DetailView
        │
        ├── Announcements
        │          ↓
        │  AnnouncementsView
        │          ↓
        │      DetailView
        │
        ├── Events
        │          ↓
        │      EventsView
        │          ↓
        │      DetailView
        │
        └── Facilities
                   ↓
           FacilitiesView
                   ↓
               DetailView
