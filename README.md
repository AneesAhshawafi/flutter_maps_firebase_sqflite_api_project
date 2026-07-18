# Flutter Maps, Firebase, Sqflite & REST APIs 📱🌐

This repository contains practical code implementations, notes, and architectural patterns built while following the **Flutter Maps, Firebase, Sqflite, and APIs** playlist by **Omar Ahmed**.

---

## 📌 About the Course
This comprehensive course covers essential real-world Flutter capabilities required for production-ready apps: working with local SQLite storage, handling external network requests/APIs, integrating backend services with Firebase, and rendering interactive Google Maps with location tracking.

- **Instructor:** Omar Ahmed
- **Playlist Link:** [Flutter Maps , Firebase , Sqflite and APIs - بالعربي](https://www.youtube.com/playlist?list=PLwWuxCLlF_ucmA5Yq_2u6N9WrDOLWlxh7)

---

## 🛠 Prerequisites

Before running this project, make sure you have:
* **Flutter SDK:** `>=3.0.0`
* **Dart SDK:** `>=2.17.0`
* Basic knowledge of Flutter state management and asynchronous programming (`Future`, `async/await`, `Stream`).
* Active Firebase project & Google Cloud Platform API key for Maps integration.

---

## 📚 Key Topics Covered

### 1. Local Storage with Sqflite 💾
* Setting up SQLite database in Flutter.
* CRUD operations (Create, Read, Update, Delete).
* Managing local database helpers and tables.

### 2. RESTful APIs & Network Layer 📡
* Making HTTP requests using `http` / `dio`.
* Handling JSON parsing and data models.
* Error handling and status codes.

### 3. Firebase Phone Authentication 🔥
* **Phone Auth Workflow:** Understanding the lifecycle of authenticating users via mobile numbers and SMS OTP.
* **Sending OTP Code:** Utilizing `verifyPhoneNumber` to send verification codes via SMS.
* **Handling Callbacks:**
  * `verificationCompleted`: Automatic SMS code handling on Android.
  * `verificationFailed`: Managing invalid numbers, quota limits, or network errors.
  * `codeSent`: Capturing the `verificationId` to navigate users to the OTP input screen.
  * `codeAutoRetrievalTimeout`: Managing timeout limits for resending codes.
* **Credential Sign-In:** Creating `PhoneAuthCredential` with the SMS code and logging in via `signInWithCredential`.

### 4. Google Maps & Geolocation 📍
* Integrating `google_maps_flutter`.
* Fetching live user location using `geolocator` and `location`.
* Adding custom map markers, polylines, and camera movements.

---
