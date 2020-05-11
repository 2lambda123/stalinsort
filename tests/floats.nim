import unittest
import ../src/stalinsort

suite "Floats":
  test "sort ord asc":
    var z = @[1.2, 2.34, 3.456, 4.56, 5.6]; z.stalinSort()
    check z == @[1.2, 2.34, 3.456, 4.56, 5.6]
  test "sort ord desc":
    var z = @[5.4, 4.32, 3.21, 2.1, 1.0]; z.stalinSort(Descending)
    check z == @[5.4, 4.32, 3.21, 2.1, 1.0]
  test "sort unord asc":
    var z = @[3.1, 5.2, 1.3, 2.4, 4.5]; z.stalinSort()
    check z == @[3.1, 5.2]
  test "sort unord desc":
    var z = @[5.5, 2.4, 3.3, 1.2, 4.1]; z.stalinSort(Descending)
    check z == @[5.5, 2.4, 1.2]
  
  test "sorted ord asc":
    check @[1.2, 2.34, 3.456, 4.56, 5.6].stalinSorted() ==
      @[1.2, 2.34, 3.456, 4.56, 5.6]
  test "sorted ord desc":
    check @[5.4, 4.32, 3.21, 2.1, 1.0].stalinSorted(Descending) ==
      @[5.4, 4.32, 3.21, 2.1, 1.0]
  test "sorted unord asc":
    check @[3.1, 5.2, 1.3, 2.4, 4.5].stalinSorted() == @[3.1, 5.2]
  test "sorted unord desc":
    check @[5.5, 2.4, 3.3, 1.2, 4.1].stalinSorted(Descending) ==
      @[5.5, 2.4, 1.2]