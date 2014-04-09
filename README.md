Matrix Walk
===========

Take one step at a time, and turn clockwise, and move if it's within the board and have not been visited before.

What's the number of steps taken when there is nowhere to move.

```sh
1.9.3-p194 :001 > load 'lib/matrix_walk.rb'
 => true
1.9.3-p194 :002 > matrix = MatrixWalk.new(3, 3)
 => #<MatrixWalk:0x007fd36d493570 @board=[[1, 0, 0], [0, 0, 0], [0, 0, 0]], @steps=1, @current_position=[0, 0], @current_direction=0>
1.9.3-p194 :003 > matrix.take_walk

Number of steps: 9
1 2 9
4 3 8
5 6 7

 => nil
1.9.3-p194 :004 > matrix = MatrixWalk.new(7, 4)
 => #<MatrixWalk:0x007fd36d4a26b0 @board=[[1, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]], @steps=1, @current_position=[0, 0], @current_direction=0>
1.9.3-p194 :005 > matrix.take_walk

Number of steps: 18
1 2 0 0
4 3 0 0
5 6 0 0
8 7 0 0
9 10 0 0
12 11 16 17
13 14 15 18

 => nil
1.9.3-p194 :006 > matrix = MatrixWalk.new(9, 9)
 => #<MatrixWalk:0x007fd36d4c09d0 @board=[[1, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0]], @steps=1, @current_position=[0, 0], @current_direction=0>
1.9.3-p194 :007 > matrix.take_walk

Number of steps: 81
1 2 55 54 51 50 47 46 45
4 3 56 53 52 49 48 43 44
5 6 57 58 79 78 77 42 41
8 7 60 59 80 75 76 39 40
9 10 61 62 81 74 73 38 37
12 11 64 63 68 69 72 35 36
13 14 65 66 67 70 71 34 33
16 15 20 21 24 25 28 29 32
17 18 19 22 23 26 27 30 31

 => nil
```
