% A crash course in MATLAB basics.
%
% Created by Marcel Goldschen-Ohm <goldschen-ohm@utexas.edu>

%% GUI layout
% - Toolbar
% - Command Window
% - Editor
% - Workspace
% - File browser

%% Close and reopen this file via the file browser

%% Start of a code block. Command-Enter executes entire block

% Display a message.
disp('Hello'); % Comments can follow code on the same line.

%% Define some variables. They will be listed in the workspace
% Variable names must begin with a letter,
% but thereafter can contain letters, numbers or underscores.
x = 3
y = 5;
y = "hi";
my_v6_55 = 82.01;

% Note: Compare to a statically typed language like C:
% int y = 5; // y is defined as an integer, and can never be anything else.
% y = 67; // OK, it's still an integer
% y = "hi"; // ERROR, an integer can't become a string
% y = 3.5; // ERROR, an integer can't become a decimal

%% Re-evaluate only the first two lines of the above block

%% Reset y to 2 manually in command window

%% Clear command window by entering 'home'

%% ans stores most recent unassigned result
x + y % addition
x * y % multiplicaiton
ans / y % division
z = x^y; % power

%% Delete the variables x and ans
clear x ans

%% Clear all variables
clear all

%% Types
x = 1 + 3.5;
y = 1 + 3.0;
z = 1 + 3; % Default type is double (floating point, not integer)!
aString = "1" + 3; % A string, not a number!
huh = '1' + 3; % A number, but it's NOT 13!
double('1')

%% Checking types
class(x), class(y), class(z), class(aString)

%% Getting HELP
help class
doc class
% also, the internet

%% Defining types
% double	Double-precision 64-bit floating point <== !!! DEFAULT
% single	Single-precision 32-bit floating point
% int8      8-bit signed integer
% int16     16-bit signed integer
% int32     32-bit signed integer
% int64     64-bit signed integer
% uint8     8-bit unsigned integer
% uint16	16-bit unsigned integer
% uint32	32-bit unsigned integer
% uint64	64-bit unsigned integer

z = int32(4); class(z)

%% Operations between types may not result in what you expect!!!
z * 2
z * 2.0
z * 2.5 % Combining integers and doubles results in integers!!!
double(z) * 2.5

%% Invalid operations.
thisWontWork = '1' / 3; % ERROR

%% Arrays
clear all
a1 = [1 2 3 4 5]
a2 = [1.0, 2.0, 3.0, 4.0, 5.0]
a3 = [1:5]
a4 = [1:2:5]
a5 = [a4, 6:0.5:7, [9 10]]

%% Array indexing
a1(1) % first element
a1(2) % second element
a1(end-1) % second to last element
a1(end) % last element

%% Index ranges
a1(1:3)
a1(1:2:end)
a1([2 end-1 end])
% a1(1 4) % ERROR

%% Strings are arrays of chars.
clear all
str = 'Hello there.';
class(str) % char
length(str) % number of chars in str
c01 = str(1) % first char in str
c02 = str(2) % second char in str
c11 = str(end-1) % second to last char in str
c12 = str(end) % last char in str
str(55) % invalid char index

%% Substrings
s1_5 = str(1:5)
s5_11 = str(5:end-1)

%% Double quotes treated as string objects rather than char arrays.
str2 = "Hi-ya!";

class(str2)
length(str2)
str2(1)

%% Convert between numbers and strings.
n = str2num('2.3')
s = num2str(4.5e3)

%% Concatenate strings
[str ' ==> ' s]

disp(['str is a ' class(str)]);
disp(['str2 is a ' class(str2)]);
disp(['n is a ' class(n)]);
disp(['n = ' num2str(n)]);

%% Use command history (up arrow) to clear command window again.

%% Conditionals
clear all
[1 == 1, 1.0 == 1, 1.5 == 1, 1.5 ~= 1, 1 ~= 1, true, false]
[3 < 5.5, -1 > 2, 7 <= 7.1, 7 >= 7, (7 == 7) == false]
class(1 < 0)

%% Logical AND
1 == 1 && 2 == 2
1 == 1 && 1 == 2

%% Logical OR
1 == 1 || 1 == 2
1 == 0 || 1 == 2

%% Finding array elements
a = [1 2 3 4 5 5 5 6 7 8 9 10]
lessthan5 = find(a < 5) % indices into a for values of a < 5
morethan5 = find(a > 5) % indices into a for values of a > 5
equalto5 = find(a == 5) % indices into a for values of a = 5
a(lessthan5)
a(morethan5)
a(equalto5)

%% If statement
x = -5;
y = 7;
home

if x > 0
    disp('choose x');
end

if y > 0
    disp('choose y');
end

%% If-else statement
home
if x > 0
    disp('choose x');
else
    disp('choose y');
end

%% If-elseif-else statement
home
if x > 0
    disp('choose x');
elseif y > 0 && false
    disp('choose y');
else
    disp('choose z');
end

%% For loop
for n = 1:5
    disp(n);
end

%% While loop
n = 6;
while n <= 10
    disp(n);
    n = n + 1;
end

