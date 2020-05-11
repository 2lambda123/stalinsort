import unittest
import ../src/stalinsort

suite "Integers":
  test "sort ord asc":
    var z = @[1, 2, 3, 4, 5]; z.stalinSort()
    check z == @[1, 2, 3, 4, 5]
  test "sort ord desc":
    var z = @[5, 4, 3, 2, 1]; z.stalinSort(Descending)
    check z == @[5, 4, 3, 2, 1]
  test "sort unord asc":
    var z = @[3, 5, 1, 2, 4]; z.stalinSort()
    check z == @[3, 5]
  test "sort unord desc":
    var z = @[5, 2, 3, 1, 4]; z.stalinSort(Descending)
    check z == @[5, 2, 1]
  
  test "sorted ord asc":
    check @[1, 2, 3, 4, 5].stalinSorted() == @[1, 2, 3, 4, 5]
  test "sorted ord desc":
    check [5, 4, 3, 2, 1].stalinSorted(Descending) == @[5, 4, 3, 2, 1]
  test "sorted unord asc":
    check @[3, 5, 1, 2, 4].stalinSorted() == @[3, 5]
  test "sorted unord desc":
    check @[5, 2, 3, 1, 4].stalinSorted(Descending) == @[5, 2, 1]