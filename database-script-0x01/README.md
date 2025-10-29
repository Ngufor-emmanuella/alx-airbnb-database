# alx-airbnb-database
## An SQL DDL is created whcih  creates a normalized, and well-indexed schema 

- UUID is used as primary keys and foreign keys to uniquely identify rows.

- ENUM types enforce valid values for roles, booking status, and payment methods.

- Foreign key constraints enforce referential integrity between related entities.

- Indexes improve query performance on commonly searched fields like email, foreign keys.

- NOT NULL constraints ensure required data is always present.

- CHECK constraint on rating in Review enforces allowed rating range.

- Timestamp columns default to current timestamp for creation or update tracking.

- ON UPDATE CURRENT_TIMESTAMP on Property.updated_at keeps update times accurate.