%% Exiting the loop
for n = 1:5
    if n == 4
        break
    end
    disp(n);
end

%% Skipping to next loop iteration
for n = 1:5
    if n < 3
        continue
    end
    disp(n);
end

%% Looping over arrays by index
a = 10:2:15;
for n = 1:length(a)
    disp(a(n));
end

%% Matrices (2-dimensional arrays)
m = [[1, 2]; [3, 4]]
[1 2; 3 4]

%% Matrix (row,column) indexing
[m(1,1) m(1,2) m(2,1) m(2,2)] % (row, column)
[m(1) m(2) m(3) m(4)] % index is column major order
m(2,2) = 5

%% Concatenating matrices
[m m] % stack horizontally
[m; m] % stack vertically

%% Initializing matrices
clear all
zeros([3, 3])
ones(3, 3)
m = rand([5 5])

%% Rows and columns
m
m(2,:) % second row
m(:,3) % third column
m(2,:) = 4

%% Sub-matrices
m
m(1:3,end-1:end) = 0 % upper right block
m(1:2:end,1:2) = 0 % every other row for first two columns

%% Deleting rows/columns
m(:,3) = [] % delete third column

%% Adding rows/columns
m(:,5) = [1:5] % add fifth column

%% N-dimensional arrays
rand([3 3 3])

%% Adding dimensions
m(:,:,2) = 5

%% Removing dimensions
m(:,:,1) = []

%% Matrix multiplication
A = [1 2; 3 4]
b = [1; 2]
A*b
A*A

%% Element-wise multiplication
A
A.*A
A*2

%% Broadcasting
A
b
A.*b
A.*[1 2]

%% Cell arrays
arrayOfStrings = {'hi', 'bye', 'hello'}
arrayOfArrays = {[1 2], [5:9], [100:50:200]}
arrayOfStrings{1}
arrayOfArrays{3}

%% Structs
mystuff.x = 1;
mystuff.name = 'so cool';
mystuff

%% Maps
mymap = containers.Maps
mymap('something') = 2;
mymap('something else') = 25.3;
keys(mymap)
values(mymap)
mymap('something else')

%% Save data
save('mydata.mat', 'A', 'b', 'mystuff');

%% Load data
clear all
load('mydata.mat');
A
b
mystuff

%% File paths
clear all
myfolder = pwd % present working directory
filepath = fullfile(myfolder, 'mydata.mat')
cd .. % Go up to parent directory

%% Load data in another folder
load(filepath);
A
b
mystuff

%% Speed and timing
a = 1:1e6;

tic
for n = 1:length(a)
    a(n) = a(n)^2;
end
toc

tic
a = a.^2;
toc

clear a

%% Abort a long or stalled operation with 'Control+C' (or 'Command+period' on Mac) in command window
for n = 1:1e6
    disp('will not stop');
end

%% Scatter plot
clear all
x = 1:10;
y = rand([10 1]);
plot(x, y);

%% Line styles
plot(x, y, '-o');

%% Plot over top
z = rand([10 1]);
hold on
plot(x, z, '--s');

%% Plot labels
xlabel('x');
ylabel('y or z');
title('My Plot');
legend({'y', 'z'}, 'location', 'northeast');

%% Replot
hold off
plot(x, y, '-o');

%% Use the figure GUI to play with plot options

%% Save the plot to file *.fig

%% Clear the plot
cla % clear current axes

%% Close all figure windows
close all

%% Now reopen your saved plot from the file browser

%% Multiple figures
close all
fig1 = figure;
fig2 = figure;
plot(x, y, '-o');
figure(fig1);
plot(x, z, '--s');

%% Multiple axes on one figure
close all

subplot(2, 2, 1);
plot(x, y, 'b-^');

subplot(2, 2, 2);
plot(x, z, 'b-^');

subplot(2, 2, 3);
plot(x, y, 'r--v', 'linewidth', 3, 'markersize', 12);

subplot(2, 2, 4);
plot(x, z, 'r--v', 'linewidth', 3, 'markersize', 12);

%% Overlay plot for specific axes
subplot(2, 2, 1);
hold on
plot(mean(x), mean(y), 'ko', 'markersize', 16, 'markerface', [0 0 0]);

%% There are lots more types of plots
% e.g. histograms, bar plots, 3D plots, contours, etc.
% We'll use some of these as we go along down the road.

%% Functions
% Functions are defined in their own .m files.
% File name should be the same as the function name with extension .m
% Let's use the function in getSumAndProduct.m
[s, p] = getSumAndProduct(2, 3)

%% Path
% Go to another folder and try to run the above function.
% Add the function's location to path and try again.
% Reset the path.

%% Inline functions
f = @(x,y) x^y;

class(f)
f(2, 3)
f(3, 2)
f(3, 2) == 3^2

%% Classes
a = Animal(3);
a.legs
a.run()

%% Inheritance
cat = Cat(true);
cat.legs
cat.isDeclawed
cat.run()
cat.pounce()

%% Congrats!
% I probably forgot something, but even so you now know just about
% everything you'll need to get started with MATLAB.

% You'll pick up the rest along the way ;)
