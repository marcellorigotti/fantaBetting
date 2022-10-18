CREATE DATABASE fantaBetting;

CREATE TABLE users(
  user_id uuid DEFAULT uuid_generate_v4(),
  user_name VARCHAR(255) NOT NULL,
  user_email VARCHAR(255) NOT NULL UNIQUE,
  user_password VARCHAR(255) NOT NULL,
  PRIMARY KEY(user_id)
);

CREATE TABLE bet(
  bet_id SERIAL,  --ID from betfair, TODO: change type
  user_id UUID ,
  bets JSON, --JSON of the bets
  date DATE, --timestamp
  tournament_id integer,
  PRIMARY KEY (bet_id),
  FOREIGN KEY (tournament_id) REFERENCES tournament(tournament_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE tournament(
  tournament_id SERIAL,  --ID from betfair, TODO: change type
  description text NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  PRIMARY KEY (tournament_id)
);





INSERT INTO users (user_name, user_email, user_password) VALUES ('example_name', 'example_email@gmail.com', 'example_password');