CREATE TABLE category (
    category_id CHAR(4) NOT NULL,
    category VARCHAR(12) NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(8) NOT NULL,
    subcategory VARCHAR(17) NOT NULL,
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR(12) NOT NULL,
    last_name VARCHAR(13) NOT NULL,
    email VARCHAR(42) NOT NULL,
    PRIMARY KEY (contact_id)
);

CREATE TABLE campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(33) NOT NULL,
    description VARCHAR(53) NOT NULL,
    goal FLOAT NOT NULL,
    pledge FLOAT NOT NULL,
    outcome VARCHAR(10) NOT NULL,
    backers_out INT NOT NULL,
    country CHAR(2) NOT NULL,
    currency CHAR(3) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id CHAR(4) NOT NULL,
    subcategory_id VARCHAR(8) NOT NULL,
    PRIMARY KEY (cf_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

