Project documentation stuff (ERD, schema notes, etc.)
# Chinook Database – Schema Notes

The Chinook database represents a digital media store containing information about customers, music tracks, artists, albums, and sales transactions.

## Key Tables Used in Analysis

### customers
Stores customer information such as name, location, and contact details.

### invoices
Contains records of each customer purchase including total transaction value and billing location.

### invoice_items
Represents individual line items within each invoice. This table links purchased tracks to invoices.

### tracks
Contains information about individual songs including album, genre, and media type.

### albums
Groups tracks into albums and links them to artists.

### artists
Contains artist names associated with albums.

### genres
Defines the musical genre associated with each track.

---

## Key Relationships

customers → invoices  
invoices → invoice_items  
invoice_items → tracks  
tracks → albums  
albums → artists  
tracks → genres  

These relationships allow analysis of customer purchases across genres, artists, and geographic regions.
