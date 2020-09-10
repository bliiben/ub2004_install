# Variable assignement within conditions

## The problem

I was trying to create some algorithm using a datastructure which was being modified within this
algorithm. Like this :

<pre>
while indexes_to_modify:
    modify_indexes(indexes_to_modify)

</pre>

I was testing if it was possible to assign the next `indexes_to_modify` in the while loop in python,
knowing full well that this is possible in many other languages. And I got sad when it didn't work.

Like this one liner (_My algorithm does not actually modify anything from the condition, this is
just an example. I don't think this it's nice to modify a structure in a condition, it would be
confusing and hard to debug imo_)

```
while indexes_to_modify = modify_indexes(indexes_to_modify):
    pass
```

## The solution

So looking on duckduckgo, and realize python3.8 introduced this. Which makes python3.8 even
greater, with the other features I enjoy (the statistics package, for example). My
only complaint, is mainly that some package don't support `3.8`, and having to manage `3.6` and
`3.8` is inconvenient.

```
while indexes_to_modify := modify_indexes(indexes_to_modify):
    pass
```

A simple modification, and the usage of the Golang's version of assignments makes it possible. I
find nice that it isn't a simple `=`, as I often mistype a single `=` instead of `==` in
conditions, and that would make things harder to debug.

Love it!
