-- User table
-- Stores basic user information including their role in the system
CREATE TABLE "User" (
    UserID SERIAL PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Role VARCHAR(50) NOT NULL
);

--User 
INSERT INTO "User" (Username, Email, Password, Role)
VALUES 
('user1', 'user1@email.com', 'pass1', 'Host'),
('user2', 'user2@email.com', 'pass2', 'Guest'),
('user3', 'user3@email.com', 'pass3', 'Host'),
('user4', 'user4@email.com', 'pass4', 'Guest'),
('user5', 'user5@email.com', 'pass5', 'Host'),
('user6', 'user6@email.com', 'pass6', 'Guest'),
('user7', 'user7@email.com', 'pass7', 'Host'),
('user8', 'user8@email.com', 'pass8', 'Guest'),
('user9', 'user9@email.com', 'pass9', 'Host'),
('user10', 'user10@email.com', 'pass10', 'Guest'),
('user11', 'user11@email.com', 'pass11', 'Host'),
('user12', 'user12@email.com', 'pass12', 'Guest'),
('user13', 'user13@email.com', 'pass13', 'Host'),
('user14', 'user14@email.com', 'pass14', 'Guest'),
('user15', 'user15@email.com', 'pass15', 'Host'),
('user16', 'user16@email.com', 'pass16', 'Guest'),
('user17', 'user17@email.com', 'pass17', 'Host'),
('user18', 'user18@email.com', 'pass18', 'Guest'),
('user19', 'user19@email.com', 'pass19', 'Host'),
('user20', 'user20@email.com', 'pass20', 'Guest');


-- Profile table
-- Holds detailed profile information for both hosts and guests. This includes full name,  contact details, and a short biography.
CREATE TABLE Profile (
    ProfileID SERIAL PRIMARY KEY,
    UserID INTEGER REFERENCES "User"(UserID),
    FullName VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(50),
    ProfileImage VARCHAR(255),
    Bio TEXT
);

--Profile table 

INSERT INTO Profile (UserID, FullName, PhoneNumber, ProfileImage, Bio)
VALUES
(1, 'John Doe', '1234567890', 'image_url_1', 'Bio of John Doe'),
(2, 'Jane Smith', '0987654321', 'image_url_2', 'Bio of Jane Smith'),
(3, 'Alice Johnson', '2345678901', 'image_url_3', 'Bio of Alice Johnson'),
(4, 'Bob Brown', '3456789012', 'image_url_4', 'Bio of Bob Brown'),
(5, 'Charlie Davis', '4567890123', 'image_url_5', 'Bio of Charlie Davis'),
(6, 'Diana Evans', '5678901234', 'image_url_6', 'Bio of Diana Evans'),
(7, 'Ethan Foster', '6789012345', 'image_url_7', 'Bio of Ethan Foster'),
(8, 'Fiona Green', '7890123456', 'image_url_8', 'Bio of Fiona Green'),
(9, 'George Harris', '8901234567', 'image_url_9', 'Bio of George Harris'),
(10, 'Hannah Irvine', '9012345678', 'image_url_10', 'Bio of Hannah Irvine'),
(11, 'Ian Jenkins', '0123456789', 'image_url_11', 'Bio of Ian Jenkins'),
(12, 'Julia Knight', '1234509876', 'image_url_12', 'Bio of Julia Knight'),
(13, 'Kevin Lee', '2345610987', 'image_url_13', 'Bio of Kevin Lee'),
(14, 'Laura Martin', '3456721098', 'image_url_14', 'Bio of Laura Martin'),
(15, 'Mike Nelson', '4567832109', 'image_url_15', 'Bio of Mike Nelson'),
(16, 'Nina Olsen', '5678943210', 'image_url_16', 'Bio of Nina Olsen'),
(17, 'Oliver Perez', '6789054321', 'image_url_17', 'Bio of Oliver Perez'),
(18, 'Patricia Quinn', '7890165432', 'image_url_18', 'Bio of Patricia Quinn'),
(19, 'Richard Reed', '8901276543', 'image_url_19', 'Bio of Richard Reed'),
(20, 'Samantha Stone', '9012387654', 'image_url_20', 'Bio of Samantha Stone');

-- Location table
-- Contains geographical information related to properties, including address, city, and country.
CREATE TABLE Location (
    LocationID SERIAL PRIMARY KEY,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(255) NOT NULL,
    Country VARCHAR(255) NOT NULL
);

--Location Table 

