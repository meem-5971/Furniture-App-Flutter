
## 🛋️ Furniture Store App

A simple yet elegant furniture shopping app built with **Flutter**, integrated with a **Mock API** for product listings, and includes features like product details and cart management using **Provider** for state management.

### 📱 Features

- Fetches product data from an API
- Clean and responsive UI
- Product detail view
- Add to cart functionality
- View and manage cart
- Drawer navigation (Home, Cart, Profile)

---

### 🧱 Built With

- **Flutter** (SDK 3+)
- **Provider** for state management
- **Mock API** ([MockAPI](https://mockapi.io))
- Dart HTTP package

---

### 📦 API Used

API Endpoint:  
`https://5f210aa9daa42f001666535e.mockapi.io/api/products`  
The API returns a list of product objects with fields like `id`, `title`, `image`, `description`, `price`, and `category`.

Example JSON:
```json
{
  "id": "1",
  "title": "Wood Frame",
  "price": 1500,
  "category": "Chair",
  "image": "https://i.imgur.com/sI4GvE6.png",
  "description": "Elegant armchair perfect for family visits or TV time."
}
```

---

### 🏁 Getting Started

#### 1. Clone the repo
```bash
git clone https://github.com/yourusername/furniture_store_app.git
cd furniture_store_app
```

#### 2. Install dependencies
```bash
flutter pub get
```

#### 3. Run the app
```bash
flutter run
```

Make sure you have an emulator running or a device connected.

---

### 🧠 Architecture Overview

- `HomeScreen`: Fetches products from API and displays them in a list.
- `ProductDetailsScreen`: Shows full product info and allows adding to cart.
- `CartScreen`: Displays added products with image, title, price, and delete option.
- `Product` Model: Maps API response into Dart objects.
- `CartProvider`: Manages cart state using Provider package.

---

### 🗂️ Project Structure

```
lib/
├── models/
│   └── product.dart
├── providers/
│   └── cart_provider.dart
├── screens/
│   ├── home_screen.dart
│   ├── product_details_screen.dart
│   └── cart_screen.dart
├── services/
│   └── api_service.dart
└── main.dart
```

---


### ✅ To Do (Optional Enhancements)

- ✅ Load data from API
- ✅ Product detail screen
- ✅ Cart functionality
- ⬜ Quantity management
- ⬜ User authentication
- ⬜ Payment gateway integration

---

### 🙌 Credits

- Icons: [Material Icons](https://fonts.google.com/icons)
- API: [MockAPI.io](https://mockapi.io)
- Images: Used from public links

---

### 📄 License

This project is open source and available under the MIT License.

---

If you need help writing submission notes, uploading to GitHub, or prepping for a viva — just let me know. You’ve got this! 💪🚀
