CREATE TABLE "customers" (
  "Customer_id"  SERIAL,
  "email" VARCHAR(50),
  "Phone" VARCHAR(30),
  "address" VARCHAR(100),
  
  PRIMARY KEY ("Customer_id"),
  CONSTRAINT "FK_customers.Customer_id"
    FOREIGN KEY ("Customer_id")
      REFERENCES "customers"("Customer_id")
);

CREATE TABLE "Concessions" (
  "Concession_id"  SERIAL,
  "name" VARCHAR(50),
  "price"  DECIMAL(10,2),
  PRIMARY KEY ("Concession_id"),
  CONSTRAINT "FK_Concessions.price"
    FOREIGN KEY ("price")
      REFERENCES "Concessions"("price")
);

CREATE TABLE "Movies" (
  "movie_id"  SERIAL,
  "Movie_title" VARCHAR(50),
  "Movie_runtime" VARCHAR(30),
  "Movie_genre" VARCHAR(100),
  
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "Tickets" (
  "Ticket_id"  SERIAL,
  "customer_id" VARCHAR(50),
  "seat_number" VARCHAR(100),
  "Movie_id" INTEGER,
  
  PRIMARY KEY ("Ticket_id"),
  CONSTRAINT "FK_Tickets.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "customers"("Customer_id"),
  CONSTRAINT "FK_Tickets.Movie_id"
    FOREIGN KEY ("Movie_id")
      REFERENCES "Movies"("movie_id")
);
