# Gigih Family Catering

Ordering Food System with Rails

## Setup

```sh
bundle install
```

## Running

To run this project, you can use **Run Button** in Replit.
But if you want to run in the localhost, you can use

```sh
rails s
```

## API Documentation

For Detail API Documentation please check here
[API Documentation](documenter.getpostman.com/view/12824474/Uyr7HeEE)

## Test

For unit test I use RSpec and you can run the test with

```sh
bundle exec rspec -fd
```

## Scheduler

I use rufus-scheduler to run scheduled task, to cancel order that haven't been paid in 5pm, and here is the code

```sh
s.cron '0 17 * * *' do
  orders = Order.where(status: :NEW)
  puts orders.size.to_s + " orders cancelled"
  orders.update_all(status: :CANCELED)
end
```

You can check more detail in config/initializers/scheduler.rb

## Features

I have completed 7 user stories on the problem statement. And all the bonus points that have been mentioned. And I've added API Documentation using Postman and Web Admin.

## Web Admin

I use Trestle to make Web Admin
You can open in **'/admin'** path

**NOTE :** For things that can be done on the Web Admin is rather limited, to do more complex things such as insert order with order detail and others please use the API above.

## Library

| Library                                                         | Description |
| --------------------------------------------------------------- | --------- |
| [rufus-scheduler](https://github.com/jmettraux/rufus-scheduler) | Scheduler |
| [Trestle](https://github.com/TrestleAdmin/trestle)              | Web Admin |
