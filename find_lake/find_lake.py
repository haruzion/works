#!/usr/bin/python
# -*- coding: utf-8 -*-

def find_lake(x, y, tate, yoko, lake_map):
    lake_map[x][y] = "."
    around_search = [-1, 0, 1]

    # around search
    for dx in around_search:
        for dy in around_search:
            nx = x + dx
            ny = y + dy

            # check inside and search lake
            if 0 <= nx and nx < tate and 0 <= ny and ny < yoko:
                if lake_map[nx][ny] == "W":
                    find_lake(nx, ny, tate, yoko, lake_map)

def count_lake():
    # set field
    data = raw_input()
    (tate, yoko) = data.split(" ")
    tate = int(tate)
    yoko = int(yoko)

    # set lake_map
    lake_map = []
    for i in range(tate):
        peace = raw_input()
        lake_map.append(list(peace))

    # search lake
    lake_num = 0
    for x in range(tate):
        for y in range(yoko):
            if lake_map[x][y] == "W":
                find_lake(x, y, tate, yoko, lake_map)
                lake_num += 1
    # output
    return lake_num

if __name__ == "__main__":
    # set test_num
    test_num = raw_input()
    for i in range(int(test_num)):
        print count_lake()


