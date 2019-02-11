# Backend API for Borås Elnät Invoice Management App

## Prerequisites

With the default gem-setup Microsoft SQL Server 2017 needs to be installed on your system.

## Installation

```
git clone git@github.com:FrontEdgeIT/boras-invoice-backend.git
bundle install
rails db:create db:migrate
```
### Create first user

```
Rails c
User.create(email:"<your_email@exmaple.com>", password: "<your_password>", password_confirmation: "<your_password>")
```

## Models

| Name         | Route                 |
| ------------ | --------------------- |
| Invoice      | api/v1/invoices       |
| InvoiceItem  | api/v1/invoice_items  |
| Customer     | api/v1/customers      |
| Product      | api/v1/products       |
| PricePartial | api/v1/price_partials |
| Issuer       | api/v1/issuers        |
| ProductPrice | {join-table}          |
| User         | api/v1/users          |

## Authentication and token management

[DeviseTokenAuth](https://github.com/lynndylanhurley/devise_token_auth)