INSERT INTO Location (Address, City, Country)
VALUES
('123 Main St', 'New York', 'USA'),
('456 Ocean Ave', 'Los Angeles', 'USA'),
('789 Park Blvd', 'Chicago', 'USA'),
('101 North Rd', 'Houston', 'USA'),
('202 South St', 'Phoenix', 'USA'),
('303 East Ln', 'Philadelphia', 'USA'),
('404 West Dr', 'San Antonio', 'USA'),
('505 Central Pl', 'San Diego', 'USA'),
('606 Mountain Rd', 'Dallas', 'USA'),
('707 Hill St', 'San Jose', 'USA'),
('808 Lake Ave', 'Austin', 'USA'),
('909 River Ln', 'Jacksonville', 'USA'),
('1010 Forest Blvd', 'Fort Worth', 'USA'),
('1111 Beach Dr', 'Columbus', 'USA'),
('1212 Valley Rd', 'San Francisco', 'USA'),
('1313 Desert Blvd', 'Charlotte', 'USA'),
('1414 Port St', 'Indianapolis', 'USA'),
('1515 Timber Ln', 'Seattle', 'USA'),
('1616 Orchard St', 'Denver', 'USA'),
('1717 Vineyard Ave', 'Washington', 'USA');

-- Category table
-- Classifies properties into different types or categories, like apartment, villa, etc.
CREATE TABLE Category (
    CategoryID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

--Category Table

INSERT INTO Category (Name)
VALUES
('Apartment'),
('House'),
('Villa'),
('Cottage'),
('Loft'),
('Studio'),
('Condo'),
('Bungalow'),
('Townhouse'),
('Cabin'),
('Farmhouse'),
('Chalet'),
('Mansion'),
('Penthouse'),
('Boat'),
('Castle'),
('Dorm'),
('Treehouse'),
('Yurt'),
('RV');

-- Property table 
-- Contains details of properties available for rent. Includes information about the host, property name, description, pricing, and location.
CREATE TABLE Property (
    PropertyID SERIAL PRIMARY KEY,
    HostID INTEGER REFERENCES "User"(UserID),
    Name VARCHAR(255) NOT NULL,
    Description TEXT,
    CategoryID INTEGER REFERENCES Category(CategoryID),  
    LocationID INTEGER REFERENCES Location(LocationID),  
    Price DECIMAL NOT NULL
);

--Property table 

INSERT INTO Property (HostID, Name, Description, CategoryID, LocationID, Price)
VALUES
(1, 'Lovely Apartment', 'A cozy apartment in the city center', 1, 1, 100.00),
(1, 'Beach House', 'Beautiful beach house with ocean view', 2, 2, 150.00),
(2, 'Mountain Cabin', 'Secluded cabin in the mountains', 3, 3, 200.00),
(2, 'Urban Loft', 'Modern loft in a trendy neighborhood', 4, 4, 120.00),
(3, 'Country Cottage', 'Charming cottage in the countryside', 5, 5, 90.00),
(3, 'Lakefront Villa', 'Luxurious villa on the lakeside', 6, 6, 250.00),
(4, 'Downtown Studio', 'Compact studio in the downtown area', 1, 7, 80.00),
(4, 'Suburban House', 'Spacious house in a quiet suburb', 2, 8, 110.00),
(5, 'Desert Bungalow', 'Bungalow with stunning desert views', 3, 9, 130.00),
(5, 'Sky High Penthouse', 'Penthouse with panoramic city views', 4, 10, 300.00),
(6, 'Forest Retreat', 'Tranquil retreat in the forest', 5, 11, 160.00),
(6, 'Oceanfront Condo', 'Condo overlooking the ocean', 6, 12, 140.00),
(7, 'Historic Townhouse', 'Townhouse in a historic district', 1, 13, 115.00),
(7, 'Island Getaway', 'Private getaway on a small island', 2, 14, 220.00),
(8, 'Rural Farmhouse', 'Farmhouse in a rural setting', 3, 15, 85.00),
(8, 'City Center High-rise', 'High-rise apartment in the city center', 4, 16, 105.00),
(9, 'Seaside Cottage', 'Cozy cottage by the sea', 5, 17, 95.00),
(9, 'Luxury Mansion', 'Expansive mansion with luxurious amenities', 6, 18, 400.00),
(10, 'Victorian Home', 'Elegant Victorian home with classic charm', 1, 19, 125.00),
(10, 'Modern Flat', 'Sleek and modern flat in the city', 4, 20, 135.00);


-- Booking table 
-- Manages booking information made by guests. It links properties with guests and includes check-in and check-out dates.
CREATE TABLE Booking (
    BookingID SERIAL PRIMARY KEY,
    PropertyID INTEGER REFERENCES Property(PropertyID),
    GuestID INTEGER REFERENCES "User"(UserID),
    CheckInDate DATE NOT NULL,
    CheckOutDate DATE NOT NULL
);

--Booking table 

INSERT INTO Booking (PropertyID, GuestID, CheckInDate, CheckOutDate)
VALUES
(1, 2, '2023-01-10', '2023-01-15'),
(2, 4, '2023-02-12', '2023-02-17'),
(3, 6, '2023-03-15', '2023-03-20'),
(4, 8, '2023-04-18', '2023-04-23'),
(5, 10, '2023-05-20', '2023-05-25'),
(6, 12, '2023-06-22', '2023-06-27'),
(7, 14, '2023-07-24', '2023-07-29'),
(8, 16, '2023-08-26', '2023-08-31'),
(9, 18, '2023-09-28', '2023-10-03'),
(10, 20, '2023-10-30', '2023-11-04'),
(11, 2, '2023-11-06', '2023-11-11'),
(12, 4, '2023-12-08', '2023-12-13'),
(13, 6, '2024-01-10', '2024-01-15'),
(14, 8, '2024-02-12', '2024-02-17'),
(15, 10, '2024-03-15', '2024-03-20'),
(16, 12, '2024-04-18', '2024-04-23'),
(17, 14, '2024-05-20', '2024-05-25'),
(18, 16, '2024-06-22', '2024-06-27'),
(19, 18, '2024-07-24', '2024-07-29'),
(20, 20, '2024-08-26', '2024-08-31');

-- Review table
-- Stores reviews left by guests for properties and by hosts for guests. Includes the content of the review and a rating score.
CREATE TABLE Review (
    ReviewID SERIAL PRIMARY KEY,
    BookingID INTEGER REFERENCES Booking(BookingID),
    Content TEXT NOT NULL,
    Rating INTEGER NOT NULL CHECK (Rating BETWEEN 1 AND 5)
);

--Review Table 

INSERT INTO Review (BookingID, Content, Rating)
VALUES
(1, 'Great place to stay!', 5),
(2, 'Loved the beach house!', 4),
(3, 'Amazing mountain view', 5),
(4, 'Stylish and comfortable loft', 4),
(5, 'Tranquil and cozy cottage', 5),
(6, 'Fantastic lakeside experience', 4),
(7, 'Perfect for downtown access', 5),
(8, 'Quiet and spacious suburban house', 4),
(9, 'Unique desert landscape', 5),
(10, 'Incredible city views from penthouse', 4),
(11, 'Peaceful forest retreat', 5),
(12, 'Breathtaking oceanfront view', 4),
(13, 'Charming and historical townhouse', 5),
(14, 'Private and serene island stay', 4),
(15, 'Authentic rural living experience', 5),
(16, 'Convenient high-rise in city center', 4),
(17, 'Cozy seaside cottage charm', 5),
(18, 'Opulent and luxurious mansion', 4),
(19, 'Beautiful Victorian architecture', 5),
(20, 'Sleek modernity in city flat', 4);

-- PaymentMethod table
-- Describes various types of payment methods available, such as credit card, PayPal, etc., and their details.
CREATE TABLE PaymentMethod (
    PaymentMethodID SERIAL PRIMARY KEY,
    Type VARCHAR(255) NOT NULL,
    Details TEXT
);

--PaymentMethod Table 

INSERT INTO PaymentMethod (Type, Details)
VALUES
('Credit Card', 'Card Type: Visa, Number: **** **** **** 1234'),
('PayPal', 'Account: user@example.com'),
('Credit Card', 'Card Type: MasterCard, Number: **** **** **** 2345'),
('Bank Transfer', 'Account Number: 987654321, Bank: XYZ Bank'),
('Debit Card', 'Card Type: National Bank, Number: **** **** **** 3456'),
('Credit Card', 'Card Type: Amex, Number: **** **** **** 4567'),
('Mobile Payment', 'Provider: PayMobile, User ID: 12345'),
('PayPal', 'Account: user2@example.com'),
('Credit Card', 'Card Type: Discover, Number: **** **** **** 5678'),
('Bank Transfer', 'Account Number: 876543219, Bank: ABC Bank'),
('Debit Card', 'Card Type: Global Bank, Number: **** **** **** 6789'),
('Credit Card', 'Card Type: Visa, Number: **** **** **** 7890'),
('Mobile Payment', 'Provider: EasyPay, User ID: 23456'),
('PayPal', 'Account: user3@example.com'),
('Credit Card', 'Card Type: MasterCard, Number: **** **** **** 8901'),
('Bank Transfer', 'Account Number: 765432198, Bank: DEF Bank'),
('Debit Card', 'Card Type: Local Bank, Number: **** **** **** 9012'),
('Credit Card', 'Card Type: Amex, Number: **** **** **** 0123'),
('Mobile Payment', 'Provider: QuickPay, User ID: 34567'),
('PayPal', 'Account: user4@example.com');

-- Transaction table
-- Details about payment transactions associated with bookings. Includes information about the payment method and transaction amount.
CREATE TABLE Transaction (
    TransactionID SERIAL PRIMARY KEY,
    BookingID INTEGER REFERENCES Booking(BookingID),
    PaymentMethodID INTEGER,
    Amount DECIMAL NOT NULL
);

--Transaction Table 

INSERT INTO Transaction (BookingID, PaymentMethodID, Amount)
VALUES
(1, 1, 700.00),
(2, 2, 750.00),
(3, 1, 800.00),
(4, 2, 650.00),
(5, 1, 550.00),
(6, 2, 900.00),
(7, 1, 400.00),
(8, 2, 500.00),
(9, 1, 700.00),
(10, 2, 1000.00),
(11, 1, 850.00),
(12, 2, 650.00),
(13, 1, 450.00),
(14, 2, 950.00),
(15, 1, 500.00),
(16, 2, 600.00),
(17, 1, 700.00),
(18, 2, 1100.00),
(19, 1, 550.00),
(20, 2, 600.00);

-- Amenity table
-- Lists amenities provided within properties, such as Wi-Fi, swimming pool, etc., with a brief description of each.
CREATE TABLE Amenity (
    AmenityID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description TEXT
);

--Amenity Table

INSERT INTO Amenity (Name, Description)
VALUES
('Wi-Fi', 'High-speed wireless internet'),
('Air Conditioning', 'Central air conditioning system'),
('Pool', 'Outdoor swimming pool'),
('Parking', 'Secure on-site parking available'),
('Fitness Center', 'Fully equipped gym and fitness center'),
('Pet Friendly', 'Accommodations for guests with pets'),
('Breakfast', 'Complimentary breakfast service'),
('Spa', 'On-site spa and wellness center'),
('Restaurant', 'In-house restaurant offering various cuisines'),
('Bar', 'On-site bar with a range of beverages'),
('Laundry', 'Laundry and dry cleaning services'),
('Room Service', '24-hour room service available'),
('Housekeeping', 'Daily housekeeping and cleaning services'),
('Security', '24-hour security and surveillance'),
('Concierge', 'Concierge services for travel and entertainment'),
('Cable TV', 'Cable television in each room'),
('Kitchen', 'Fully equipped kitchen'),
('Hot Tub', 'Private hot tub or jacuzzi'),
('Balcony', 'Rooms with private balcony'),
('Garden', 'Access to a garden or outdoor area');

-- PropertyAmenity linking table between Property and Amenity
-- Supports the many-to-many relationship between properties and amenities. Indicates which amenities are available in which properties.
CREATE TABLE PropertyAmenity (
    PropertyID INTEGER REFERENCES Property(PropertyID),
    AmenityID INTEGER REFERENCES Amenity(AmenityID),
    PRIMARY KEY (PropertyID, AmenityID)
);

--PropertyAmenity Table

INSERT INTO PropertyAmenity (PropertyID, AmenityID)
VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 2),
(3, 4),
(4, 1),
(4, 3),
(5, 2),
(5, 5),
(6, 1),
(6, 4),
(7, 3),
(7, 5),
(8, 2),
(8, 4),
(9, 1),
(9, 5),
(10, 2),
(10, 3),
(11, 1),
(11, 4),
(12, 2),
(12, 5),
(13, 1),
(13, 3),
(14, 4),
(14, 5),
(15, 2),
(15, 3),
(16, 1),
(16, 4),
(17, 2),
(17, 5),
(18, 1),
(18, 3),
(19, 4),
(19, 5),
(20, 2),
(20, 3);

