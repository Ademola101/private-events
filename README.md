## Private Events

Private Event is an event creator app. The app creates an event after a form has been filled out by the user. Registered users on the platform can signify their willingness to attend any future event on the platform. All the users can also view the participants of a particular event.
* **Home page**
![screenshot](/screenshot/home-page.png)

* **Event page**
![screenshot](/screenshot/Event-reg.png)

* **My event**
![screenshot](/screenshot/my-event.png)

### Live Demo

[Live Demo link](https://first-private-event.herokuapp.com/)



##### Prerequisites

The setups steps expect following tools installed on the system.

* Github
* Ruby [3.0.1](https://github.com/ruby/ruby/tree/ruby_3_1)
* Rails [7.0.1](https://github.com/rails/rails/tree/v7.0.1)

## 1. Check out the repository

```shell
git clone [git@github.com:shadrxcc/private-events.git](https://github.com/shadrxcc/private-events)
cd Private-Events
```

## 2. Check your Ruby version

```shell
ruby -v
```

The ouput should start with `ruby 3.0.1`

## 3. Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```

## 4. Initialize the database

```shell
rails db:create db:migrate db:seed
```

## 5. Start the server

Start the server by running:

```ruby
rails s
```

Navigate to the new route <http://127.0.0.1:3000>

## Built With

* Ruby
* Ruby on Rails

## Authors

👤 **Author 1**

* GitHub: [@Ademola101](https://github.com/Ademola101)
* Twitter: [@ademola_isr](https://twitter.com/ademola_isr)
* LinkedIn: [Ademola Ogunmokun](https://linkedin.com/in/ademola-ogunmokun-492575203)

👤 **Author 2**

* GitHub: [@YinkTech](https://github.com/yinktech)
* Twitter: [@YinkTech](https://twitter.com/yinktech)
* LinkedIn: [Ayeni Olayinka](https://www.linkedin.com/in/ayeni-olayinka-726181134/)

👤 **Author 3**

* GitHub: [@shadrxcc](https://github.com/shadrxcc)
* Twitter: [@shadrxcc](https://twitter.com/yinktech)
* LinkedIn: [Shadrach Akaade](https://linkedin.com/shadrachakaade)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/shadrxcc/private-events/issues).

## Show your support

Give a ⭐️ if you like this project!
