-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 17 Mar 2023, 07:53
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `cms`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `image_file` varchar(200) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `published_at`, `image_file`, `category_id`) VALUES
(1, 'English Cocker Spaniel', 'English Cocker Spaniel lovers often use the word \'merry\' to describe their breed. Upbeat in the field and mellow at home, this compact, silky-coated bird dog is widely admired for his delightful personality and irresistible good looks.\r\n\r\nThe English Cocker Spaniel is a compactly built sporting dog standing between 15 to 17 inches at the shoulder. The softly contoured head, with its dark, melting eyes that convey an alert and dignified expression, is framed by lush, close-lying ears. The medium-length coat, seen in a variety of striking colors and patterns, is silky to the touch. \'Balance\' is a key word in understanding the breed: The EC is balanced in temperament, construction, and movement. Beneath the EC\'s physical beauty beats the heart of a tireless, eager-to-please hunter\'s helper, famous the world over for his ability to flush and retrieve gamebirds. For those who prefer more domestic pursuits, there is no more charming and agreeable household companion.', '2023-02-25 05:20:13', 'cocer-1.jpg', 1),
(2, 'Australian Shepherd', 'The Australian Shepherd, a lean, tough ranch dog, is one of those \'only in America\' stories: a European breed perfected in California by way of Australia. Fixtures on the rodeo circuit, they are closely associated with the cowboy life. The Australian Shepherd, the cowboy\'s herding dog of choice, is a medium-sized worker with a keen, penetrating gaze in the eye. Aussie coats offer different looks, including merle (a mottled pattern with contrasting shades of blue or red). In all ways, they\'re the picture of rugged and agile movers of stock. Aussies exhibit an irresistible impulse to herd, anything: birds, dogs, kids. This strong work drive can make Aussies too much dog for a sedentary pet owner. Aussies are remarkably intelligent, quite capable of hoodwinking an unsuspecting novice owner. In short, this isn\'t the pet for everyone. But if you\'re looking for a brainy, tireless, and trainable partner for work or sport, your search might end here.', '2023-02-25 15:23:00', 'aust.jpg', 1),
(3, 'Akita', 'The Akita is a muscular, double-coated dog of ancient Japanese lineage famous for their dignity, courage, and loyalty. In their native land, they\'re venerated as family protectors and symbols of good health, happiness, and long life.\r\nAkitas are burly, heavy-boned spitz-type dogs of imposing stature. Standing 24 to 28 inches at the shoulder, Akitas have a dense coat that comes in several colors, including white. The head is broad and massive, and is balanced in the rear by a full, curled-over tail. The erect ears and dark, shining eyes contribute to an expression of alertness, a hallmark of the breed. Akitas are quiet, fastidious dogs. Wary of strangers and often intolerant of other animals, Akitas will gladly share their silly, affectionate side with family and friends. They thrive on human companionship. The large, independent-thinking Akita is hardwired for protecting those they love. They must be well socialized from birth with people and other dogs.', '2023-03-10 13:17:06', 'akita.jpg', 1),
(4, 'Dalmatian', 'The dignified Dalmatian, dogdom\'s citizen of the world, is famed for his spotted coat and unique job description. During their long history, these \"coach dogs\" have accompanied the horse-drawn rigs of nobles, gypsies, and firefighters. The Dalmatian\'s delightful, eye-catching spots of black or liver adorn one of the most distinctive coats in the animal kingdom. Beneath the spots is a graceful, elegantly proportioned trotting dog standing between 19 and 23 inches at the shoulder. Dals are muscular, built to go the distance; the powerful hindquarters provide the drive behind the smooth, effortless gait. The Dal was originally bred to guard horses and coaches, and some of the old protective instinct remains. Reserved and dignified, Dals can be aloof with strangers and are dependable watchdogs. With their preferred humans, Dals are bright, loyal, and loving house dogs. They are strong, active athletes with great stamina\'¿a wonderful partner for runners and hikers.', '2023-03-09 08:13:09', 'dalamt.jpg', 1),
(5, 'Japanese Chin', 'AnythingsThe Japanese Chin is a charming toy companion of silky, profuse coat and an unmistakably aristocratic bearing. Often described as a distinctly \'feline\' breed, this bright and amusing lapdog is fastidious, graceful, and generally quiet. Chin are the unrivaled noblemen of Japanese breeds. They\'re tiny \'indoorsy\' companions, with an unmistakably Eastern look and bearing. The head is large, the muzzle short, and the round, dark eyes convey, as Chin fans like to say, a \'look of astonishment.\' The profuse mane around the neck and shoulders, the plumed tail arching over the back, and the pants or \'culottes\' on the hind legs project the elegant, exotic appearance so typical of Asia\'s royal line of laptop cuddle bugs.', '2023-03-12 14:17:06', 'pekin2.jpg', 1),
(6, 'Dachshund', 'The famously long, low silhouette, ever-alert expression, and bold, vivacious personality of the Dachshund have made him a superstar of the canine kingdom. Dachshunds come in two sizes and in three coat types of various colors and patterns. The word \'icon\' is terribly overworked, but the Dachshund\'¿with his unmistakable long-backed body, little legs, and big personality\'is truly an icon of purebred dogdom. Dachshunds can be standard-sized (usually 16 to 32 pounds) or miniature (11 pounds or under), and come in one of three coat types: smooth, wirehaired, or longhaired. Dachshunds aren\'t built for distance running, leaping, or strenuous swimming, but otherwise these tireless hounds are game for anything. Smart and vigilant, with a big-dog bark, they make fine watchdogs. Bred to be an independent hunter of dangerous prey, they can be brave to the point of rashness, and a bit stubborn, but their endearing nature and unique look has won millions of hearts the world over.', '2023-03-07 09:07:09', 'jamnik.jpg', 1),
(7, 'Chow Chow', 'The Chow Chow, an all-purpose dog of ancient China, presents the picture of a muscular, deep-chested aristocrat with an air of inscrutable timelessness. Dignified, serious-minded, and aloof, the Chow Chow is a breed of unique delights. Chows are powerful, compactly built dogs standing as high as 20 inches at the shoulder. Their distinctive traits include a lion\'s-mane ruff around the head and shoulders; a blue-black tongue; deep-set almond eyes that add to a scowling, snobbish expression; and a stiff-legged gait. Chows can have rough or smooth coats of red, black, blue, cinnamon, or cream. Owners say Chows are the cleanest of dogs: They housebreak easily, have little doggy odor, and are known to be as fastidious as cats. Well-socialized Chows are never fierce or intractable, but always refined and dignified. They are aloof with strangers and eternally loyal to loved ones. Serene and adaptable, with no special exercise needs, Chows happily take to city life.', '2023-02-26 14:17:06', 'chow-chow.jpg', 1),
(8, 'Bengal', 'Bengal cats are an intelligent and active breed prized for their boldly patterned coats. Descended from domestic cats and wild Asian leopard cats, they make affectionate and gentle pets.\r\nThe first time you see a Bengal cat roaming through your house, you might think a jungle cat has broken in. That\'s because this spectacular breed sports a spotted or marbled coat that looks a lot like a wild leopard or ocelot. But the Bengal is anything but wild, and has a loving, affectionate personality. While Bengals were developed by breeding domestic felines to an Asian leopard cat, their wild natures have long been abandoned.', '2023-02-13 12:23:14', 'kot-bengalski-6.jpeg', 2),
(216, 'Maine Coon', 'Myths, legend and lore surround the Maine Coon Cat. Some are amusing, some are fantastic flights of fantasy and some are merely plausible. They certainly provide good material for conversation. Many books and articles dealing with these aspects of the Maine Coon Cat are available and have been well received as people never seem to tire of the subject and are always eager to learn more about this National Treasure.\r\nThe Maine Coon Cat is the native American long-haired cat and was first recognized as a specific breed in Maine where it was named the official cat of the state. These cats were held in high regard by the locals for their mousing talents and special competitions were even held to reward the best “Coon Cat.”', '2023-03-06 18:43:39', 'mainecoon.jpg', NULL),
(217, 'Persian', 'As the dusty desert caravans wound their way westward from Persia and Iran, it is supposed that secreted among the rare spices and jewels on the basket-laden camels was an even more precious cargo, an occasional longhair cat. They were called Persian for their “country of origin,” but hieroglyphic references as early as 1684 B.C. shroud forever their exact beginnings. Persians, with their luxurious coats and open pansy-like faces are the number one breed in popularity. Their sweet, gentle, personalities blend into most households once they feel secure in their new environment. Creatures of habit, they are most at home in an atmosphere of security and serenity, but with love and reassurance, can easily adapt to the most boisterous of households. Their quiet, melodious voices are pleasant and non-abrasive. They communicate delightfully with their large expressive eyes and make charming pets for all ages. Persians have short heavilyboned legs to support their broad, short bodies. They like to have their feet firmly planted and are not given to high jumping and climbing. Playful but never demanding, they love to pose and will drape themselves in a favorite window or chair, enhancing the decor in much the same way as a treasured painting. Persians are tremendously responsive and become a constant source of joy and delight to their owners. Pleasurable as an unexpected sunbeam, their companionship is close and enduring.', '2023-03-06 18:47:31', 'kot-perski.jpg', NULL),
(218, 'Sphynx', 'In 1966 a domestic cat gave birth to a hairless kitten in Toronto Canada. It was discovered to be a natural genetic mutation and the Sphynx cat, as we know it today, came into existence. This cat and a few other naturally hairless cats have been found worldwide; produced by Mother Nature, they are the foundation for this unusual breed. Cat breeders in North America and Europe have bred the Sphynx to normal coated cats and back to hairless cats for more than thirty years. The purpose of selective breeding such as this was to create a genetically sound cat with a large gene pool and hybrid vigor. When properly bred, the Sphynx is a very robust breed with few serious health or genetic problems. Sphynx are not always totally hairless and there are different degrees of “hairlessness.” There can be a fine down on the body which makes the cat feel like a warm peach. Some short hair is usually present on the nose, ears and sometimes on toes and tail. Seasonal and hormonal changes in the cat may also effect hair development. The texture of Sphynx skin has been compared to a suede hot water bottle or warm chamois, and some cats almost have a buttery feel to the skin. The skin is loose on the body which leads to that extra wrinkling effect you see on the cat.', '2023-03-07 18:51:35', 'Kot_sfinks.jpg', NULL),
(219, 'British Shorthair', 'Compared to most shorthair breeds, British Shorthairs are relatively calm cats when they mature. They are easygoing in nature and talk infrequently. Very affectionate, they become quite attached to the people they own. British Shorthairs are easily trained and very adaptable. They seem to get along well with all human members of the household, regardless of age, but are usually not fond of being carried. Pets of all kinds have been kept with British Shorthairs, including dogs of all sizes, rabbits, and birds. British Shorthairs are not known for being acrobats and can tend to be clumsy at times. No breed specific, health related problems plague the British Shorthair. These are sturdy, dense-coated, purring, teddy bear cats with large round eyes. Another thing that draws people to the British Shorthair is their size. Although they are not huge like the Maine Coon, they are a medium to large cat. They are a slow maturing breed and do not reach their full size until three years of age. Mature males average nine to seventeen pounds, and mature females average seven to twelve pounds. Although most people think of them as being blue cats, they come in a number of colors and patterns. Not every blue cat is a British Shorthair. It is still considered one of the minority breeds in CFA.', '2023-03-12 18:56:27', 'bryt.jpg', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `article_category`
--

CREATE TABLE `article_category` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `article_category`
--

INSERT INTO `article_category` (`article_id`, `category_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 2),
(205, 2),
(205, 4),
(211, 1),
(213, 1),
(216, 2),
(217, 2),
(218, 2),
(219, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(2, 'Cat'),
(1, 'Dog'),
(3, 'Fish');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'sandra', '$2y$10$DtrMhuGbIcePOkkGd6kC1ONLcP3q3htPyhOk8757GgrHvBrZl.6wO');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `category_id` (`category_id`) USING BTREE;

--
-- Indeksy dla tabeli `article_category`
--
ALTER TABLE `article_category`
  ADD UNIQUE KEY `article_id` (`article_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeksy dla tabeli `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT dla tabeli `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
