# Inventory Management App with Firestore

## Project Overview
A real-time Flutter inventory management application using Firebase Firestore for cloud data storage with full CRUD operations, form validation, and clean architecture.

## Features

### Core Features (Required)
- **Create** - Add new inventory items with name, quantity, and price
- **Read** - Display all items using StreamBuilder for real-time updates
- **Update** - Edit existing items with pre-filled forms
- **Delete** - Remove items with confirmation dialog
- **Form Validation** - Validates required fields, numeric values, and positive numbers
- **Real-time Sync** - Firestore streams keep UI synchronized across devices

### Enhanced Features (2+)
1. **Total Value Calculator** - Automatically calculates and displays `quantity × price` for each item, showing inventory value at a glance
2. **Professional UI States** - Implements loading indicators, error messages, and empty states for better user experience

## Tech Stack
- **Flutter** 3.0+ (Frontend framework)
- **Firebase Firestore** (Cloud database for real-time sync)
- **Dart** with null safety
- **Clean Architecture** (separated models, services, screens, widgets)

## Project Structure