-- ------------ Write DROP-PROCEDURE-stage scripts -----------

DROP ROUTINE IF EXISTS northwinddb_dbo."Employee Sales by Country"(IN TIMESTAMP WITHOUT TIME ZONE, IN TIMESTAMP WITHOUT TIME ZONE, INOUT refcursor);

DROP ROUTINE IF EXISTS northwinddb_dbo."Sales by Year"(IN TIMESTAMP WITHOUT TIME ZONE, IN TIMESTAMP WITHOUT TIME ZONE, INOUT refcursor);

DROP ROUTINE IF EXISTS northwinddb_dbo."Ten Most Expensive Products"(INOUT refcursor);

DROP ROUTINE IF EXISTS northwinddb_dbo.custorderhist(IN CHAR, INOUT refcursor);

DROP ROUTINE IF EXISTS northwinddb_dbo.custordersdetail(IN INTEGER, INOUT refcursor);

DROP ROUTINE IF EXISTS northwinddb_dbo.custordersorders(IN CHAR, INOUT refcursor);

DROP ROUTINE IF EXISTS northwinddb_dbo.salesbycategory(IN VARCHAR, IN VARCHAR, INOUT refcursor);

-- ------------ Write DROP-FOREIGN-KEY-CONSTRAINT-stage scripts -----------

ALTER TABLE northwinddb_dbo."Order Details" DROP CONSTRAINT fk_order_details_orders_1157579162;

ALTER TABLE northwinddb_dbo."Order Details" DROP CONSTRAINT fk_order_details_products_1173579219;

ALTER TABLE northwinddb_dbo.customercustomerdemo DROP CONSTRAINT fk_customercustomerdemo_1717581157;

ALTER TABLE northwinddb_dbo.customercustomerdemo DROP CONSTRAINT fk_customercustomerdemo_customers_1733581214;

ALTER TABLE northwinddb_dbo.employees DROP CONSTRAINT fk_employees_employees_613577224;

ALTER TABLE northwinddb_dbo.employeeterritories DROP CONSTRAINT fk_employeeterritories_employees_1813581499;

ALTER TABLE northwinddb_dbo.employeeterritories DROP CONSTRAINT fk_employeeterritories_territories_1829581556;

ALTER TABLE northwinddb_dbo.orders DROP CONSTRAINT fk_orders_customers_821577965;

ALTER TABLE northwinddb_dbo.orders DROP CONSTRAINT fk_orders_employees_837578022;

ALTER TABLE northwinddb_dbo.orders DROP CONSTRAINT fk_orders_shippers_853578079;

ALTER TABLE northwinddb_dbo.products DROP CONSTRAINT fk_products_categories_981578535;

ALTER TABLE northwinddb_dbo.products DROP CONSTRAINT fk_products_suppliers_997578592;

ALTER TABLE northwinddb_dbo.territories DROP CONSTRAINT fk_territories_region_1781581385;

-- ------------ Write DROP-CONSTRAINT-stage scripts -----------

ALTER TABLE northwinddb_dbo."Order Details" DROP CONSTRAINT ck_discount_1189579276;

ALTER TABLE northwinddb_dbo."Order Details" DROP CONSTRAINT ck_quantity_1205579333;

ALTER TABLE northwinddb_dbo."Order Details" DROP CONSTRAINT ck_unitprice_1221579390;

ALTER TABLE northwinddb_dbo."Order Details" DROP CONSTRAINT pk_order_details_1093578934;

ALTER TABLE northwinddb_dbo.categories DROP CONSTRAINT pk_categories_661577395;

ALTER TABLE northwinddb_dbo.customercustomerdemo DROP CONSTRAINT pk_customercustomerdemo_1685581043;

ALTER TABLE northwinddb_dbo.customerdemographics DROP CONSTRAINT pk_customerdemographics_1701581100;

ALTER TABLE northwinddb_dbo.customers DROP CONSTRAINT pk_customers_693577509;

ALTER TABLE northwinddb_dbo.employees DROP CONSTRAINT ck_birthdate_629577281;

ALTER TABLE northwinddb_dbo.employees DROP CONSTRAINT pk_employees_597577167;

ALTER TABLE northwinddb_dbo.employeeterritories DROP CONSTRAINT pk_employeeterritories_1797581442;

ALTER TABLE northwinddb_dbo.orders DROP CONSTRAINT pk_orders_789577851;

ALTER TABLE northwinddb_dbo.products DROP CONSTRAINT ck_products_unitprice_1013578649;

ALTER TABLE northwinddb_dbo.products DROP CONSTRAINT ck_reorderlevel_1029578706;

ALTER TABLE northwinddb_dbo.products DROP CONSTRAINT ck_unitsinstock_1045578763;

ALTER TABLE northwinddb_dbo.products DROP CONSTRAINT ck_unitsonorder_1061578820;

ALTER TABLE northwinddb_dbo.products DROP CONSTRAINT pk_products_885578193;

ALTER TABLE northwinddb_dbo.region DROP CONSTRAINT pk_region_1749581271;