-- Image table
-- Holds URLs to images related to properties, enabling visual representation of listed properties.
CREATE TABLE Image (
    ImageID SERIAL PRIMARY KEY,
    PropertyID INTEGER REFERENCES Property(PropertyID),
    URL VARCHAR(255) NOT NULL
);

--Image Table 

INSERT INTO Image (PropertyID, URL)
VALUES
(1, 'image_url_property_1.jpg'),
(2, 'image_url_property_2.jpg'),
(3, 'image_url_property_3.jpg'),
(4, 'image_url_property_4.jpg'),
(5, 'image_url_property_5.jpg'),
(6, 'image_url_property_6.jpg'),
(7, 'image_url_property_7.jpg'),
(8, 'image_url_property_8.jpg'),
(9, 'image_url_property_9.jpg'),
(10, 'image_url_property_10.jpg'),
(11, 'image_url_property_11.jpg'),
(12, 'image_url_property_12.jpg'),
(13, 'image_url_property_13.jpg'),
(14, 'image_url_property_14.jpg'),
(15, 'image_url_property_15.jpg'),
(16, 'image_url_property_16.jpg'),
(17, 'image_url_property_17.jpg'),
(18, 'image_url_property_18.jpg'),
(19, 'image_url_property_19.jpg'),
(20, 'image_url_property_20.jpg');

