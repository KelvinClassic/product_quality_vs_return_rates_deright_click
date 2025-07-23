This project contains 3 datasets and it comprises of;

**Product Table:**

-  Product ID (Primary Key): A unique identifier for each product.
- Product Category: Categorization of products (e.g., smartphones, laptops, accessories).
- Product Attributes: Specifications, features, and quality-related attributes.
 

**Sales Table:**

- Sale ID (Primary Key): A unique identifier for each sales transaction.
- Product ID (Foreign Key): A reference to the corresponding product in the Product Table.
- Sales Date: The date when the product was sold.
- Sales Volume: The number of units of the product sold (e.g., 100 units).
- Revenue Generated: The total revenue generated from the sales in dollars (e.g., $10,000).
 

**Customer Feedback Table:**

- Feedback ID (Primary Key): A unique identifier for each feedback entry.
- Product ID (Foreign Key): A reference to the corresponding product in the Product Table.
- Return Date: The date when the product was returned.
- Return Reason: The reason provided by the customer for the return (e.g., Defective, Not as Described).
- Customer Feedback: Additional comments or feedback provided by customers regarding their experience with the product and return process.
