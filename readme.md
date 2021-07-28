Here are the unique `class` items:

```
 'Biker'
 'Pedestrian'
 'Skater'
 'Cart'
 'Car'
 'Bus'
```

Matlib has several control syntax commands, one of which is [`switch, case, otherwise`](https://www.mathworks.com/help/matlab/ref/switch.html).

It looks like this (from the link above):

```
x = [12 64 24];
plottype = 'pie3';

switch plottype
    case 'bar'
        bar(x)
        title('Bar Graph')
    case {'pie','pie3'}
        pie3(x)
        title('Pie Chart')
    otherwise
        warning('Unexpected plot type. No plot created.')
end
```

So within the `for` loop, which fires for every line, you could say this:

```
switch split{10}
  case 'Biker'
    % code for Biker goes here

  case 'Pedestrian'
    % code for Pedestrian goes here
  case 'Skater'
    % etc
  case 'Cart'
  case 'Car'
  case 'Bus'
  otherwise
    % code here executes if you get something else in split(10)
    % no code at all is probably OK here
end
```

**TAKE NOTE**: the `for` loop has a `break` statement inside which means it will only fire for the first record, and the `break` makes it bail out of the loop.