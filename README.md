# Tea Subscription

![Ruby on Rails](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)

A Rails back-end RESTFUL API that provides a simple skeleton of a tea subscriprtion service.

### System Dependencies

Ruby 2.7.4
Rails 5.2.8

### Configuration
#### Database Setup

1. Fork and clone the repository, then cd into your repository and run in your CLI:
"bundle install"

2. Create and seed the database by running in CLI: "rails db:{create,migrate,seed}"

3. Start your rails server with "rails s"

### Database Schema

<img width="808" alt="Screen Shot 2023-01-12 at 2 27 56 PM" src="https://user-images.githubusercontent.com/60406424/212184956-283d6c2e-c520-4079-b6a0-f3355c28e871.png">


### Endpoints

**Get all Subscriptions for a customer**

Sample Request:
  GET http://localhost:3000/api/v1/customers/1/subscriptions

Sample Response:

```json
{
    "data": [
        {
            "id": "1",
            "type": "subscription",
            "attributes": {
                "customer_id": 1,
                "id": 1,
                "tea_id": 10,
                "frequency": "monthly",
                "status": "active",
                "title": "Gongmei",
                "price": 69
            }
        },
        {
            "id": "2",
            "type": "subscription",
            "attributes": {
                "customer_id": 1,
                "id": 2,
                "tea_id": 11,
                "frequency": "weekly",
                "status": "active",
                "title": "Shou Mei",
                "price": 52
            }
        }]
}
```

---

**Create a new Subscription**

Sample Request:
  POST http://localhost:3000/api/v1/customers/1/subscriptions

  Body:

  ```json
  {
  "tea_id": "1",
  "price": "30",
  "frequency": "monthly",
  "title": "Help I'm Alive"
    }
    ```

Sample Response:

```json
{
    "data": {
        "id": "6",
        "type": "subscription",
        "attributes": {
            "customer_id": 2,
            "id": 6,
            "tea_id": 1,
            "frequency": "monthly",
            "status": "active",
            "title": "Help I'm Alive",
            "price": 30
        }
    }
}
```

---

**Update (Cancel) a Subscription**

Sample Request:

  PATCH http://localhost:3000/api/v1/customers/{customer_id}/subscriptions/{subscription_id}
  Params: { status: "canceled" }

Sample Response:

```json
{
    "data": {
        "id": "1",
        "type": "subscription",
        "attributes": {
            "customer_id": 1,
            "id": 1,
            "tea_id": 10,
            "frequency": "monthly",
            "status": "canceled",
            "title": "Gongmei",
            "price": 69
        }
    }
}
```



