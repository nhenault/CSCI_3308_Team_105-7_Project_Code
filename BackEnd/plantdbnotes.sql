-- do not run this file directly, import the dump file
CREATE TABLE IF NOT EXISTS plantDatabase(
    id INT PRIMARY KEY,
    name VARCHAR NOT NULL,
    lighting INT, -- 1, 2, or 3, 4 (Dark, Dim, Bright, Direct Sunlight)
    soil_moisture INT, -- 1,2,3 (Dry, Damp, Flooded)
    temp_low INT, -- degrees f
    temp_high INT, -- degrees f
    drought INT, -- drought tollerance 1,2,3; low, med, high
    care_difficulty INT, -- 1,2,3 (Easy, Medium, Hard)
    img_path VARCHAR -- File path for image of plant
);

INSERT INTO plantDatabase(id, name, lighting, soil_moisture, temp_low, temp_high, drought, care_difficulty, img_path)
    VALUES (1, 'Daylilies', 3, 2, -30, 35, 2, 1, '../Resources/Images/daylily.jpg'),
            (2, 'Tall Bearded Iris Immortality', 4, 2, -40, 25, 3, 2, '../Resources/Images/iris.jpg'),
            (3, 'Hot Pepper Habanero', 3, 2, 20, 50, 1, 2, '../Resources/Images/habanero.jpg'),
            (4, 'Hydrangea Species, Oakleaf Hydrangea, Oak-leaf Hydrangea', 3, 2, -10, 25, 2, 1, '../Resources/Images/oakleaf.jpg'),
            (5, 'Hosta Frances Williams', 2, 2, -40, 15, 3, 1, '../Resources/Images/hosta.jpg'),
            (6, 'Japanese Maple Butterfly', 2, 2, -10, 25, 3, 1, '../Resources/Images/maple_butterfly.jpg'),
            (7, 'Hibiscus, Rose of Sharon, Shrub Althea', 4, 2, -20, 40, 2, 2, '../Resources/Images/hibiscus.jpg'),
            (8, 'Sansevieria Species, Mother-in-Laws Tongue, Saint Georges Sword, Snake Plant', 2, 1, 30, 40, 3, 1, '../Resources/Images/snake_plant.jpg'),
            (9, 'Cenchrus, Purple Fountain Grass, Rose Fountain Grass Rubrum', 3, 2, 20, 40, 3, 1, '../Resources/Images/purple_grass.jpg'),
            (10, 'Piper Species, Hoja Santa, Mexican Pepperleaf, Root Beer Plant', 1, 3, 10, 40, 1, 1, '../Resources/Images/root_beer.jpg');
-- need to use 'psql botanizer < plantdb.sql' command to restore dump file, where the database is named botanizer