-- Notification table
-- Manages notifications sent to users. This can include booking confirmations, reminders, and other alerts.
CREATE TABLE Notification (
    NotificationID SERIAL PRIMARY KEY,
    UserID INTEGER REFERENCES "User"(UserID),
    Content TEXT NOT NULL
);

--Notification Table 

INSERT INTO Notification (UserID, Content)
VALUES
(1, 'Your booking is confirmed'),
(2, 'Reminder: Check-in is tomorrow'),
(3, 'New message from your host'),
(4, 'Payment received for your recent booking'),
(5, 'Your review has been published'),
(6, 'Update: Your booking details have changed'),
(7, 'Promotion: Special discount on your next booking'),
(8, 'Reminder: Check-out is tomorrow'),
(9, 'Welcome to our loyalty program'),
(10, 'Notification: Maintenance scheduled in your area'),
(11, 'Your account has been updated successfully'),
(12, 'Alert: Unusual activity detected on your account'),
(13, 'Thank you for referring a friend'),
(14, 'Invitation: Exclusive event for premium members'),
(15, 'Your wishlist property is now available'),
(16, 'Update: Terms and conditions have changed'),
(17, 'Survey: We value your feedback'),
(18, 'Reminder: Upcoming reservation'),
(19, 'Special offer just for you'),
(20, 'Important: Account verification needed');


