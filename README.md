## Project-4 (Classy Step shop) :

<img width="200"  alt="Screenshot 2024-08-13 at 4 06 57 PM" src="shop_app\assets\logo.png">

The projrct is an online shop to sale different types of footwear. user can sign with his account view the recommended products in home page or by catogary.
they can add a profile image, add thier location.  




## project Details:

#### - SignInScreen:
 It was created useing column to view the logo image than the TextsFormFilds for username and password with a vaildator attrbuite to make sure inputs not empty.  ElevatedButton that will navgite to next page (HomeScreen) after check that all filed is vaild

#### - HomeScreen:

- Appbar: leading icon to show th Drawer and IconButton to allow access to location.


- Container : with TextButton for sales when user click on it will show alert with sales details, and Ad image 

- SearchBar 

- OrderWidget : to show product details, when click on the first OrderWidget it will navigate to ProudectScreen()

I also used SingleChildScrollView() widget to scroll 

#### - ProductScreen:
You can navgatie to this page by clicking on the first OrderWidget in HomePage.

- stack: to orgnaize the view of the product details.

- ElevatedButton: to add to cart.

- AnimatedRatingStars: to show the rating

- CounterButton: too add prodect quntity if wanted

- Container: desgined Container to show size options.

I also used SingleChildScrollView() widget to scroll 

#### - FavoriteScreen:

You can navgatie to this page using the AppNavicationBar.

- Appbar: to show title.

- AppbarBottom: showing a tapBar with (Product, Brand) Taps.

- TapBarView: show the faveorite product in first view, show the faveorite Brands in second view

#### - CartScreen:

You can navgatie to this page using the AppNavicationBar.

- Appbar: to show title.

- Image: to show empty cart

#### - ProfileScreen:

You can navgatie to this page using the AppNavicationBar.

- Appbar: to show title.

- CircleAvatar: to handel the profile image that the user will add

- TextButton(Add image): to access user galery to add profile image using ImagePicker paekge

- SettingStyle: a styled textButton to show settings


#### - SneackersPage and HeelsPage:

You can navgatie to this page using the Drawer textButtons.

- Appbar: to show title.

- OrderWidget : to show product details

#### - Drawer:

- SettingStyle: a styled textButton to show catgorys 

#### - Additional pages:
- CurrentPage: to manage the navigation between main pages.

- on_bording: to manage onBording pages using introduction_screen paekege.

## project output:

#### - OnBording:
<img width="200"  alt="Screenshot 2024-08-13 at 4 06 57 PM" src="README_Assets\onBording.gif">


#### - SignInScreen:
<img width="200"  alt="Screenshot 2024-08-13 at 4 06 57 PM" src="README_Assets\signIn.jpg">

#### - HomeScreen:
<img width="200"  alt="Screenshot 2024-08-13 at 4 06 57 PM" src="README_Assets\homePage.jpg">

#### - ProductScreen:
<img width="200"  alt="Screenshot 2024-08-13 at 4 06 57 PM" src="README_Assets\product.jpg">

#### - FavoriteScreen:
<img width="200"  alt="Screenshot 2024-08-13 at 4 06 57 PM" src="README_Assets\faveorite.gif">

#### - CartScreen:
<img width="200"  alt="Screenshot 2024-08-13 at 4 06 57 PM" src="README_Assets\cart.jpg">

#### - ProfileScreen:
<img width="200"  alt="Screenshot 2024-08-13 at 4 06 57 PM" src="README_Assets\profile.jpg">

#### - Drawer:
<img width="200"  alt="Screenshot 2024-08-13 at 4 06 57 PM" src="README_Assets\drawer.jpg">

#### - CatgoryScreen:
<img width="200"  alt="Screenshot 2024-08-13 at 4 06 57 PM" src="README_Assets\catgoryPage.jpg">

#### - Alert:
<img width="200"  alt="Screenshot 2024-08-13 at 4 06 57 PM" src="README_Assets\alert.jpg">


## Author:
Rahaf Alghamdi

### Note:
Video of output is in the README_Assets folder
