1NF Check (First Normal Form)
All tables have atomic attribute values (e.g., no repeating groups or arrays).

Each table has a primary key ensuring uniqueness.

Example: User table stores one email, one phone number per row.

Result: the schema satisfies 1NF.

2NF Check (Second Normal Form)
Non-key attributes must fully depend on the entire primary key.

All primary keys are simple (single UUID) except potentially composite keys (not present).

Attributes depend fully on the primary key.

Foreign keys enforce proper references.

Result: The schema satisfies 2NF since no partial dependency exists on part of a composite key.

3NF Check (Third Normal Form)
No transitive dependencies allowed; non-key attributes cannot depend on other non-key attributes.

Example,

User Table:
Attributes like first_name, last_name, email, password_hash, phone_number, role depend only on user_id.

No attribute is dependent on another non-key attribute.

Property Table:
Attributes like host_id, name, description, location, pricepernight all depend on property_id.

No attribute depends on another non-key attribute.

Booking Table:
Attributes depend only on booking_id.

No attribute depends transitively, like if total price depended on other non-key fields beyond PK.

Payment Table:
Attributes depend only on payment_id, no attributes depend transitively.

Review Table:
Attributes depend only on review_id.


Conclusion on 3NF Compliance
The database is already in 3NF since :

All fields are atomic (1NF).

All attributes fully depend on the whole primary key (2NF).

There are no transitive dependencies, meaning no non-key attribute depends on another non-key attribute (3NF).