-- Rating table
-- Stores the numerical rating scores given to properties and hosts, usually as part of a review.
CREATE TABLE Rating (
    RatingID SERIAL PRIMARY KEY,
    ReviewID INTEGER REFERENCES Review(ReviewID),
    Score INTEGER NOT NULL CHECK (Score BETWEEN 1 AND 5)
);

--Rating Table 

INSERT INTO Rating (ReviewID, Score)
VALUES
(1, 5),
(2, 4),
(3, 5),
(4, 4),
(5, 3),
(6, 5),
(7, 4),
(8, 3),
(9, 5),
(10, 4),
(11, 3),
(12, 5),
(13, 4),
(14, 3),
(15, 5),
(16, 4),
(17, 3),
(18, 5),
(19, 4),
(20, 3);


-- Event table
-- Manages special events or offers related to properties, including event names and their start and end dates.
CREATE TABLE Event (
    EventID SERIAL PRIMARY KEY,
    PropertyID INTEGER REFERENCES Property(PropertyID),
    Name VARCHAR(255) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL
);

--Event Table

INSERT INTO Event (PropertyID, Name, StartDate, EndDate)
VALUES
(1, 'Summer Special', '2023-06-01', '2023-06-30'),
(2, 'Winter Wonderland', '2023-12-01', '2023-12-31'),
(3, 'Spring Festival', '2023-04-01', '2023-04-30'),
(4, 'Autumn Retreat', '2023-10-01', '2023-10-31'),
(5, 'Music Concert Weekend', '2023-07-15', '2023-07-17'),
(6, 'New Year Celebration', '2023-12-31', '2024-01-02'),
(7, 'Art and Wine Fair', '2023-08-10', '2023-08-12'),
(8, 'Health and Wellness Retreat', '2023-05-05', '2023-05-10'),
(9, 'Gourmet Food Week', '2023-09-20', '2023-09-27'),
(10, 'Photography Workshop', '2023-11-11', '2023-11-13'),
(11, 'Film Festival', '2023-03-03', '2023-03-10'),
(12, 'Book Lovers Weekend', '2023-04-21', '2023-04-23'),
(13, 'Beach Volleyball Tournament', '2023-06-14', '2023-06-16'),
(14, 'Yoga and Meditation Camp', '2023-07-07', '2023-07-09'),
(15, 'Jazz Nights', '2023-08-28', '2023-08-30'),
(16, 'Historical Exhibition', '2023-10-15', '2023-10-20'),
(17, 'Cultural Dance Festival', '2023-05-25', '2023-05-30'),
(18, 'Family Fun Weekend', '2023-09-05', '2023-09-07'),
(19, 'Tech Conference', '2023-11-20', '2023-11-22'),
(20, 'Gardening Workshop', '2023-03-15', '2023-03-17');


-- Administrator table
-- Contains information about administrators managing the platform. Includes admin credentials.
CREATE TABLE Administrator (
    AdminID SERIAL PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL -- It's recommended to store hashed passwords, not plain text.
);

--Administrator Table 

INSERT INTO Administrator (Username, Password)
VALUES
('admin1', 'hashed_password1'),
('admin2', 'hashed_password2'),
('admin3', 'hashed_password3'),
('admin4', 'hashed_password4'),
('admin5', 'hashed_password5'),
('admin6', 'hashed_password6'),
('admin7', 'hashed_password7'),
('admin8', 'hashed_password8'),
('admin9', 'hashed_password9'),
('admin10', 'hashed_password10'),
('admin11', 'hashed_password11'),
('admin12', 'hashed_password12'),
('admin13', 'hashed_password13'),
('admin14', 'hashed_password14'),
('admin15', 'hashed_password15'),
('admin16', 'hashed_password16'),
('admin17', 'hashed_password17'),
('admin18', 'hashed_password18'),
('admin19', 'hashed_password19'),
('admin20', 'hashed_password20');


