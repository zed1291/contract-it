# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
rails g resource owner name:string
rails g resource contract terms:string title:string owner:references
rails g resource bid quote:integer contract:references general_contractor:references
rails g resource general_contractor name:string
rails g resource sub_contract terms:string general_contractor:references
rails g resource sub_bid quote:integer sub_contract:references subcontractor:references
rails g resource subcontractor name:string