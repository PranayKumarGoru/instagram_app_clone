--creating Users table
CREATE TABLE Users (
    username varchar(255) PRIMARY KEY,
    password varchar(255),
    name varchar(255),
    email varchar(255),
    profile_image_url varchar(255)
);
--adding mock values to the Users table
INSERT INTO Users (username, password, name, email, profile_image_url)  
   VALUES ('ramu24', 'RamuK', 'Ramu Kothapalli', 'ram.k@relevel.com', 'https://i.pickadummy.com/300x100');
INSERT INTO Users (username, password, name, email, profile_image_url)  
   VALUES ('sureshV', 'INsta123', 'Suresh Vellore', 'suresh.v@relevel.com', 'https://i.pickadummy.com/300');
INSERT INTO Users (username, password, name, email)  
   VALUES ('someshRocz', 'somuInsta', 'Somesh V', 'somu.v@relevel.com');
INSERT INTO Users (username, password, name, email, profile_image_url)  
   VALUES ('rakeshM', 'rakiInsta5', 'Rakesh Maralle', 'raki.m@relevel.com', 'https://i.pickadummy.com/300x150?border=2&bordercolor=000000');
INSERT INTO Users (username, password, name, email, profile_image_url)  
   VALUES ('adityaB', 'adiInsta', 'Aditya B', 'adi.B@relevel.com', 'https://i.pickadummy.com/300x150?border=20&bordercolor=97abe5');
INSERT INTO Users (username, password, name, email, profile_image_url)  
   VALUES ('flyingbeast', 'flbInst', 'Gaurav Taneja', 'gaurav.t@relevel.com', 'https://i.pickadummy.com/index.php?imgsize=300x150&text=FlyingBeast');

   
--creating Posts table
CREATE TABLE Posts (
    post_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username varchar(255) references Users(username),
    location varchar(255),
    description varchar(255),
    image_url varchar(255),
    datetime timestamp
);

--adding mock values to the Posts table
INSERT INTO Posts (username, location, description, image_url, datetime)  
   VALUES ('flyingbeast', 'Hyderabad', 'Had a lot of Fun', 'https://dummyimage.com/qvga', '2020-12-20 18:20:45');
INSERT INTO Posts (username, location, image_url, datetime)
      VALUES ('flyingbeast', 'Lucknow', 'https://dummyimage.com/skyscraper/f0f/f', '2020-12-25 20:08:54');
INSERT INTO Posts (username, location, description, image_url, datetime)
   VALUES ('flyingbeast', 'Delhi', 'Fitness is life', 'https://dummyimage.com/250/ffffff/000000', '2021-01-05 08:24:45');
INSERT INTO Posts (username, image_url, datetime)  
   VALUES ('flyingbeast', 'https://i.pickadummy.com/300x200?dimensions=yes', '2020-02-01 12:20:22');
INSERT INTO Posts (username, location, description, image_url, datetime)  
   VALUES ('ramu24', 'Hyderabad', 'Had a lot of Fun', 'https://dummyimage.com/qvga', '2021-03-01 12:20:22');
INSERT INTO Posts (username, location, image_url, datetime)
      VALUES ('ramu24', 'Lucknow', 'https://dummyimage.com/skyscraper/f0f/f', '2021-03-01 12:30:02');
INSERT INTO Posts (username, location, description, image_url, datetime)
   VALUES ('ramu24', 'Delhi', 'Fitness is life', 'https://dummyimage.com/250/ffffff/000000', '2021-03-01 12:45:41');
INSERT INTO Posts (username, image_url, datetime)  
   VALUES ('ramu24', 'https://i.pickadummy.com/300x200?dimensions=yes', '2021-03-01 01:20:22');
   
--creating Following table
CREATE TABLE Following (
    following_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username varchar(255) references Users(username),
    following varchar(255) references Users(username)
);

--adding mock values to the Following table
INSERT INTO Following (username, following)  
   VALUES ('ramu24', 'flyingbeast');
INSERT INTO Following (username, following)
   VALUES ('sureshV', 'flyingbeast');
INSERT INTO Following (username, following)  
    VALUES ('someshRocz', 'flyingbeast');
INSERT INTO Following (username, following)  
     VALUES ('rakeshM', 'flyingbeast');

