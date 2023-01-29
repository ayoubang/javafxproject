-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2023 at 12:05 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodie`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `foodName` varchar(45) NOT NULL,
  `foodQuantity` int(11) NOT NULL,
  `foodPrice` double NOT NULL,
  `foodType` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`foodName`, `foodQuantity`, `foodPrice`, `foodType`) VALUES
('Reuben sandwich', 12, 360, 'regular');

-- --------------------------------------------------------

--
-- Table structure for table `cookrecord`
--

CREATE TABLE `cookrecord` (
  `cookId` varchar(10) NOT NULL,
  `cookName` varchar(45) NOT NULL,
  `cookType` varchar(45) NOT NULL DEFAULT 'regular',
  `isAvailable` varchar(45) NOT NULL DEFAULT 'Available',
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cookrecord`
--

INSERT INTO `cookrecord` (`cookId`, `cookName`, `cookType`, `isAvailable`, `password`) VALUES
('REG001', 'cook1', 'regular', 'available', 'cook1'),
('REG002', 'cook2', 'regular', 'available', 'cook2'),
('REG003', 'cook3', 'regular', 'available', 'cook3'),
('SEP001', 'cooka', 'special', 'available', 'cooka'),
('SEP002', 'cookb', 'special', 'available', 'cookb'),
('SEP003', 'Mahid', 'special', 'available', 'sep003');

-- --------------------------------------------------------

--
-- Table structure for table `foodmenu`
--

