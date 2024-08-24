# Espresso-Yourself

Espresso-Yourself is a Flutter-based prototype designed to offer a glimpse into the experience of a coffee shopping app. With a focus on UI design, this prototype adheres to Object-Oriented Programming (OOP) principles and Clean Code practices, providing a solid foundation for future development. While its primary aim is to showcase design elements and basic user interactions, Espresso-Yourself also includes essential features like navigation, a cart system, and user favorites. This project serves as a starting point for creating a fully functional, scalable coffee shop application with potential for future enhancements.

![App Clip](espresso.gif)

## Table of Contents

- [Screens](#screens)
- [Data Models](#data-models)
- [Design Philosophy](#design-philosophy)
- [Functionality](#functionality)
- [Getting Started](#getting-started)
- [Future Enhancements](#future-enhancements)
- [Created By](#created-by)


## App Overview

### Screens

1. **1.Onboarding**
   - No Authentication Mechanism. Tapping the 'GO' button takes the user to the home screen.

2. **Home (Menu)**
   - The main page of the app. Shows all products (items) organized into categories.
   - The profile avatar located in the header opens a drawer for a quick access to the cart screen.

3. **Most-Popular**
   - Not been developed yet in this prototype, but it is accessible through the bottom navigation bar.

4. **Item-Details**
   - Shows a larger image of the icon with more details. From this page, the user can either add the item to Favorites, or to the Cart with the chosen quantity.

5. **Favorites**
   - Shows the items added into favorites by the user.

6. **Cart**
   - Shows the items added into the cart by the user.
   -	A delete functionality has been implemented by swipe actions. However, the implementation has some bugs in this prototype.
   - An Alert is shown when the user tries to checkout with no items in the cart.

7. **Payment**
   - Credit card information is filled in this screen, with text field validation for all input.
   -	The submit button gives an alert when the fields are filled incorrectly
   -  An order-confirmed bottom sheet is shown when the order is made successfully.
   
### Data Models

The app’s code includes data models for the following proposed tables:

- **Cart Item:** A menu item with the chosen quantity.
- **Credit Cart:** Payment Details.
- **Favorite:** A list of menu items.
- **Menu Category:** Categories for menu items.
- **Menu Item:** Menu item details, such as title, description, image, ...etc.
- **User:** Details about the user including personal info, cart, and favorites.

### Design Philosophy

- **OOP & Clean Code:** The app is built using Object-Oriented Programming principles to ensure a maintainable and scalable codebase. Clean Code practices are followed to make the code easy to read, understand, and extend.
- **UI Design:** The design of the app was inspired by a coffee shopping app on Dribbble. Most design assets were generatated through Adobe Firefly.

### Functionality

As a prototype, Espresso-Yourself has limited functionality, focusing mainly on the UI and basic navigation between screens, serving as a foundation for further development.
There is no data persistance or backend integrations at this stage.

## Getting Started

### Prerequisites

- Flutter SDK
- A code editor (such as VS Code or Android Studio)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/amer266030/Project4/espresso_yourself.git
    ```
2. Navigate to the project directory:

    ```bash
   cd espresso_yourself
    ```

3. Get the dependencies:

    ```bash
   flutter pub get
    ```

4. Run the app:

    ```bash
   flutter run
    ```
### Future Enhancements

- **User Profiles:** Implement an authentication mechanism.
- **User Interaction:** Implement full user interaction and backend integration for a complete shopping experience.
- **Content Delivery:** Add actual products from a coffee-shop, and implement a payment method to complete purchases.

## Created By

- **Amer Alyusuf**
- [Personal Website](https://amer266030.github.io)
- [LinkedIn](https://www.linkedin.com/in/amer-alyusuf-77398587)