-- Analyst table
-- Holds details about analysts who access and analyze the data. Includes analyst usernames and passwords.
CREATE TABLE Analyst (
    AnalystID SERIAL PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL -- Again, store hashed passwords.
);

--Analyst Table 

INSERT INTO Analyst (Username, Password)
VALUES
('analyst1', 'hashed_password1'),
('analyst2', 'hashed_password2'),
('analyst3', 'hashed_password3'),
('analyst4', 'hashed_password4'),
('analyst5', 'hashed_password5'),
('analyst6', 'hashed_password6'),
('analyst7', 'hashed_password7'),
('analyst8', 'hashed_password8'),
('analyst9', 'hashed_password9'),
('analyst10', 'hashed_password10'),
('analyst11', 'hashed_password11'),
('analyst12', 'hashed_password12'),
('analyst13', 'hashed_password13'),
('analyst14', 'hashed_password14'),
('analyst15', 'hashed_password15'),
('analyst16', 'hashed_password16'),
('analyst17', 'hashed_password17'),
('analyst18', 'hashed_password18'),
('analyst19', 'hashed_password19'),
('analyst20', 'hashed_password20');


-- Report table
-- Manages reports generated within the system, primarily by analysts, for various purposes like data analysis and decision-making.
CREATE TABLE Report (
    ReportID SERIAL PRIMARY KEY,
    AnalystID INTEGER REFERENCES Analyst(AnalystID),
    Content TEXT NOT NULL
);

--Report Table 

INSERT INTO Report (AnalystID, Content)
VALUES
(1, 'Report content 1'),
(2, 'Report content 2'),
(3, 'Report content 3'),
(4, 'Report content 4'),
(5, 'Report content 5'),
(6, 'Report content 6'),
(7, 'Report content 7'),
(8, 'Report content 8'),
(9, 'Report content 9'),
(10, 'Report content 10'),
(11, 'Report content 11'),
(12, 'Report content 12'),
(13, 'Report content 13'),
(14, 'Report content 14'),
(15, 'Report content 15'),
(16, 'Report content 16'),
(17, 'Report content 17'),
(18, 'Report content 18'),
(19, 'Report content 19'),
(20, 'Report content 20');


-- Connection table
-- Manages social network connections for users, storing links to their social profiles and the type of social network.
CREATE TABLE Connection (
    ConnectionID SERIAL PRIMARY KEY,
    UserID INTEGER REFERENCES "User"(UserID),
    SocialNetwork VARCHAR(255) NOT NULL,
    Link VARCHAR(255) NOT NULL
);

--Connection Table

INSERT INTO Connection (UserID, SocialNetwork, Link)
VALUES
(1, 'Facebook', 'facebook.com/user1'),
(2, 'Twitter', 'twitter.com/user2'),
(3, 'LinkedIn', 'linkedin.com/user3'),
(4, 'Instagram', 'instagram.com/user4'),
(5, 'Pinterest', 'pinterest.com/user5'),
(6, 'Facebook', 'facebook.com/user6'),
(7, 'Twitter', 'twitter.com/user7'),
(8, 'LinkedIn', 'linkedin.com/user8'),
(9, 'Instagram', 'instagram.com/user9'),
(10, 'Pinterest', 'pinterest.com/user10'),
(11, 'Facebook', 'facebook.com/user11'),
(12, 'Twitter', 'twitter.com/user12'),
(13, 'LinkedIn', 'linkedin.com/user13'),
(14, 'Instagram', 'instagram.com/user14'),
(15, 'Pinterest', 'pinterest.com/user15'),
(16, 'Facebook', 'facebook.com/user16'),
(17, 'Twitter', 'twitter.com/user17'),
(18, 'LinkedIn', 'linkedin.com/user18'),
(19, 'Instagram', 'instagram.com/user19'),
(20, 'Pinterest', 'pinterest.com/user20');


-- Calendar table
-- Manages the availability calendar for properties. Tracks the dates and availability status for each property.
CREATE TABLE Calendar (
    CalendarID SERIAL PRIMARY KEY,
    PropertyID INTEGER REFERENCES Property(PropertyID),
    Date DATE NOT NULL,
    Availability BOOLEAN NOT NULL
);

--Calendar Table 

