# EqualityThroughVariablesTrait
A Pharo trait that implements equality via the equality of instance and indexed variables

To install in Pharo 7, execute the following lines in a playground:
```
Metacello new
    baseline: 'EqualityThroughVariablesTrait';
    repository: 'github://khinsen/EqualityThroughVariablesTrait/src';
    load.
```

Note: this trait is convenient but its equality test is very slow because it gets the list of all instance variable names for every single comparison. I am still looking for a more efficient way to do this, e.g. by looking up the names only once per class.
