#!/usr/bin/python
# -*- coding: utf-8 -*-

def pay_coin():

    # load data
    data = raw_input()
    coin_num_list = data.split(" ")

    # set price
    price = coin_num_list.pop()
    price = int(price)

    # set coin value
    coin_value_list = (1, 5, 10, 50, 100, 500)

    # pay coin
    use_coin = 0
    for i in range(6)[::-1]:
        maisu = int(coin_num_list[i])
        value = int(coin_value_list[i])

        syou  = price / value

        # calc
        use_coin_num = min( (syou, maisu) )
        price -= (value * use_coin_num)
        use_coin += use_coin_num

        # output
        if price == 0:
            return use_coin


if __name__ == "__main__":
    # set test_num
    test_num = raw_input()
    for i in range(int(test_num)):
        print pay_coin()