INSERT INTO Calendar (PropertyID, Date, Availability)
VALUES
(1, '2023-07-01', TRUE),
(1, '2023-07-02', FALSE),
(2, '2023-07-01', TRUE),
(2, '2023-07-02', TRUE),
(3, '2023-07-03', FALSE),
(3, '2023-07-04', TRUE),
(4, '2023-07-05', FALSE),
(4, '2023-07-06', TRUE),
(5, '2023-07-07', TRUE),
(5, '2023-07-08', FALSE),
(6, '2023-07-09', TRUE),
(6, '2023-07-10', TRUE),
(7, '2023-07-11', FALSE),
(7, '2023-07-12', TRUE),
(8, '2023-07-13', FALSE),
(8, '2023-07-14', TRUE),
(9, '2023-07-15', TRUE),
(9, '2023-07-16', FALSE),
(10, '2023-07-17', TRUE),
(10, '2023-07-18', TRUE);


-- Wishlist table
-- Allows users to save properties they are interested in. Links users with their preferred properties.
CREATE TABLE Wishlist (
    WishlistID SERIAL PRIMARY KEY,
    UserID INTEGER REFERENCES "User"(UserID),
    PropertyID INTEGER REFERENCES Property(PropertyID)
);

--Wishlist Table 

INSERT INTO Wishlist (UserID, PropertyID)
VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 1),
(11, 2),
(12, 3),
(13, 4),
(14, 5),
(15, 6),
(16, 7),
(17, 8),
(18, 9),
(19, 10),
(20, 1);


-- Message table
-- Facilitates messaging or communication between hosts and guests. Stores the content of the messages exchanged.
CREATE TABLE Message (
    MessageID SERIAL PRIMARY KEY,
    SenderID INTEGER REFERENCES "User"(UserID),
    ReceiverID INTEGER REFERENCES "User"(UserID),
    Content TEXT NOT NULL
);

--Message Table 

INSERT INTO Message (SenderID, ReceiverID, Content)
VALUES
(1, 2, 'Hello, can I book your property?'),
(2, 1, 'Yes, it is available!'),
(3, 4, 'Do you offer a discount for longer stays?'),
(4, 3, 'We can offer a 10% discount for stays over a week.'),
(5, 6, 'Is your property pet-friendly?'),
(6, 5, 'Yes, pets are welcome.'),
(7, 8, 'Can I check in earlier than the listed time?'),
(8, 7, 'Early check-in can be arranged.'),
(9, 10, 'Do you have Wi-Fi and a workspace?'),
(10, 9, 'We have high-speed Wi-Fi and a dedicated workspace.'),
(11, 12, 'Is parking available on the premises?'),
(12, 11, 'Free parking is included.'),
(13, 14, 'Is the kitchen fully equipped?'),
(14, 13, 'The kitchen has all the necessary appliances.'),
(15, 16, 'Are there any grocery stores nearby?'),
(16, 15, 'Several stores are within walking distance.'),
(17, 18, 'Is it possible to host a small event?'),
(18, 17, 'Small events are allowed with prior notice.'),
(19, 20, 'Do you provide extra bedding?'),
(20, 19, 'Extra bedding can be provided upon request.');


-- UserMessageLink table
-- Links messages with users in the context of sender and receiver. Ensures proper delivery and tracking of messages.
CREATE TABLE UserMessageLink (
    LinkID SERIAL PRIMARY KEY,
    SenderID INTEGER REFERENCES "User"(UserID),
    ReceiverID INTEGER REFERENCES "User"(UserID),
    MessageID INTEGER REFERENCES Message(MessageID)
);

--UserMessageLink Table

INSERT INTO UserMessageLink (SenderID, ReceiverID, MessageID)
VALUES
(3, 4, 3),
(4, 3, 4),
(5, 6, 5),
(6, 5, 6),
(7, 8, 7),
(8, 7, 8),
(9, 10, 9),
(10, 9, 10),
(11, 12, 11),
(12, 11, 12),
(13, 14, 13),
(14, 13, 14),
(15, 16, 15),
(16, 15, 16),
(17, 18, 17),
(18, 17, 18),
(19, 20, 19),
(20, 19, 20);


-- Discount table
-- Manages information about special discounts or offers available for properties, including the discount percentage.
CREATE TABLE Discount (
    DiscountID SERIAL PRIMARY KEY,
    PropertyID INTEGER REFERENCES Property(PropertyID),
    Percentage DECIMAL NOT NULL CHECK (Percentage BETWEEN 0 AND 100)
);

--Discount Table

INSERT INTO Discount (PropertyID, Percentage)
VALUES
(3, 20),
(4, 25),
(5, 30),
(6, 35),
(7, 40),
(8, 45),
(9, 50),
(10, 55),
(11, 60),
(12, 65),
(13, 70),
(14, 75),
(15, 80),
(16, 85),
(17, 90),
(18, 95),
(19, 90),
(20, 90);