CREATE TABLE `foodmenu` (
  `foodId` varchar(10) NOT NULL,
  `foodName` varchar(100) NOT NULL,
  `foodType` varchar(45) NOT NULL,
  `foodDiscription` varchar(300) NOT NULL,
  `foodImgPath` varchar(45) NOT NULL,
  `foodPrice` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foodmenu`
--

INSERT INTO `foodmenu` (`foodId`, `foodName`, `foodType`, `foodDiscription`, `foodImgPath`, `foodPrice`) VALUES
('1', 'Hush Puppies with Green Zebra Tomato Jam ', 'Appetizers', 'Clayton Miller makes a highly seasoned, Indian-inflected tomato jam with ginger, cinnamon, cumin and cayenne. It\'s a terrific accompaniment to his hush puppies—cheekily nicknamed “shut-your-piehole puppies” by the cooks in his kitchen.', 'Hush.jpg', '20 '),
('10', 'Cheese Burger', 'MainCourse', 'Lunch counter, traditional, gourmet, sliders, Kobe.The cheeseburger became popular in the 1920s and 1930s.', 'cheeseburger.jpg', '25'),
('11', 'Reuben sandwich', 'MainCourse', 'Corned beef, swiss cheese, sauerkraut and Russian dressing -- the ultimate combination for the Reuben sandwich.', 'reubensandwich.jpg', '30'),
('12', 'Hot dogs', 'MainCourse', 'Hot dogs are a staple of American street food -- sold at carts and stands across the country.', 'hotdog.jpg', '27'),
('13', 'Apple pie', 'MainCourse', 'Apple pie is a stalwart of American culture.', 'applepie.jpg', '15'),
('14', 'The Hamburger', 'MainCourse', 'Everyone argues about where you\'ll find the best burger in America.', 'hummburger.jpg', '35'),
('15', 'Creamy Tomato Pasta', 'MainCourse', 'Adding cream cheese to tomato sauce gives the dish a creamy tang that is just delicious', 'creamytomatopasta.jpg', '40'),
('16', 'Classic Meatloaf', 'MainCourse', 'Juicy lean beaf and veggies baked in sturdy loaf.', 'ClassicMeatloaf.jpg', '65'),
('17', 'Vietnamise Porkchops ', 'MainCourse', 'These Vietnamese pork chops contains chops, lemongrass, fish sauce, garlic, and sugar,rice.', 'VietnamesePorkChops.jpg', '55'),
('18', 'Chocolate Chip Cookies', 'desserts', 'No cookie is more American than a chocolate chip cookie. With very little variety, this recipe has remained basically the same since the 1930s', 'choclateChip.jpg', '15'),
('19', 'Apple Pie', 'desserts', 'Nothing smells quite like an apple pie, with its buttery crust baking in the oven and fruit juices bubbling out the sides. Stuffed with apples, this dessert can be served hot and topped with creamy, cold vanilla ice cream', 'applePieDessert.jpg', '20'),
('2', 'Crab Cakes with Horseradish Cream ', 'Appetizers', 'These classic crab cakes are easy to make, as is the tangy horseradish cream.', 'crabCakes.jpg', '20'),
('20', 'Cheesecake', 'desserts', 'A mix of sweet, soft cream cheese, sugar, and flavorings, cheesecake.', 'cheesecake.jpg', '25'),
('21', 'Pecan Pie', 'desserts', 'If you appreciate sugar and nuts, chances are you will like a pecan pie. The super-sweet, syrupy Southern treat traditionally appears on Thanksgiving tables', 'pecanpie.jpg', '19'),
('22', 'Carrot Cake', 'desserts', 'A descendant of British carrot pudding, the modern day carrot cake is a dense, moist cake flavored with allspice and topped with a rich icing of cream cheese, vanilla, and sugar', 'carrotCake.JPG', '22'),
('23', 'Boston Cream Pie', 'desserts', 'Combining light vanilla cake, vanilla custard, and chocolate ganache, Boston cream pie is a gem of a dessert.', 'bostonCreamPie.jpg', '28'),
('24', 'Banana Pudding', 'desserts', 'the creamy vanilla pudding, whipped meringue, and bananas are layered with sweet Nilla wafers', 'bananaPudding.jpg', '24'),
('25', 'Indiana Sugar Cream Pie', 'desserts', 'It is a rich custard in a buttery pie crust, dusted thickly with powdered nutmeg.', 'IndianaPie.jpg', '25'),
('26', 'Crush Orange', 'beverages', 'This Dr Pepper Snapple Group\'s fruit soda offering managed to crack the top 25 (though it fell below Fanta and Sunkist on this list)', 'orange.JPG', '10'),
('27', 'Hawaiian Punch', 'beverages', 'Was it really an elementary school gathering if Hawaiian Punch wasn\'t there? With its signature red hue, this fruit punch is a joy for kids', 'hawaiianpunch.jpg', '12'),
('28', 'Coke Zero', 'beverages', 'Coke Zero, officially called Coke Zero Sugar, isn\'t as famous as Diet Coke, but it\'s still up there. Ninety-six percent of YouGov\'s survey respondents had heard of Coke Zero, though only 36% had a positive opinion of it.', 'zeroCola.jpg', '9'),
('29', 'Coca-Cola', 'beverages', 'Who hasn\'t had this soda, whether at the movies, at a fast-food restaurant, or just straight from the can? It\'s hard to beat the refreshing taste of an ice-cold Coke.', 'colacola.jpg', '9'),
('3', 'Caramelized Onion Dip ', 'Appetizers', 'This homemade onion dip is far better than the storebought version.', 'CaramelizedOnion.jpg', '20'),
('30', 'Sprite', 'beverages', 'Sprite is almost as well-known as its darker-hued soda counterparts', 'sprite.jpg', '9'),
('31', 'Dr Pepper', 'beverages', 'Dr Pepper—yep, it\'s stylized without a period—has a unique taste, so it\'s not surprising this one is so well-known', 'DrPepper.jpg', '11'),
('32', 'Diet Coke', 'beverages', 'You probably have a friend who swears by Diet Coke, or maybe you love the taste of it yourself.', 'dietCoke.jpg', '9'),
('33', 'Minute Maid', 'beverages', 'This Coca-Cola-owned beverage company makes plenty of fruit-inspired drinks, including lemonade and orange juice. Their beverages will definitely quench your thirst on a hot summer\'s day', 'minuteMaid.jpg', '10'),
('4', 'Deviled Eggs With Country Ham ', 'Appetizers', 'Chef Ford Fry uses European techniques and flavors at the neighborhood bistro JCT. His deviled eggs get their terrific flavor from goat cheese, Dijon mustard and cornichons, plus a topping of country ham.', 'DeviledEggs.jpg', '20'),
('5', 'Hogs in a Blanket ', 'Appetizers', 'This fun, high-brow take on pigs in a blanket swaps spicy andouille sausage for the hot dogs, with sweet mustard chutney as a condiment.', 'Hongs.jpg', '20'),
('6', 'Caesar Salad Spears ', 'Appetizers', 'Grace Parisi transforms a classic Caesar into a clever finger food. She tosses chopped endives with a lemony dressing, then spoons the mixture inside elegant endive spears, topping it with cheese and crunchy mini croutons.', 'ceaserSalad.jpg', '20'),
('7', 'Baked Buffalo Chicken Wings ', 'Appetizers', 'Most of us think of Buffalo wings as bar food, but with their accompaniment of celery sticks and creamy blue-cheese dressing, they make a fine casual meal. These wings are hot, but if you like them incendiary, pass extra Tabasco sauce at the table.', 'bakedBuffalo.jpg', '20'),
('8', 'Blue-Cheese-and-Walnut Dip with Waldorf Crudités ', 'Appetizers', 'With walnuts, mayonnaise, apples and grapes, this recipe is a riff on classic Waldorf salad.', 'blueCheez.jpg', '20'),
('9', 'Sticky Baked Chicken Wings', 'Appetizers', 'chicken wings that he bakes in the oven (instead of deep-frying) in a spicy glaze he makes with gochujang, the Korean red pepper paste', 'chikenWings.jpg', '20');

-- --------------------------------------------------------

--
-- Table structure for table `orderrecord`
--

CREATE TABLE `orderrecord` (
  `orderId` int(11) NOT NULL,
  `customerName` varchar(45) NOT NULL,
  `orderDate` datetime NOT NULL DEFAULT current_timestamp(),
  `amountPay` varchar(20) NOT NULL,
  `orderType` varchar(45) NOT NULL DEFAULT 'regular'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sepordertemp`
--

CREATE TABLE `sepordertemp` (
  `orderId` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Discription` varchar(350) NOT NULL,
  `Quantity` varchar(10) NOT NULL,
  `Price` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cookrecord`
--
ALTER TABLE `cookrecord`
  ADD PRIMARY KEY (`cookId`);

--
-- Indexes for table `foodmenu`
--
ALTER TABLE `foodmenu`
  ADD PRIMARY KEY (`foodId`);

--
-- Indexes for table `orderrecord`
--
ALTER TABLE `orderrecord`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `sepordertemp`
--
ALTER TABLE `sepordertemp`
  ADD PRIMARY KEY (`orderId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orderrecord`
--
ALTER TABLE `orderrecord`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sepordertemp`
--
ALTER TABLE `sepordertemp`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