ALTER TABLE northwinddb_dbo.shippers DROP CONSTRAINT pk_shippers_725577623;

ALTER TABLE northwinddb_dbo.suppliers DROP CONSTRAINT pk_suppliers_757577737;

ALTER TABLE northwinddb_dbo.territories DROP CONSTRAINT pk_territories_1765581328;

-- ------------ Write DROP-INDEX-stage scripts -----------

DROP INDEX IF EXISTS northwinddb_dbo."IX_Order Details_OrderID";

DROP INDEX IF EXISTS northwinddb_dbo."IX_Order Details_OrdersOrder_Details";

DROP INDEX IF EXISTS northwinddb_dbo."IX_Order Details_ProductID";

DROP INDEX IF EXISTS northwinddb_dbo."IX_Order Details_ProductsOrder_Details";

DROP INDEX IF EXISTS northwinddb_dbo.ix_categories_categoryname;

DROP INDEX IF EXISTS northwinddb_dbo.ix_customers_city;

DROP INDEX IF EXISTS northwinddb_dbo.ix_customers_companyname;

DROP INDEX IF EXISTS northwinddb_dbo.ix_customers_postalcode;

DROP INDEX IF EXISTS northwinddb_dbo.ix_customers_region;

DROP INDEX IF EXISTS northwinddb_dbo.ix_employees_lastname;

DROP INDEX IF EXISTS northwinddb_dbo.ix_employees_postalcode;

DROP INDEX IF EXISTS northwinddb_dbo.ix_orders_customerid;

DROP INDEX IF EXISTS northwinddb_dbo.ix_orders_customersorders;

DROP INDEX IF EXISTS northwinddb_dbo.ix_orders_employeeid;

DROP INDEX IF EXISTS northwinddb_dbo.ix_orders_employeesorders;

DROP INDEX IF EXISTS northwinddb_dbo.ix_orders_orderdate;

DROP INDEX IF EXISTS northwinddb_dbo.ix_orders_shippeddate;

DROP INDEX IF EXISTS northwinddb_dbo.ix_orders_shippersorders;

DROP INDEX IF EXISTS northwinddb_dbo.ix_orders_shippostalcode;

DROP INDEX IF EXISTS northwinddb_dbo.ix_products_categoriesproducts;

DROP INDEX IF EXISTS northwinddb_dbo.ix_products_categoryid;

DROP INDEX IF EXISTS northwinddb_dbo.ix_products_productname;

DROP INDEX IF EXISTS northwinddb_dbo.ix_products_supplierid;

DROP INDEX IF EXISTS northwinddb_dbo.ix_products_suppliersproducts;

DROP INDEX IF EXISTS northwinddb_dbo.ix_suppliers_companyname;

DROP INDEX IF EXISTS northwinddb_dbo.ix_suppliers_postalcode;

-- ------------ Write DROP-VIEW-stage scripts -----------

DROP VIEW IF EXISTS northwinddb_dbo."Alphabetical list of products";

DROP VIEW IF EXISTS northwinddb_dbo."Category Sales for 1997";

DROP VIEW IF EXISTS northwinddb_dbo."Current Product List";

DROP VIEW IF EXISTS northwinddb_dbo."Customer and Suppliers by City";

DROP VIEW IF EXISTS northwinddb_dbo."Order Details Extended";

DROP VIEW IF EXISTS northwinddb_dbo."Order Subtotals";

DROP VIEW IF EXISTS northwinddb_dbo."Orders Qry";

DROP VIEW IF EXISTS northwinddb_dbo."Product Sales for 1997";

DROP VIEW IF EXISTS northwinddb_dbo."Products Above Average Price";

DROP VIEW IF EXISTS northwinddb_dbo."Products by Category";

DROP VIEW IF EXISTS northwinddb_dbo."Quarterly Orders";

DROP VIEW IF EXISTS northwinddb_dbo."Sales Totals by Amount";

DROP VIEW IF EXISTS northwinddb_dbo."Sales by Category";

DROP VIEW IF EXISTS northwinddb_dbo."Summary of Sales by Quarter";

DROP VIEW IF EXISTS northwinddb_dbo."Summary of Sales by Year";

DROP VIEW IF EXISTS northwinddb_dbo.invoices;

-- ------------ Write DROP-TABLE-stage scripts -----------

DROP TABLE IF EXISTS northwinddb_dbo."Order Details";

DROP TABLE IF EXISTS northwinddb_dbo.categories;

DROP TABLE IF EXISTS northwinddb_dbo.customercustomerdemo;

DROP TABLE IF EXISTS northwinddb_dbo.customerdemographics;

DROP TABLE IF EXISTS northwinddb_dbo.customers;

DROP TABLE IF EXISTS northwinddb_dbo.employees;

DROP TABLE IF EXISTS northwinddb_dbo.employeeterritories;

DROP TABLE IF EXISTS northwinddb_dbo.orders;

DROP TABLE IF EXISTS northwinddb_dbo.products;

DROP TABLE IF EXISTS northwinddb_dbo.region;

DROP TABLE IF EXISTS northwinddb_dbo.shippers;