-- FAQ table
-- Frequently Asked Questions and their answers related to the platform. A resource for users to get quick information.
CREATE TABLE FAQ (
    FAQID SERIAL PRIMARY KEY,
    Question TEXT NOT NULL,
    Answer TEXT NOT NULL
);

--FAQ Table

INSERT INTO FAQ (Question, Answer)
VALUES
('Is smoking allowed in the properties?', 'Smoking is not allowed inside the properties.'),
('What is the cancellation policy?', 'The cancellation policy varies by property. Please check the property details.'),
('Are there any additional fees?', 'Some properties may have additional cleaning or service fees. Please review the property information.'),
('How do I contact customer support?', 'You can contact our customer support team at support@example.com.'),
('Can I change my booking dates?', 'Booking dates can be changed based on property availability. Please contact the property owner.'),
('Is breakfast included?', 'Breakfast is included in some properties. Please check the property amenities.'),
('What is the minimum stay duration?', 'Minimum stay duration varies by property. Check the property details for specifics.'),
('Are early check-ins possible?', 'Early check-ins may be available upon request. Contact the property owner for details.'),
('Are late check-outs possible?', 'Late check-outs may be available upon request. Contact the property owner for details.'),
('Is parking available?', 'Parking facilities are available at most properties. Check the property details for parking information.'),
('Do you provide airport transfers?', 'Airport transfers can be arranged for some properties. Contact the property owner for options.'),
('Are there nearby restaurants?', 'Many properties are located near restaurants. Check the property location for dining options.'),
('Can I bring my pet?', 'Pets are not allowed in most properties. Contact the property owner for pet-friendly options.'),
('What is the Wi-Fi speed?', 'Wi-Fi speed varies by property. Check the property amenities for details.'),
('Is there a gym on-site?', 'Some properties have on-site gyms. Check the property amenities for fitness facilities.'),
('Is there a swimming pool?', 'Some properties have swimming pools. Check the property amenities for pool access.'),
('What is the nearest public transportation?', 'The nearest public transportation options vary by property. Check the property location for details.'),
('Are there nearby attractions?', 'Many properties are near popular attractions. Check the property location for nearby places to visit.'),
('What is the check-in process?', 'Check-in is at 3 PM.');


-- Verification table
-- Stores details of verification methods and statuses for hosts and properties, ensuring trust and safety in the platform.
CREATE TABLE Verification (
    VerificationID SERIAL PRIMARY KEY,
    UserID INTEGER REFERENCES "User"(UserID),
    Method VARCHAR(255) NOT NULL,
    Status VARCHAR(255) NOT NULL
);

--Verification Table 

INSERT INTO Verification (UserID, Method, Status)
VALUES
(1, 'Email', 'Verified'),
(2, 'Phone', 'Verified'),
(3, 'Email', 'Verified'),
(4, 'Phone', 'Not Verified'),
(5, 'Email', 'Not Verified'),
(6, 'Phone', 'Verified'),
(7, 'Email', 'Verified'),
(8, 'Phone', 'Not Verified'),
(9, 'Email', 'Not Verified'),
(10, 'Phone', 'Verified'),
(11, 'Email', 'Verified'),
(12, 'Phone', 'Not Verified'),
(13, 'Email', 'Not Verified'),
(14, 'Phone', 'Verified'),
(15, 'Email', 'Verified'),
(16, 'Phone', 'Not Verified'),
(17, 'Email', 'Not Verified'),
(18, 'Phone', 'Verified'),
(19, 'Email', 'Verified'),
(20, 'Phone', 'Verified');


-- Invoice table
-- Manages invoices generated for completed transactions, detailing transaction ID and other related information.
CREATE TABLE Invoice (
    InvoiceID SERIAL PRIMARY KEY,
    TransactionID INTEGER REFERENCES Transaction(TransactionID),
    Details TEXT NOT NULL
);

--Invoice Table 

INSERT INTO Invoice (TransactionID, Details)
VALUES
(1, 'Invoice details for transaction 1'),
(2, 'Invoice details for transaction 2'),
(3, 'Invoice details for transaction 3'),
(4, 'Invoice details for transaction 4'),
(5, 'Invoice details for transaction 5'),
(6, 'Invoice details for transaction 6'),
(7, 'Invoice details for transaction 7'),
(8, 'Invoice details for transaction 8'),
(9, 'Invoice details for transaction 9'),
(10, 'Invoice details for transaction 10'),
(11, 'Invoice details for transaction 11'),
(12, 'Invoice details for transaction 12'),
(13, 'Invoice details for transaction 13'),
(14, 'Invoice details for transaction 14'),
(15, 'Invoice details for transaction 15'),
(16, 'Invoice details for transaction 16'),
(17, 'Invoice details for transaction 17'),
(18, 'Invoice details for transaction 18'),
(19, 'Invoice details for transaction 19'),
(20, 'Invoice details for transaction 20');
