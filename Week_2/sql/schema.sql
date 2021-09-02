DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS people;

CREATE TABLE "movies" (
    "movie_id" int   NOT NULL,
    "movie_name" varchar   NOT NULL,
    "movie_year" int   NOT NULL,
    "movie_genre" varchar   NOT NULL,
    CONSTRAINT "pk_movies" PRIMARY KEY (
        "movie_id"
     )
);

CREATE TABLE "ratings" (
    "rating_id" int   NOT NULL,
    "person_id" int   NOT NULL,
    "movie_id" int   NOT NULL,
    "rating" int,
    "has_seen" boolean   NOT NULL,
    CONSTRAINT "pk_ratings" PRIMARY KEY (
        "rating_id"
     )
);

CREATE TABLE "people" (
    "person_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "relationship" varchar   NOT NULL,
    "gender" varchar   NOT NULL,
    CONSTRAINT "pk_people" PRIMARY KEY (
        "person_id"
     )
);

ALTER TABLE "ratings" ADD CONSTRAINT "fk_ratings_person_id" FOREIGN KEY("person_id")
REFERENCES "people" ("person_id");

ALTER TABLE "ratings" ADD CONSTRAINT "fk_ratings_movie_id" FOREIGN KEY("movie_id")
REFERENCES "movies" ("movie_id");

