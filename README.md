# Handyman Hardware Rental Centre

The site for Handyman Hardware Rentals. This is part of a demo to be used for CS 490 (Spring 2014) at the University of Waterloo.

## Team Members

* Keanu Lee
* Chris Lomond
* Brett Sun

## Setup

Pretty standard Ruby on Rails setup. Make sure you have Rails 4.1.4 installed. If you have a previous version of Rails, you should be able to just run:

```
gem update rails
```

Then, clone this repository using git, then set up databases (development environment uses SQLite) by running:

```
rake db:migrate
```

Finally, start your local development server:

```
rails s
```

The site should then be accessible at [http://localhost:3000/](http://localhost:3000/).

## Employee Flow

The employees of Handyman will be expected to be able to directly navigate to URLs to perform certain tasks that are "hidden" to customers. Some of these URLs are listed below:

* Create new Rentable (/rentables/new)
* Edit a Rentable (/rentables/1/edit)
* View/edit all Transactions (/transactions)
  * Employees will have access to more editable fields that are inaccessible by the customer.

Note: Here, "1" is an ID of a Rentable.

## Customer Flow

The customers of Handyman can navigate thru the site by clicking on links. Generally, customers:

1. Start at the homepage (/)
2. Click on a Rentable they are interested (/rentables/1)
3. Click "Rent me", which brings them to a new Transaction page (/transactions/new)
4. Fill and submit the form, which brings them to the show/"confirmation" Transaction page (/transactions/1)
