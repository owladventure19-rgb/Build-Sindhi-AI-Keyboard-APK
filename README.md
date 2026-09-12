# Sindhi AI Keyboard (سنڌي اي آءِ ڪيبورڊ)

A production-grade, native Android InputMethodService (IME) keyboard engineered for full Unicode-compliant Sindhi typing, integrated with Google Gemini AI for smart grammar assistance, translation, and context-aware writing.

---

## 🌟 Key Features

1. **Native Android IME Architecture**
   - Implemented with Android's `InputMethodService` for system-wide typing in all apps (WhatsApp, Chrome, Gmail, Messages, etc.).
   - Full support for `InputConnection` text commits, surrogate pairs, and RTL cursor editing.

2. **Complete 52-Character Sindhi Alphabet**
   - All 52 Perso-Arabic Sindhi consonants, vowels, and implosives (`ٻ`, `ڄ`, `ڏ`, `ڳ`).
   - Standard diacritics / Harakat (`زبر`, `زير`, `پيش`, `جزم`, `تشديد`, `تنوین`, `ZWNJ`).
   - Sindhi Arabic-Indic numerals (`۰ ۱ ۲ ۳ ۴ ۵ ۶ ۷ ۸ ۹`) and Western digits.
   - Punctuation (`؟`, `،`, `؛`, `۔`).

3. **Privacy-First Google Gemini AI Integration**
   - Local-first architecture: typed text is NEVER sent to the cloud automatically.
   - AI assistant is only invoked on explicit user request.
   - Automatic sensitive input field detection (disables AI and suggestions on passwords and PINs).
   - Features: Grammar correction, tone rewrite (formal, friendly, concise), multilingual translation (Sindhi ↔ English, Urdu, Arabic, Hindi), and smart replies.

4. **Local Trie Suggestion Engine**
   - High-performance in-memory prefix tree for sub-millisecond suggestions.
   - Frequency-ranked Sindhi vocabulary with custom personal dictionary.

5. **Key Experience & Theming**
   - Haptic feedback and key popup previews.
   - Multiple Material 3 themes: Dark Slate, AMOLED Black, Indus Emerald, and Ajrak Heritage Crimson.

---

## 🚀 How to Build & Run in Android Studio

### Prerequisites
- Android Studio Ladybug (2024.2+) or newer
- JDK 17+
- Android SDK 35 (minSdk 26)

### Step 1: Open the Project
Clone or extract the exported ZIP bundle and open the root directory in Android Studio.

### Step 2: Configure Gemini API Key
In your `local.properties` file, add your Google AI Studio Gemini API key:
```properties
GEMINI_API_KEY="AIzaSyYourKeyHere"
```

### Step 3: Build APK
Run from terminal or Android Studio Build Menu:
```bash
./gradlew assembleDebug
```
Output APK will be located at:
`app/build/outputs/apk/debug/app-debug.apk`

### Step 4: Enable the Keyboard on your Android Device
1. Install the APK via ADB:
   ```bash
   adb install -r app/build/outputs/apk/debug/app-debug.apk
   ```
2. Open the **Sindhi AI Keyboard** app on your phone.
3. Tap **Enable in Settings** and toggle **Sindhi AI Keyboard**.
4. Tap **Select Input Method** and choose **Sindhi AI Keyboard**.
5. Start typing in any app with full native Sindhi support!