DROP TABLE IF EXISTS northwinddb_dbo.suppliers;

DROP TABLE IF EXISTS northwinddb_dbo.territories;

-- ------------ Write DROP-DATABASE-stage scripts -----------

-- ------------ Write CREATE-DATABASE-stage scripts -----------

CREATE SCHEMA IF NOT EXISTS northwinddb_dbo;

-- ------------ Write CREATE-TABLE-stage scripts -----------

CREATE TABLE northwinddb_dbo."Order Details"(
    orderid INTEGER NOT NULL,
    productid INTEGER NOT NULL,
    unitprice NUMERIC(19,4) NOT NULL DEFAULT (0),
    quantity SMALLINT NOT NULL DEFAULT (1),
    discount DOUBLE PRECISION NOT NULL DEFAULT (0)
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE northwinddb_dbo.categories(
    categoryid INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    categoryname VARCHAR(15) NOT NULL,
    description TEXT,
    picture BYTEA
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE northwinddb_dbo.customercustomerdemo(
    customerid CHAR(5) NOT NULL,
    customertypeid CHAR(10) NOT NULL
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE northwinddb_dbo.customerdemographics(
    customertypeid CHAR(10) NOT NULL,
    customerdesc TEXT
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE northwinddb_dbo.customers(
    customerid CHAR(5) NOT NULL,
    companyname VARCHAR(40) NOT NULL,
    contactname VARCHAR(30),
    contacttitle VARCHAR(30),
    address VARCHAR(60),
    city VARCHAR(15),
    region VARCHAR(15),
    postalcode VARCHAR(10),
    country VARCHAR(15),
    phone VARCHAR(24),
    fax VARCHAR(24)
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE northwinddb_dbo.employees(
    employeeid INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    lastname VARCHAR(20) NOT NULL,
    firstname VARCHAR(10) NOT NULL,
    title VARCHAR(30),
    titleofcourtesy VARCHAR(25),
    birthdate TIMESTAMP WITHOUT TIME ZONE,
    hiredate TIMESTAMP WITHOUT TIME ZONE,
    address VARCHAR(60),
    city VARCHAR(15),
    region VARCHAR(15),
    postalcode VARCHAR(10),
    country VARCHAR(15),
    homephone VARCHAR(24),
    extension VARCHAR(4),
    photo BYTEA,
    notes TEXT,
    reportsto INTEGER,
    photopath VARCHAR(255)
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE northwinddb_dbo.employeeterritories(
    employeeid INTEGER NOT NULL,
    territoryid VARCHAR(20) NOT NULL
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE northwinddb_dbo.orders(
    orderid INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    customerid CHAR(5),
    employeeid INTEGER,
    orderdate TIMESTAMP WITHOUT TIME ZONE,
    requireddate TIMESTAMP WITHOUT TIME ZONE,
    shippeddate TIMESTAMP WITHOUT TIME ZONE,
    shipvia INTEGER,
    freight NUMERIC(19,4) DEFAULT (0),
    shipname VARCHAR(40),
    shipaddress VARCHAR(60),
    shipcity VARCHAR(15),
    shipregion VARCHAR(15),
    shippostalcode VARCHAR(10),
    shipcountry VARCHAR(15)
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE northwinddb_dbo.products(
    productid INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    productname VARCHAR(40) NOT NULL,
    supplierid INTEGER,
    categoryid INTEGER,
    quantityperunit VARCHAR(20),
    unitprice NUMERIC(19,4) DEFAULT (0),
    unitsinstock SMALLINT DEFAULT (0),
    unitsonorder SMALLINT DEFAULT (0),
    reorderlevel SMALLINT DEFAULT (0),
    discontinued NUMERIC(1,0) NOT NULL DEFAULT (0)
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE northwinddb_dbo.region(
    regionid INTEGER NOT NULL,
    regiondescription CHAR(50) NOT NULL
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE northwinddb_dbo.shippers(
    shipperid INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    companyname VARCHAR(40) NOT NULL,
    phone VARCHAR(24)
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE northwinddb_dbo.suppliers(
    supplierid INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    companyname VARCHAR(40) NOT NULL,
    contactname VARCHAR(30),
    contacttitle VARCHAR(30),
    address VARCHAR(60),
    city VARCHAR(15),
    region VARCHAR(15),
    postalcode VARCHAR(10),
    country VARCHAR(15),
    phone VARCHAR(24),
    fax VARCHAR(24),
    homepage TEXT
)
        WITH (
        OIDS=FALSE
        );

CREATE TABLE northwinddb_dbo.territories(
    territoryid VARCHAR(20) NOT NULL,
    territorydescription CHAR(50) NOT NULL,
    regionid INTEGER NOT NULL
)
        WITH (
        OIDS=FALSE
        );

-- ------------ Write CREATE-VIEW-stage scripts -----------

CREATE OR REPLACE  VIEW northwinddb_dbo."Alphabetical list of products" (productid, productname, supplierid, categoryid, quantityperunit, unitprice, unitsinstock, unitsonorder, reorderlevel, discontinued, categoryname) AS
SELECT
    northwinddb_dbo.products.*, categories.categoryname
    FROM northwinddb_dbo.categories
    INNER JOIN northwinddb_dbo.products
        ON categories.categoryid = products.ix_products_categoryid
    WHERE (((products.discontinued) = 0));

CREATE OR REPLACE  VIEW northwinddb_dbo."Category Sales for 1997" (categoryname, categorysales) AS
SELECT
    "Product Sales for 1997".categoryname, SUM("Product Sales for 1997".productsales) AS categorysales
    FROM northwinddb_dbo."Product Sales for 1997"
    GROUP BY "Product Sales for 1997".categoryname;

CREATE OR REPLACE  VIEW northwinddb_dbo."Current Product List" (productid, productname) AS
SELECT
    product_list.productid, product_list.productname
    FROM northwinddb_dbo.products AS product_list
    WHERE (((product_list.discontinued) = 0));
/* ORDER BY Product_List.ProductName */;

CREATE OR REPLACE  VIEW northwinddb_dbo."Customer and Suppliers by City" (city, companyname, contactname, relationship) AS
SELECT
    city, companyname, contactname, 'Customers'::TEXT AS relationship
    FROM northwinddb_dbo.customers
UNION
SELECT
    city, companyname, contactname, 'Suppliers'::TEXT
    FROM northwinddb_dbo.suppliers;
/* ORDER BY City, CompanyName */;

CREATE OR REPLACE  VIEW northwinddb_dbo."Order Details Extended" (orderid, productid, productname, unitprice, quantity, discount, extendedprice) AS
SELECT
    "Order Details".orderid, "Order Details".productid, products.productname, "Order Details".unitprice, "Order Details".quantity, "Order Details".discount, (CAST (("Order Details".unitprice * quantity * (1 - discount) / 100) AS NUMERIC(19, 4)) * 100) AS extendedprice
    FROM northwinddb_dbo.products
    INNER JOIN northwinddb_dbo."Order Details"
        ON products.productid = "Order Details"."IX_Order Details_ProductID";
/* ORDER BY "Order Details".OrderID */;

CREATE OR REPLACE  VIEW northwinddb_dbo."Order Subtotals" (orderid, subtotal) AS
SELECT
    "Order Details".orderid, SUM(CAST (("Order Details".unitprice * quantity * (1 - discount) / 100) AS NUMERIC(19, 4)) * 100) AS subtotal
    FROM northwinddb_dbo."Order Details"
    GROUP BY "Order Details"."IX_Order Details_OrderID";

CREATE OR REPLACE  VIEW northwinddb_dbo."Orders Qry" (orderid, customerid, employeeid, orderdate, requireddate, shippeddate, shipvia, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry, companyname, address, city, region, postalcode, country) AS
SELECT
    orders.orderid, orders.customerid, orders.employeeid, orders.orderdate, orders.requireddate, orders.shippeddate, orders.shipvia, orders.freight, orders.shipname, orders.shipaddress, orders.shipcity, orders.shipregion, orders.shippostalcode, orders.shipcountry, customers.companyname, customers.address, customers.city, customers.region, customers.postalcode, customers.country
    FROM northwinddb_dbo.customers
    INNER JOIN northwinddb_dbo.orders
        ON LOWER(customers.customerid) = LOWER(orders.ix_orders_customerid);

CREATE OR REPLACE  VIEW northwinddb_dbo."Product Sales for 1997" (categoryname, productname, productsales) AS
SELECT
    categories.categoryname, products.productname, SUM(CAST (("Order Details".unitprice * quantity * (1 - discount) / 100) AS NUMERIC(19, 4)) * 100) AS productsales
    FROM (northwinddb_dbo.categories
    INNER JOIN northwinddb_dbo.products
        ON categories.categoryid = products.ix_products_categoryid)
    INNER JOIN (northwinddb_dbo.orders
    INNER JOIN northwinddb_dbo."Order Details"
        ON orders.orderid = "Order Details"."IX_Order Details_OrderID")
        ON products.productid = "Order Details"."IX_Order Details_ProductID"
    WHERE (((orders.ix_orders_shippeddate) BETWEEN '19970101' AND '19971231'))
    GROUP BY categories.ix_categories_categoryname, products.ix_products_productname;

CREATE OR REPLACE  VIEW northwinddb_dbo."Products Above Average Price" (productname, unitprice) AS
SELECT
    products.productname, products.unitprice
    FROM northwinddb_dbo.products
    WHERE products.unitprice > (SELECT
        AVG(unitprice)
        FROM northwinddb_dbo.products);
/* ORDER BY Products.UnitPrice DESC */;

CREATE OR REPLACE  VIEW northwinddb_dbo."Products by Category" (categoryname, productname, quantityperunit, unitsinstock, discontinued) AS
SELECT
    categories.categoryname, products.productname, products.quantityperunit, products.unitsinstock, products.discontinued
    FROM northwinddb_dbo.categories
    INNER JOIN northwinddb_dbo.products
        ON categories.categoryid = products.ix_products_categoryid
    WHERE products.discontinued <> 1;
/* ORDER BY Categories.CategoryName, Products.ProductName */;

CREATE OR REPLACE  VIEW northwinddb_dbo."Quarterly Orders" (customerid, companyname, city, country) AS
SELECT DISTINCT
    customers.customerid, customers.companyname, customers.city, customers.country
    FROM northwinddb_dbo.customers
    RIGHT OUTER JOIN northwinddb_dbo.orders
        ON LOWER(customers.customerid) = LOWER(orders.ix_orders_customerid)
    WHERE orders.ix_orders_orderdate BETWEEN '19970101' AND '19971231';

CREATE OR REPLACE  VIEW northwinddb_dbo."Sales Totals by Amount" (saleamount, orderid, companyname, shippeddate) AS
SELECT
    "Order Subtotals".subtotal AS saleamount, orders.orderid, customers.companyname, orders.shippeddate
    FROM northwinddb_dbo.customers
    INNER JOIN (northwinddb_dbo.orders
    INNER JOIN northwinddb_dbo."Order Subtotals"
        ON orders.orderid = "Order Subtotals".orderid)
        ON LOWER(customers.customerid) = LOWER(orders.ix_orders_customerid)
    WHERE ("Order Subtotals".subtotal > 2500) AND (orders.ix_orders_shippeddate BETWEEN '19970101' AND '19971231');

CREATE OR REPLACE  VIEW northwinddb_dbo."Sales by Category" (categoryid, categoryname, productname, productsales) AS
SELECT
    categories.categoryid, categories.categoryname, products.productname, SUM("Order Details Extended".extendedprice) AS productsales
    FROM northwinddb_dbo.categories
    INNER JOIN (northwinddb_dbo.products
    INNER JOIN (northwinddb_dbo.orders
    INNER JOIN northwinddb_dbo."Order Details Extended"
        ON orders.orderid = "Order Details Extended".orderid)
        ON products.productid = "Order Details Extended".productid)
        ON categories.categoryid = products.ix_products_categoryid
    WHERE orders.ix_orders_orderdate BETWEEN '19970101' AND '19971231'
    GROUP BY categories.categoryid, categories.ix_categories_categoryname, products.ix_products_productname;
/* ORDER BY Products.ProductName */;

CREATE OR REPLACE  VIEW northwinddb_dbo."Summary of Sales by Quarter" (shippeddate, orderid, subtotal) AS
SELECT
    orders.shippeddate, orders.orderid, "Order Subtotals".subtotal
    FROM northwinddb_dbo.orders
    INNER JOIN northwinddb_dbo."Order Subtotals"
        ON orders.orderid = "Order Subtotals".orderid
    WHERE orders.ix_orders_shippeddate IS NOT NULL;
/* ORDER BY Orders.ShippedDate */;

CREATE OR REPLACE  VIEW northwinddb_dbo."Summary of Sales by Year" (shippeddate, orderid, subtotal) AS
SELECT
    orders.shippeddate, orders.orderid, "Order Subtotals".subtotal
    FROM northwinddb_dbo.orders
    INNER JOIN northwinddb_dbo."Order Subtotals"
        ON orders.orderid = "Order Subtotals".orderid
    WHERE orders.ix_orders_shippeddate IS NOT NULL;
/* ORDER BY Orders.ShippedDate */;

CREATE OR REPLACE  VIEW northwinddb_dbo.invoices (shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry, customerid, customername, address, city, region, postalcode, country, salesperson, orderid, orderdate, requireddate, shippeddate, shippername, productid, productname, unitprice, quantity, discount, extendedprice, freight) AS
SELECT
    orders.shipname, orders.shipaddress, orders.shipcity, orders.shipregion, orders.shippostalcode, orders.shipcountry, orders.customerid, customers.companyname AS customername, customers.address, customers.city, customers.region, customers.postalcode, customers.country, (firstname || ' ' || lastname) AS salesperson, orders.orderid, orders.orderdate, orders.requireddate, orders.shippeddate, shippers.companyname AS shippername, "Order Details".productid, products.productname, "Order Details".unitprice, "Order Details".quantity, "Order Details".discount, (CAST (("Order Details".unitprice * quantity * (1 - discount) / 100) AS NUMERIC(19, 4)) * 100) AS extendedprice, orders.freight
    FROM northwinddb_dbo.shippers
    INNER JOIN (northwinddb_dbo.products
    INNER JOIN ((northwinddb_dbo.employees
    INNER JOIN (northwinddb_dbo.customers
    INNER JOIN northwinddb_dbo.orders
        ON LOWER(customers.customerid) = LOWER(orders.ix_orders_customerid))
        ON employees.employeeid = orders.ix_orders_employeeid)
    INNER JOIN northwinddb_dbo."Order Details"
        ON orders.orderid = "Order Details"."IX_Order Details_OrderID")
        ON products.productid = "Order Details"."IX_Order Details_ProductID")
        ON shippers.shipperid = orders.shipvia;

-- ------------ Write CREATE-INDEX-stage scripts -----------

CREATE INDEX "IX_Order Details_OrderID"
ON northwinddb_dbo."Order Details"
USING BTREE (orderid ASC);

CREATE INDEX "IX_Order Details_OrdersOrder_Details"
ON northwinddb_dbo."Order Details"
USING BTREE (orderid ASC);

CREATE INDEX "IX_Order Details_ProductID"
ON northwinddb_dbo."Order Details"
USING BTREE (productid ASC);

CREATE INDEX "IX_Order Details_ProductsOrder_Details"
ON northwinddb_dbo."Order Details"
USING BTREE (productid ASC);

CREATE INDEX ix_categories_categoryname
ON northwinddb_dbo.categories
USING BTREE (categoryname ASC);

CREATE INDEX ix_customers_city
ON northwinddb_dbo.customers
USING BTREE (city ASC);

CREATE INDEX ix_customers_companyname
ON northwinddb_dbo.customers
USING BTREE (companyname ASC);

CREATE INDEX ix_customers_postalcode
ON northwinddb_dbo.customers
USING BTREE (postalcode ASC);

CREATE INDEX ix_customers_region
ON northwinddb_dbo.customers
USING BTREE (region ASC);

CREATE INDEX ix_employees_lastname
ON northwinddb_dbo.employees
USING BTREE (lastname ASC);

CREATE INDEX ix_employees_postalcode
ON northwinddb_dbo.employees
USING BTREE (postalcode ASC);

CREATE INDEX ix_orders_customerid
ON northwinddb_dbo.orders
USING BTREE (customerid ASC);

CREATE INDEX ix_orders_customersorders
ON northwinddb_dbo.orders
USING BTREE (customerid ASC);

CREATE INDEX ix_orders_employeeid
ON northwinddb_dbo.orders
USING BTREE (employeeid ASC);

CREATE INDEX ix_orders_employeesorders
ON northwinddb_dbo.orders
USING BTREE (employeeid ASC);

CREATE INDEX ix_orders_orderdate
ON northwinddb_dbo.orders
USING BTREE (orderdate ASC);

CREATE INDEX ix_orders_shippeddate
ON northwinddb_dbo.orders
USING BTREE (shippeddate ASC);

CREATE INDEX ix_orders_shippersorders
ON northwinddb_dbo.orders
USING BTREE (shipvia ASC);

CREATE INDEX ix_orders_shippostalcode
ON northwinddb_dbo.orders
USING BTREE (shippostalcode ASC);

CREATE INDEX ix_products_categoriesproducts
ON northwinddb_dbo.products
USING BTREE (categoryid ASC);

CREATE INDEX ix_products_categoryid
ON northwinddb_dbo.products
USING BTREE (categoryid ASC);

CREATE INDEX ix_products_productname
ON northwinddb_dbo.products
USING BTREE (productname ASC);

CREATE INDEX ix_products_supplierid
ON northwinddb_dbo.products
USING BTREE (supplierid ASC);

CREATE INDEX ix_products_suppliersproducts
ON northwinddb_dbo.products
USING BTREE (supplierid ASC);

CREATE INDEX ix_suppliers_companyname
ON northwinddb_dbo.suppliers
USING BTREE (companyname ASC);

CREATE INDEX ix_suppliers_postalcode
ON northwinddb_dbo.suppliers
USING BTREE (postalcode ASC);

-- ------------ Write CREATE-CONSTRAINT-stage scripts -----------

ALTER TABLE northwinddb_dbo."Order Details"
ADD CONSTRAINT ck_discount_1189579276 CHECK (
(discount >= (0) AND discount <= (1)));

ALTER TABLE northwinddb_dbo."Order Details"
ADD CONSTRAINT ck_quantity_1205579333 CHECK (
(quantity > (0)));

ALTER TABLE northwinddb_dbo."Order Details"
ADD CONSTRAINT ck_unitprice_1221579390 CHECK (
(unitprice >= (0)));

ALTER TABLE northwinddb_dbo."Order Details"
ADD CONSTRAINT pk_order_details_1093578934 PRIMARY KEY (orderid, productid);

ALTER TABLE northwinddb_dbo.categories
ADD CONSTRAINT pk_categories_661577395 PRIMARY KEY (categoryid);

ALTER TABLE northwinddb_dbo.customercustomerdemo
ADD CONSTRAINT pk_customercustomerdemo_1685581043 PRIMARY KEY (customerid, customertypeid);

ALTER TABLE northwinddb_dbo.customerdemographics
ADD CONSTRAINT pk_customerdemographics_1701581100 PRIMARY KEY (customertypeid);

ALTER TABLE northwinddb_dbo.customers
ADD CONSTRAINT pk_customers_693577509 PRIMARY KEY (customerid);

ALTER TABLE northwinddb_dbo.employees
ADD CONSTRAINT ck_birthdate_629577281 CHECK (
(birthdate < clock_timestamp()));

ALTER TABLE northwinddb_dbo.employees
ADD CONSTRAINT pk_employees_597577167 PRIMARY KEY (employeeid);

ALTER TABLE northwinddb_dbo.employeeterritories
ADD CONSTRAINT pk_employeeterritories_1797581442 PRIMARY KEY (employeeid, territoryid);

ALTER TABLE northwinddb_dbo.orders
ADD CONSTRAINT pk_orders_789577851 PRIMARY KEY (orderid);

ALTER TABLE northwinddb_dbo.products
ADD CONSTRAINT ck_products_unitprice_1013578649 CHECK (
(unitprice >= (0)));

ALTER TABLE northwinddb_dbo.products
ADD CONSTRAINT ck_reorderlevel_1029578706 CHECK (
(reorderlevel >= (0)));

ALTER TABLE northwinddb_dbo.products
ADD CONSTRAINT ck_unitsinstock_1045578763 CHECK (
(unitsinstock >= (0)));

ALTER TABLE northwinddb_dbo.products
ADD CONSTRAINT ck_unitsonorder_1061578820 CHECK (
(unitsonorder >= (0)));

ALTER TABLE northwinddb_dbo.products
ADD CONSTRAINT pk_products_885578193 PRIMARY KEY (productid);

ALTER TABLE northwinddb_dbo.region
ADD CONSTRAINT pk_region_1749581271 PRIMARY KEY (regionid);

ALTER TABLE northwinddb_dbo.shippers
ADD CONSTRAINT pk_shippers_725577623 PRIMARY KEY (shipperid);

ALTER TABLE northwinddb_dbo.suppliers
ADD CONSTRAINT pk_suppliers_757577737 PRIMARY KEY (supplierid);

ALTER TABLE northwinddb_dbo.territories
ADD CONSTRAINT pk_territories_1765581328 PRIMARY KEY (territoryid);

-- ------------ Write CREATE-FOREIGN-KEY-CONSTRAINT-stage scripts -----------

ALTER TABLE northwinddb_dbo."Order Details"
ADD CONSTRAINT fk_order_details_orders_1157579162 FOREIGN KEY (orderid) 
REFERENCES northwinddb_dbo.orders (orderid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE northwinddb_dbo."Order Details"
ADD CONSTRAINT fk_order_details_products_1173579219 FOREIGN KEY (productid) 
REFERENCES northwinddb_dbo.products (productid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE northwinddb_dbo.customercustomerdemo
ADD CONSTRAINT fk_customercustomerdemo_1717581157 FOREIGN KEY (customertypeid) 
REFERENCES northwinddb_dbo.customerdemographics (customertypeid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE northwinddb_dbo.customercustomerdemo
ADD CONSTRAINT fk_customercustomerdemo_customers_1733581214 FOREIGN KEY (customerid) 
REFERENCES northwinddb_dbo.customers (customerid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE northwinddb_dbo.employees
ADD CONSTRAINT fk_employees_employees_613577224 FOREIGN KEY (reportsto) 
REFERENCES northwinddb_dbo.employees (employeeid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE northwinddb_dbo.employeeterritories
ADD CONSTRAINT fk_employeeterritories_employees_1813581499 FOREIGN KEY (employeeid) 
REFERENCES northwinddb_dbo.employees (employeeid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE northwinddb_dbo.employeeterritories
ADD CONSTRAINT fk_employeeterritories_territories_1829581556 FOREIGN KEY (territoryid) 
REFERENCES northwinddb_dbo.territories (territoryid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE northwinddb_dbo.orders
ADD CONSTRAINT fk_orders_customers_821577965 FOREIGN KEY (customerid) 
REFERENCES northwinddb_dbo.customers (customerid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE northwinddb_dbo.orders
ADD CONSTRAINT fk_orders_employees_837578022 FOREIGN KEY (employeeid) 
REFERENCES northwinddb_dbo.employees (employeeid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE northwinddb_dbo.orders
ADD CONSTRAINT fk_orders_shippers_853578079 FOREIGN KEY (shipvia) 
REFERENCES northwinddb_dbo.shippers (shipperid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE northwinddb_dbo.products
ADD CONSTRAINT fk_products_categories_981578535 FOREIGN KEY (categoryid) 
REFERENCES northwinddb_dbo.categories (categoryid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE northwinddb_dbo.products
ADD CONSTRAINT fk_products_suppliers_997578592 FOREIGN KEY (supplierid) 
REFERENCES northwinddb_dbo.suppliers (supplierid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE northwinddb_dbo.territories
ADD CONSTRAINT fk_territories_region_1781581385 FOREIGN KEY (regionid) 
REFERENCES northwinddb_dbo.region (regionid)
ON UPDATE NO ACTION
ON DELETE NO ACTION;

-- ------------ Write CREATE-PROCEDURE-stage scripts -----------

CREATE OR REPLACE PROCEDURE northwinddb_dbo."Employee Sales by Country"(IN par_beginning_date TIMESTAMP WITHOUT TIME ZONE, IN par_ending_date TIMESTAMP WITHOUT TIME ZONE, INOUT p_refcur refcursor)
AS 
$BODY$
BEGIN
    OPEN p_refcur FOR
    SELECT
        employees.country, employees.lastname, employees.firstname, orders.shippeddate, orders.orderid, "Order Subtotals".subtotal AS saleamount
        FROM northwinddb_dbo.employees
        INNER JOIN (northwinddb_dbo.orders
        INNER JOIN northwinddb_dbo."Order Subtotals"
            ON orders.orderid = "Order Subtotals".orderid)
            ON employees.employeeid = orders.ix_orders_employeeid
        WHERE orders.ix_orders_shippeddate BETWEEN par_Beginning_Date AND par_Ending_Date;
END;
$BODY$
LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE northwinddb_dbo."Sales by Year"(IN par_beginning_date TIMESTAMP WITHOUT TIME ZONE, IN par_ending_date TIMESTAMP WITHOUT TIME ZONE, INOUT p_refcur refcursor)
AS 
$BODY$
BEGIN
    OPEN p_refcur FOR
    SELECT
        orders.shippeddate, orders.orderid, "Order Subtotals".subtotal, to_char(shippeddate::DATE, 'YYYY') AS year
        FROM northwinddb_dbo.orders
        INNER JOIN northwinddb_dbo."Order Subtotals"
            ON orders.orderid = "Order Subtotals".orderid
        WHERE orders.ix_orders_shippeddate BETWEEN par_Beginning_Date AND par_Ending_Date;
END;
$BODY$
LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE northwinddb_dbo."Ten Most Expensive Products"(INOUT p_refcur refcursor)
AS 
$BODY$
BEGIN
    /*
    [7674 - Severity CRITICAL - AWS SCT can't convert the ROWCOUNT clause of the SET statement. Convert your source code manually.]
    SET ROWCOUNT 10
    */
    OPEN p_refcur FOR
    SELECT
        products.productname AS tenmostexpensiveproducts, products.unitprice
        FROM northwinddb_dbo.products
        ORDER BY products.unitprice DESC NULLS LAST;
END;
$BODY$
LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE northwinddb_dbo.custorderhist(IN par_customerid CHAR, INOUT p_refcur refcursor)
AS 
$BODY$
BEGIN
    OPEN p_refcur FOR
    SELECT
        productname, SUM(quantity) AS total
        FROM northwinddb_dbo.products AS p, northwinddb_dbo."Order Details" AS od, northwinddb_dbo.orders AS o, northwinddb_dbo.customers AS c
        WHERE LOWER(c.customerid) = LOWER(par_CustomerID) AND LOWER(c.customerid) = LOWER(o.customerid) AND o.orderid = od.orderid AND od.productid = p.productid
        GROUP BY productname;
END;
$BODY$
LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE northwinddb_dbo.custordersdetail(IN par_orderid INTEGER, INOUT p_refcur refcursor)
AS 
$BODY$
BEGIN
    OPEN p_refcur FOR
    SELECT
        productname, ROUND(od.unitprice, 2) AS unitprice, quantity, CAST (discount * 100 AS INTEGER) AS discount, ROUND(CAST (quantity * (1 - discount) * od.unitprice AS NUMERIC(19, 4)), 2) AS extendedprice
        FROM northwinddb_dbo.products AS p, northwinddb_dbo."Order Details" AS od
        WHERE od.productid = p.productid AND od.orderid = par_OrderID;
END;
$BODY$
LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE northwinddb_dbo.custordersorders(IN par_customerid CHAR, INOUT p_refcur refcursor)
AS 
$BODY$
BEGIN
    OPEN p_refcur FOR
    SELECT
        orderid, orderdate, requireddate, shippeddate
        FROM northwinddb_dbo.orders
        WHERE LOWER(customerid) = LOWER(par_CustomerID)
        ORDER BY orderid NULLS FIRST;
END;
$BODY$
LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE northwinddb_dbo.salesbycategory(IN par_categoryname VARCHAR, IN par_ordyear VARCHAR DEFAULT '1998', INOUT p_refcur refcursor DEFAULT NULL)
AS 
$BODY$
BEGIN
    IF LOWER(par_OrdYear) != LOWER('1996') AND LOWER(par_OrdYear) != LOWER('1997') AND LOWER(par_OrdYear) != LOWER('1998') THEN
        SELECT
            '1998'
            INTO par_OrdYear;
    END IF;
    OPEN p_refcur FOR
    SELECT
        productname, ROUND(SUM(CAST (od.quantity * (1 - od.discount) * od.unitprice AS NUMERIC(14, 2))), 0) AS totalpurchase
        FROM northwinddb_dbo."Order Details" AS od, northwinddb_dbo.orders AS o, northwinddb_dbo.products AS p, northwinddb_dbo.categories AS c
        WHERE od.orderid = o.orderid AND od.productid = p.productid AND p.categoryid = c.categoryid AND LOWER(c.categoryname) = LOWER(par_CategoryName) AND LOWER(SUBSTR(aws_sqlserver_ext.conv_datetime_to_string('NVARCHAR(22)', 'DATETIME', o.orderdate, 111), 1, 4)) = LOWER(par_OrdYear)
        GROUP BY productname
        ORDER BY productname NULLS FIRST;
END;
$BODY$
LANGUAGE plpgsql;

