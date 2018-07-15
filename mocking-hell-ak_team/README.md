# AK Team - e-BOK Siłownia
| Autorzy | Język programowania | Travis Status | CC Maintainability Status | CC Coverage Status |
:--:|:--:|:--:|:--:|:--:
| [![tadamczyk](https://avatars1.githubusercontent.com/u/16397764?s=40&v=4)](https://github.com/tadamczyk) [![olekkosma](https://avatars0.githubusercontent.com/u/16398511?s=40&v=4)](https://github.com/olekkosma) | [![ruby](https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Ruby_logo.svg/36px-Ruby_logo.svg.png)](https://pl.wikipedia.org/wiki/Ruby_(język_programowania)) | [![Build Status](https://travis-ci.org/my-rspec/mocking-hell-ak_team.svg?branch=master)](https://travis-ci.org/my-rspec/mocking-hell-ak_team) | [![Maintainability](https://api.codeclimate.com/v1/badges/8302b279ffca574e79f1/maintainability)](https://codeclimate.com/github/my-rspec/mocking-hell-ak_team/maintainability) | [![Test Coverage](https://api.codeclimate.com/v1/badges/8302b279ffca574e79f1/test_coverage)](https://codeclimate.com/github/my-rspec/mocking-hell-ak_team/test_coverage) |

****

**Jak uruchomić program?**

Uruchom terminal i wpisz:  
``bundle install --path vendor/bundle``  
``bundle exec bin/run``

****

**Struktura plików:**
> [bin](bin)
>> [run](bin/run)

> [lib](lib)
>> [program](lib/program.rb)  
>> [email](lib/email.rb)  
>> [person](lib/person.rb)  
>> [ticket](lib/ticket.rb)  
>> [account](lib/account.rb)  
>> [gym](lib/gym.rb)  
>> [history](lib/history.rb)

> [spec](spec)
>> [spec_helper](spec/spec_helper.rb)  
>> [email_spec](spec/0_unit/email_spec.rb)  
>> [person_spec](spec/0_unit/person_spec.rb)  
>> [ticket_spec](spec/0_unit/ticket_spec.rb)  
>> [account_spec](spec/1_integration/account_spec.rb)  
>> [gym_spec](spec/1_integration/gym_spec.rb)  
>> [history_spec](spec/1_integration/history_spec.rb)

> [Gemfile](Gemfile)  
> [Rakefile](Rakefile)  
> [Travis](.travis.yml)  
> [Rubocop](.rubocop.yml)  
> [RSpec](.rspec)  
> [README](README.md)