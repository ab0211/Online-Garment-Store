-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2016 at 10:33 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloth_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `men`
--

CREATE TABLE `men` (
  `pid` varchar(50) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `pimg` varchar(200) NOT NULL,
  `pdes` varchar(200) NOT NULL,
  `pcost` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `men`
--

INSERT INTO `men` (`pid`, `pname`, `pimg`, `pdes`, `pcost`) VALUES
('kbcs1', 'Mothercare', 'uploads/cs1.1.jpg', ' Boys White & Black Clothing Set', 2099),
('kbcs2', 'Mothercare', 'uploads/cs2.1.jpg', 'Boys White & Black Clothing Set', 2099),
('kbcs3', 'Mothercare', 'uploads/cs3.1.jpg', 'Boys Blue & White Clothing Set', 1399),
('kbcs4', 'Mothercare', 'uploads/cs4.1.jpg', 'Blue & Grey Striped Bodysuit with Hooded Dungarees ', 899),
('kbcs5', 'Baby League', 'uploads/cs5.1.jpg', 'Boys White & Orange Printed Clothing Set ', 659),
('kbcs6', 'Baby League', 'uploads/cs6.1.jpg', 'Boys Yellow & Blue Printed Clothing Set ', 459),
('kbj1', 'YK', 'uploads/T&t1.jpg', 'Boys Olive Green Cuff Trousers', 579),
('kbj2', 'YK', 'uploads/T&t2.jpg', ' Boys Light Brown Cuff Trousers', 659),
('kbj3', 'WROGN', 'uploads/T&t3.jpg', 'Tweens Boys Navy Slim Fit Jeans', 1299),
('kbj4', 'WROGN', 'uploads/T&t4.jpg', 'Tweens Boys Navy Slim Fit Jeans', 1299),
('kbj5', 'WROGN', 'uploads/T&t5.jpg', 'Tweens Blue Slim Fit Jeans', 1459),
('kbj6', 'Slub Juniors', 'uploads/T&t6.jpg', ' Boys Blue Jeans', 719),
('kbs1', 'People Boys', 'uploads/bsh1.1.jpg', 'Blue & White Checked Shirt', 599),
('kbs2', 'Campana', 'uploads/bsh2.1.jpg', ' Boys Red & Navy Checked Shirt', 399),
('kbs3', 'Mothercare', 'uploads/bsh3.1.jpg', ' Boys Blue Printed Shirt', 899),
('kbs4', 'Poppers by Pantaloons', 'uploads/bsh4.1.jpg', 'Boys Black Printed Shirt', 599),
('kbs5', 'WROGN', 'uploads/bsh5.1.jpg', 'Tweens Boys Mustard Yellow Slim Fit Casual Shirt ', 859),
('kbs6', 'Bio Kid', 'uploads/bsh6.1.jpg', 'Boys Green Camouflage Print Shirt', 599),
('kbsw1', 'Palm Tree Gini & Jony', 'uploads/bsw1.jpg', ' Boys Navy Printed Sweatshirt', 549),
('kbsw2', 'Star Wars', 'uploads/bsw2.jpg', 'Kids Ville Boys Black Printed Sweatshirt', 629),
('kbsw3', 'Palm Tree Gini & Jony', 'uploads/bsw3.jpg', 'Boys Navy Printed Sweatshirt', 549),
('kbsw4', 'Batman By Kids Ville', 'uploads/bsw5.jpg', 'Boys Black Sweater', 1049),
('kbsw5', 'Allen Solly Junior', 'uploads/bsw4.jpg', 'Boys Navy Hooded Jacket', 1549),
('kbsw6', 'United Colors Of Benetton', 'uploads/bsw6.jpg', 'Boys Grey Camouflage Print Hooded Sweatshirt', 1019),
('kbt1', 'Puma', 'uploads/tee1.jpg', ' Boys Green Polo T-shirt', 259),
('kbt2', 'Disney', 'uploads/tee2.jpg', 'Boys Navy Comic Print T-shirt', 259),
('kbt3', 'Disney', 'uploads/tee3.jpg', 'Boys Grey Jungle Book Print T-shirt', 359),
('kbt4', 'Disney', 'uploads/tee4.jpg', 'Disney Boys Grey Jungle Book Print T-shirt', 659),
('kbt5', 'United Colors Of Benetton', 'uploads/tee5.jpg', 'Boys Lavender Printed T-Shirt', 459),
('kbt6', 'Puma', 'uploads/tee6.jpg', 'Boys Blue & White Dry CELL T-shirt', 675),
('kgcs1', 'Naughty Ninos', 'uploads/gcs1.1.jpg', 'Girls Black & White Printed Clothing Set ', 719),
('kgcs2', 'Baby League', 'uploads/gcs2.1.jpg', 'Girls Yellow & Cream Coloured Clothing Set ', 995),
('kgcs3', 'Oye', 'uploads/gcs3.1.jpg', 'Girls Lavender & Navy Clothing Set ', 539),
('kgcs4', 'Naughty Ninos', 'uploads/gcs4.1.jpg', 'Girls Brown & Black Clothing Set ', 719),
('kgcs5', 'Peepermint', 'uploads/gcs5.1.jpg', 'Girls Biege & Black Clothing Set ', 774),
('kgcs6', ' Gini & Jony', 'uploads/gcs6.1.jpg', 'Girls magneta clothing set', 649),
('kgd1', 'Toy Ballon Kids', 'uploads/gd1.jpg', 'Girls Pink Embroidered Flare Dresses ', 999),
('kgd2', 'Naughty Ninos', 'uploads/gd2.jpg', 'Girls Black Printed Sheath Dress ', 649),
('kgd3', 'Soul Fairy', 'uploads/gd3.jpg', 'Girls Black Printed A-Line Dress ', 639),
('kgd4', 'My little lamb', 'uploads/gd4.jpg', 'Girls Biege Bird Print A-Line Dress ', 540),
('kgd5', 'Naughty Ninos', 'uploads/gd5.jpg', 'Girls Navy Fit & Flare Dress', 584),
('kgd6', 'Via Italia', 'uploads/gd6.jpg', 'Girls Black & White Printed Dress ', 549),
('kgs1', 'Naughty Ninos', 'uploads/ssj1.1.jpg', 'Girls Off-White Printed Dungarees ', 649),
('kgs2', 'Mothercare', 'uploads/ssj2.jpg', 'Girls Pink Printed Jumpsuit', 479),
('kgs3', 'YK', 'uploads/ssj3.jpg', 'Girls Off-White & Navy Printed Shorts', 639),
('kgs4', 'Beebay', 'uploads/ssj4.jpg', 'Girls Orange & Yellow Printed Jumpsuit ', 540),
('kgs5', 'My little lamb', 'uploads/ssj5.jpg', 'Girls Pink Coduoy Dungarees', 584),
('kgs6', 'Naughty Ninos', 'uploads/ssj6.jpg', 'Girls Red & White Dot Printed Dungarees ', 649),
('kgsw1', 'Snuggles', 'uploads/s&j1.jpg', 'Girls Red Hooded Jacket ', 999),
('kgsw2', 'Naughty Ninos', 'uploads/s&j2.jpg', 'Girls Pink Single Breasted Blazer ', 649),
('kgsw3', 'Mothercare', 'uploads/s&j3.jpg', 'Girls Multicoloured Hooded Jacket ', 1639),
('kgsw4', 'Gini & Jony', 'uploads/s&j4.jpg', 'Girls Dark Green Sweater ', 949),
('kgsw5', 'YK', 'uploads/s&j5.jpg', 'Girls Coral Red Hooded Sweater ', 584),
('kgsw6', 'Snuggles', 'uploads/s&j6.jpg', 'Girls Purple Sweater ', 549),
('kgt1', 'United Colors Of Benetton', 'uploads/gt&t1.jpg', 'Girls Yellow Printed Layered Top ', 539),
('kgt2', 'Juniors by Lifestyle', 'uploads/gt&t2.jpg', 'Girls Blue Lace Top ', 559),
('kgt3', 'Sera', 'uploads/gt&t3.jpg', 'Girls Blue High-Low Lace Top', 399),
('kgt4', 'Beebay', 'uploads/gt&t4.jpg', 'Girls Blue Chevron Print Top ', 272),
('kgt5', 'Sbuy', 'uploads/gt&t5.jpg', 'Girls White Printed T-Shirt ', 299),
('kgt6', 'Dreamzone', 'uploads/gt&t6.jpg', 'Girls Coral Red Printed T-Shirt ', 279),
('mb1', 'Peter England', 'uploads/suits1.jpg', ' Charcoal Grey Single-Breasted Formal Suit', 7499),
('mb2', 'Louis Phillipe', 'uploads/suits2.jpg', 'Navy Single-Breasted Ultra Fit Suit', 6499),
('mb3', 'Peter England', 'uploads/suits3.jpg', 'Charcoal Grey Single-Breasted Formal Suit', 6799),
('mb4', 'Blackberrys', 'uploads/suits4.jpg', ' Navy & Black Single-Breasted Slim Formal Suit', 8099),
('mcs1', 'John Players', 'uploads/cshirt1.jpg', ' Navy Printed Trim Fit Denim Shirt', 999),
('mcs2', 'Louis Phillipe', 'uploads/cshirt2.jpg', 'Black Linen Tailored Smart Casual Shirt', 1049),
('mcs3', 'U.S. Polo Assn.', 'uploads/cshirt3.jpg', ' Blue Printed Tailored Fit Casual Shirt', 1499),
('mcs4', 'Oxemberg', 'uploads/cshirt4.jpg', ' Red Checked Comfort Fit Casual Shirt ', 1099),
('mct1', 'Jack & Jones', 'uploads/ctrou1.jpg', 'Blue Slim Fit Casual Trouser', 1999),
('mct2', 'U.S. Polo Assn.', 'uploads/ctrou2.jpg', 'White Sharp Fit Casual Trouser', 2449),
('mct3', 'John Players', 'uploads/ctrou3.jpg', ' Faded Blue Slim Trouser', 2199),
('mct4', 'Levis', 'uploads/ctrou4.jpg', ' Olive Green 511 Low-Rise Slim Fit Trousers', 2499),
('mfs1', 'Park Avenue', 'uploads/men1.jpg', 'Maroon Formal Shirt', 2499),
('mfs2', 'Allen Solly', 'uploads/men2.jpg', 'Navy Sport Formal Shirt', 1499),
('mfs3', 'Blackberrys', 'uploads/fshirt3.jpg', 'Men Purple Slim Fit Formal Shirt', 1799),
('mfs4', 'Mark Taylor', 'uploads/fshirt5.jpg', 'Red & Navy Striped Slim Fit Formal Shirt', 649),
('mft1', 'John Players', 'uploads/ftrou1.jpg', 'Teal Blue Skinny Fit Formal Trousers', 1499),
('mft2', 'Peter England', 'uploads/ftrou2.jpg', 'Charcoal Grey Slim Formal Trousers', 1499),
('mft3', 'Louis Phillipe', 'uploads/ftrou3.jpg', ' Brown Classic Fit Formal Trousers', 1799),
('mft4', 'Blackberrys', 'uploads/ftrou4.jpg', 'Black Sharp Fit Formal Trousers', 2099),
('mj1', 'U.S. Polo Assn.', 'uploads/jeans1.jpg', 'Blue Comfort Slim Fit Jeans', 2399),
('mj2', 'Roadster', 'uploads/jeans2.jpg', 'Blue Skinny Stretch Jeans', 1099),
('mj3', 'Levis', 'uploads/jeans3.jpg', 'Blue Skinny Straight Fit Jeans 6554', 1499),
('mj4', 'Louis Phillipe Jeans', 'uploads/jeans4.jpg', ' Navy Albert Skinny Fit Jeans', 1399),
('mp1', 'Roadster (Pack of 2)', 'uploads/men3.jpg', 'Pack of 2 T-Shirts in Black & White', 899),
('mp2', 'Nike', 'uploads/polo2.jpg', 'Black Hangtime T-Shirt ', 999),
('mp3', 'U.S. Polo Assn.', 'uploads/polo3.jpg', 'Men Green Polo T-shirt', 1099),
('mp4', 'Nike', 'uploads/polo4.jpg', 'Green GS SLIM POLO NSW T-shirt', 899),
('ms1', 'Adidas', 'uploads/shorts1.jpg', 'Black ESS MID WV Training Shorts', 1399),
('ms2', 'United Colors of Benetton', 'uploads/shorts2.jpg', 'Navy Washed Slim Denim Shorts', 1099),
('ms3', 'Nike', 'uploads/shorts3.jpg', 'Red & Black Printed Shorts', 1499),
('ms4', 'Killer', 'uploads/shorts4.jpg', 'Khaki Chino Shorts', 999),
('msw1', 'Fila', 'uploads/sweater1.jpg', 'Teal Blue Colourblock GRENLEE Sweatshirt', 999),
('msw2', 'Adidas', 'uploads/sweater2.jpg', 'Grey Melange & Black Striped Sweatshirt', 1499),
('msw3', 'Pepe Jeans', 'uploads/sweater3.jpg', 'Black Striped Sweater', 1499),
('msw4', 'Duke', 'uploads/sweater4.jpg', 'Purple Sweater', 699),
('mt1', 'Jockey', 'uploads/track1.jpg', 'Charcoal Grey Track Pants', 799),
('mt2', 'Fila', 'uploads/track2.jpg', 'Green Track Pants', 499),
('mt3', 'Puma', 'uploads/track3.jpg', 'Navy Polyester Panelled Tracksuit', 1299),
('mt4', 'Adidas', 'uploads/track4.jpg', 'Grey  ESS 3S WV Polyester Training Track Pants', 999),
('wid1', 'Satrani', 'uploads/dress material/01.jpg', ' Navy Embroidered Semi-Stitched Dress Material ', 1),
('wid2', 'Florence', 'uploads/dress material/11.jpg', 'Black Embroidered Georgette Unstitched Dress Material', 2),
('wid3', 'Florence', 'uploads/dress material/21.jpg', ' Black Embroidered Georgette Unstitched Dress Material ', 3),
('wid4', 'Satrani', 'uploads/dress material/31.jpg', ' Coral Pink Embroidered Semi-Stitched Dress Material ', 4),
('wid5', 'Satrani', 'uploads/dress material/41.jpg', 'Multicoloured Embroidered Unstitched Dress Material ', 5),
('wid6', 'Satrani', 'uploads/dress material/51.jpg', ' Off-White & Coral Pink Embroidered Unstitched Dress Material', 6),
('wik1', 'Alom', 'uploads/01.jpg', 'Pink Kurta', 1),
('wik2', 'Desi Weaves', 'uploads/11.jpg', 'Mustard Yellow Kurta', 2),
('wik3', 'Bhama Couture', 'uploads/21.jpg', 'Pink Embroidered Anarkali Kurta ', 3),
('wik4', 'Gerua', 'uploads/31.jpg', 'Multicoloured Printed Panelled Front Slit Kurta ', 4),
('wik5', 'Visudh', 'uploads/41.jpg', 'Purple Floral Print Kurta ', 5),
('wik6', 'Visudh', 'uploads/51.jpg', 'Blue & Cream-Coloured Printed Kurta', 6),
('wil1', 'DressBerry', 'uploads/leggings/01.jpg', 'Black Treggings', 1),
('wil2', 'Mango', 'uploads/leggings/11.jpg', 'Grey & Black Patterned Leggings', 2),
('wil3', 'Panit', 'uploads/leggings/21.jpg', 'White Churidar Leggings ', 3),
('wil4', 'Biba', 'uploads/leggings/31.jpg', 'Pink Churidar Leggings ', 4),
('wil5', 'Pannkh', 'uploads/leggings/41.jpg', 'Women Orange Churidar Leggings ', 5),
('wil6', 'Le Bison', 'uploads/leggings/51.jpg', 'Navy Printed Capri Leggings ', 6),
('wilc1', 'Nanda Silk', 'uploads/lehenga/01.jpg', ' Beige & Purple Embroidered Net Unstitched Lehenga Choli with Dupatta ', 1),
('wilc2', 'Touch Trends', 'uploads/lehenga/11.jpg', 'Gold-Toned & Green Block Print Lehenga Choli Material with Dupatta ', 2),
('wilc3', 'Bhelpuri Gold', 'uploads/lehenga/21.jpg', 'Toned & Green Embroidered Net & Silk Semi-Stitched Lehenga Choli with Dupatta ', 3),
('wilc4', 'Vogue Era', 'uploads/lehenga/31.jpg', ' Blue Brocade & Net Semi-Stitched Lehenga Choli with Dupatta ', 4),
('wilc5', 'Bhelpuri Black & Green', 'uploads/lehenga/41.jpg', 'Net Semi-Stitched Lehenga Choli Material with Dupatta ', 5),
('wilc6', 'Nanda Silk', 'uploads/lehenga/51.jpg', 'Beige & Red Embroidered Net Unstitched Lehenga Choli with Dupatta ', 6),
('wis1', 'Colors', 'uploads/sarees/1.jpg', ' Blue & Red Chiffon Jacquard Embroidered Saree ', 1),
('wis2', 'Parchayee', 'uploads/sarees/11.jpg', 'Blue Embroidered Chiffon Fashion Saree ', 2),
('wis3', 'Jashn', 'uploads/sarees/21.jpg', 'Beige Gadwal Cotton Leaf Print Traditional Saree ', 3),
('wis4', 'Jashn', 'uploads/sarees/31.jpg', 'Green Gadwal Cotton Floral Print Traditional Saree ', 4),
('wis5', 'Jashn', 'uploads/sarees/41.jpg', 'Maroon Chanderi Cotton Silk Traditional Saree ', 5),
('wis6', 'Saree Mall', 'uploads/sarees/51.jpg', 'Blue & Beige Art Silk Printed Saree ', 6),
('wwc1', 'Devis B', 'uploads/lc1.jpg', 'lack Smart Fit Casual Trousers ', 659),
('wwc2', 'Castle', 'uploads/lc2.jpg', 'White Embroidered Palazzo Trousers ', 689),
('wwc3', 'W White', 'uploads/lc3.jpg', 'Polyester Palazzo Trousers', 599),
('wwc4', 'Campus Sutra', 'uploads/lc4.jpg', 'Blue Panelled Track Pants ', 1099),
('wwc5', 'Trend Arrest', 'uploads/lc5.jpg', 'Multicoloured Printed Polyester Palazzo Trousers ', 659),
('wwc6', 'Vero Moda', 'uploads/lc6.jpg', 'White Cropped Trousers with Belt ', 1019),
('wwj1', 'Mango', 'uploads/MANGO-Blue-Distressed-Relaxed-Cropped-Fit-Jeans-.jpg', '-Blue-Distressed-Relaxed-Cropped-Fit-Jeans- ', 1059),
('wwj2', 'Moda Rapido', 'uploads/Moda-Rapido-Blue-Skinny-Fit-Jeans.jpg', 'Blue-Skinny-Fit-Jeans ', 950),
('wwj3', 'Only', 'uploads/ONLY-Blue-Distressed-Low-Rise-Jeans.jpg', '-Blue-Distressed-Low-Rise-Jeans', 1199),
('wwj4', 'Only', 'uploads/ONLY-Brown-Blue-Jeans.jpg', '  ONLY-Brown-Blue-Jeans ', 899),
('wwj5', 'Tokyo Talkies', 'uploads/Tokyo-Talkies-Skinny-Blue-Jeans.jpg', '-Skinny-Blue-Jeans ', 1059),
('wwj6', 'Tulsattva-Women-Jeggings ', 'uploads/Tulsattva-Women-Jeggings.jpg', 'Tulsattva-Women-Jeggings ', 619),
('wws1', 'Xoxo', 'uploads/Xoxo-Blue-Floral-Print-Maxi-Skirt.jpg', 'Xoxo-Blue-Floral-Print-Maxi-Skirt', 959),
('wws2', 'SASSAFRAS', 'uploads/SASSAFRAS-Women-Skirts.jpg', 'SASSAFRAS-Women-Skirts ', 950),
('wws3', 'Cottinfab-Black-Pencil-Skirt ', 'uploads/Cottinfab-Black-Pencil-Skirt.jpg', 'Cottinfab-Black-Pencil-Skirt ', 1199),
('wws4', 'Purple-Feather', 'uploads/Purple-Feather-Women-Skirts.jpg', 'Purple-Feather-Women-Skirts ', 899),
('wws5', 'DressBerry ', 'uploads/DressBerry-Nude-Coloured-PenciL.jpg', 'DressBerry-Nude-Coloured-PenciL ', 619),
('wwsw1', 'Reebok-Purple-ELFULZIPFLECE-Hooded-Training-Sweatshirt ', 'uploads/Reebok-Purple-ELFULZIPFLECE-Hooded-Training-Sweatshirt.jpg', 'Reebok-Purple-ELFULZIPFLECE-Hooded-Training-Sweatshirt ', 959),
('wwsw2', 'Roadster', 'uploads/Roadster-Women-Sweaters.jpg', 'Roadster-Women-Sweaters', 950),
('wwsw3', 'Belle-Fille', 'uploads/Belle-Fille-Navy-Hooded-Sweatshirt.jpg', 'Belle-Fille-Navy-Hooded-Sweatshirt', 1199),
('wwsw4', 'Russell-Athletic', 'uploads/Russell-Athletic-Black-Hooded-Sweatshirt.jpg', 'Russell-Athletic-Black-Hooded-Sweatshirt ', 899),
('wwsw5', 'Campus Sutra', 'uploads/Campus-Sutra-Women-Sweatshirts.jpg', 'Campus-Sutra-Women-Sweatshirts ', 1059),
('wwsw6', 'People', 'uploads/People-Black-Sweater.jpg', 'People-Black-Sweater', 619),
('wwt1', 'RARE', 'uploads/RARE-Rust-Red-Top.jpg', 'RARE Rust Red Printed Off-Shoulder Blouson Top ', 259),
('wwt2', 'RARE', 'uploads/RARE-Black-Printed top.jpg', 'BLACK LACE PRINTED TOP ', 500),
('wwt3', 'Harpa Women Tops', 'uploads/Harpa-Women-Tops.jpg', 'CASUAL TOP FOR GREAT SUMMER ', 699),
('wwt4', '  RED TRANSPARENT AT THE ARMS ', 'uploads/Cation-Women-REDTops.jpg', 'RED HOT TOPFOR EVERY BEAUTIFUL LADY. ', 599),
('wwt5', '  BLUE AND WHITE STRIPES TOP ', 'uploads/top1.1.jpg', 'ELEGANT STRIPE TOP FOR COLLEGE WEAR. ', 459);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `men`
--
ALTER TABLE `men`
  ADD PRIMARY KEY (`pid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
