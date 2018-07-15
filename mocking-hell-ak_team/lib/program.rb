require 'rainbow'
require_relative 'gym'
require_relative 'history'
require_relative 'account'
require_relative 'person'
require_relative 'email'
require_relative 'ticket'

class Program
  def initialize
    @gym = start
    loop do
      menu
      choosen
      case gets.chomp
      when '1', 'a', 'A'
        accounts_tickets_menu
        choosen
        case gets.chomp
        when '1'
          system 'clear'
          @gym.show_all_accounts
          gets.chomp
        when '2'
          system 'clear'
          print Rainbow('Enter ID: ').lightgreen
          id = gets.chomp
          @gym.show_account(id.to_i)
          gets.chomp
        when '3'
          system 'clear'
          print Rainbow('Enter firstname: ').lightgreen
          firstname = gets.chomp
          print Rainbow('Enter lastname: ').lightgreen
          lastname = gets.chomp
          print Rainbow('Enter email: ').lightgreen
          email = gets.chomp
          @gym.add_account(firstname, lastname, email)
          gets.chomp
        when '4'
          system 'clear'
          print Rainbow('Enter ID: ').lightgreen
          id = gets.chomp
          @gym.show_account(id.to_i)
          print Rainbow('Enter firstname: ').lightgreen
          firstname = gets.chomp
          print Rainbow('Enter lastname: ').lightgreen
          lastname = gets.chomp
          print Rainbow('Enter email: ').lightgreen
          email = gets.chomp
          @gym.edit_account(id.to_i, firstname, lastname, email)
          gets.chomp
        when '5'
          system 'clear'
          print Rainbow('Enter ID: ').lightgreen
          id = gets.chomp
          @gym.remove_account(id.to_i)
          gets.chomp
        else
          wrong_choice
        end
      when '2', 't', 'T'
        accounts_tickets_menu
        choosen
        case gets.chomp
        when '1'
          system 'clear'
          @gym.show_all_tickets
          gets.chomp
        when '2'
          system 'clear'
          print Rainbow('Enter ID: ').lightgreen
          id = gets.chomp
          @gym.show_ticket(id.to_i)
          gets.chomp
        when '3'
          system 'clear'
          print Rainbow('Enter type: ').lightgreen
          type = gets.chomp
          print Rainbow('Enter price: ').lightgreen
          price = gets.chomp
          print Rainbow('Enter start date (YYYY-MM-DD): ').lightgreen
          start_date = gets.chomp
          print Rainbow('Enter end date (YYYY-MM-DD): ').lightgreen
          end_date = gets.chomp
          active = Date.parse(end_date) >= Date.today
          @gym.add_ticket(type, price.to_i, start_date, end_date, active)
          gets.chomp
        when '4'
          system 'clear'
          print Rainbow('Enter ID: ').lightgreen
          id = gets.chomp
          @gym.show_ticket(id.to_i)
          print Rainbow('Enter type: ').lightgreen
          type = gets.chomp
          print Rainbow('Enter price: ').lightgreen
          price = gets.chomp
          print Rainbow('Enter start date (YYYY-MM-DD): ').lightgreen
          start_date = gets.chomp
          print Rainbow('Enter end date (YYYY-MM-DD): ').lightgreen
          end_date = gets.chomp
          print Rainbow('Active? Y/N ').lightgreen
          active = gets.chomp
          active = if (active == 'y') || (active == 'Y') || (active == '')
                     true
                   else
                     false
                   end
          @gym.edit_ticket(id.to_i, type, price.to_i, start_date, end_date, active)
          gets.chomp
        when '5'
          system 'clear'
          print Rainbow('Enter ID: ').lightgreen
          id = gets.chomp
          @gym.remove_ticket(id.to_i)
          gets.chomp
        else
          wrong_choice
        end
      when '3', 'h', 'H'
        submenu
        puts
        choosen
        case gets.chomp
        when '1'
          system 'clear'
          @gym.show_all_histories
          gets.chomp
        when '2'
          system 'clear'
          print Rainbow('Enter ID: ').lightgreen
          id = gets.chomp
          @gym.show_history(id.to_i)
          gets.chomp
        when '3'
          system 'clear'
          @gym.show_all_accounts
          print Rainbow('Enter account ID: ').lightgreen
          account_id = gets.chomp
          puts
          @gym.show_all_tickets
          print Rainbow('Enter ticket ID: ').lightgreen
          ticket_id = gets.chomp
          @gym.add_history(account_id.to_i, ticket_id.to_i)
          gets.chomp
        else
          wrong_choice
        end
      when '4'
        system 'clear'
        authors
        gets.chomp
      when '5', 'e', 'E'
        exit
      else
        wrong_choice
        gets.chomp
      end
      puts
    end
    exit
  end

  def choosen
    puts
    print Rainbow('Your choice: ').springgreen
  end

  def menu
    system 'clear'
    puts Rainbow('------------------------------------------------------------').crimson
    puts Rainbow('|--             Gym :: CustomerServiceOffice             --|').crimson
    puts Rainbow('------------------------------------------------------------').crimson
    puts
    puts Rainbow('1:').crimson.underline + Rainbow(' Accounts').red + '   ' + Rainbow('2.').crimson.underline \
    + Rainbow(' Tickets').red + '   ' + Rainbow('3:').crimson.underline + Rainbow(' History').red + '   ' \
    + Rainbow('4.').crimson.underline + Rainbow(' Authors').red + '   ' + Rainbow('5.').crimson.underline \
    + Rainbow(' Exit').red
  end

  def submenu
    menu
    print '   ' + Rainbow('1.').red.underline + Rainbow(' Show all').green + '   ' + Rainbow('2.').red.underline \
    + Rainbow(' Show one').lightgreen + '   ' + Rainbow('3.').red.underline + Rainbow(' Add').aqua + '   '
  end

  def accounts_tickets_menu
    submenu
    puts Rainbow('4.').red.underline + Rainbow(' Edit').cyan + '   ' + Rainbow('5.').red.underline \
    + Rainbow(' Remove').blue
  end

  def authors
    puts Rainbow('---                      Authors                        ---').crimson
    puts Rainbow('---                                                     ---').crimson
    puts Rainbow('---').crimson \
    + Rainbow('        Tomasz Adamczyk     Aleksander Kosma         ').darkred.bright \
    + Rainbow('---').crimson
    puts Rainbow('---             243217              238193              ---').crimson
    puts Rainbow('---                      -------                        ---').crimson
  end

  def wrong_choice
    puts Rainbow('Wrong choice!').red
  end

  def start
    @program = Gym.new
    @program.add_account('Tomasz', 'Adamczyk', 'tadamczyk@sigma.ug.edu.pl')
    @program.add_account('Aleksander', 'Kosma', 'akosma@sigma.ug.edu.pl')
    @program.add_account('Dawid', 'Ćwik', 'dcwik@sigma.ug.edu.pl')
    @program.add_account('Jakub', 'Balcer', 'jbalcer@sigma.ug.edu.pl')
    @program.add_ticket('One-time pass', 10, '2018-01-01', '2018-01-01', true)
    @program.add_ticket('Long-time pass', 120, '2018-01-01', '2018-04-01', true)
    @program.add_ticket('Long-time pass', 105, '2017-01-01', '2017-04-01', false)
    @program.add_history(0, 0)
    @program.add_history(1, 1)
    @program.add_history(2, 2)
    @program
  end
end
