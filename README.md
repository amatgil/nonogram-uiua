# Nonogram solver
## Usage
Rules should be a two-array of the values that are allowed. For example:

```
               3   2
       3 3 3   3 1 1
      +- - - - - - -
1 1   |
1 1 1 |
1 1 1 |
      |
1 1 1 |
1 1 1 |
1 1 3 |
```
becomes

```ua
Example ← [
  {[1 1] [1 1 1] [1 1 1] [] [1 1 1] [1 1 1] [1 1 3]}
  {[3] [3] [3] [] [3 3] [1] [2 1]}
]
```
