[![nimble](https://raw.githubusercontent.com/knaque/nimble-tag-2/master/nimble-tag-2.png)](https://github.com/knaque/nimble-tag-2)

# stalinsort
The Stalin Sort algorithm from r/programmerhumor, implemented in Nim.

`nimble install stalinsort`


## Usage
Stalinsort adds two new procs: `stalinSort()` and `stalinSorted()`.
They work mostly like their standard library equivalents.
```nim
stalinSort(<var seq>, <algorithm.SortOrder>) # modifies the <var seq> directly.
stalinSorted(<openArray>, <algorithm.SortOrder>) # returns the sorted openArray as a seq.
```