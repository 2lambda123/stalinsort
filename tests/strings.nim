import unittest
import ../src/stalinsort

suite "Strings":
  test "sort ord asc":
    var z = @["ayy", "bee", "cee", "dee", "ee"]; z.stalinSort()
    check z == @["ayy", "bee", "cee", "dee", "ee"]
  test "sort ord desc":
    var z = @["ee", "dee", "cee", "bee", "ayy"]; z.stalinSort(Descending)
    check z == @["ee", "dee", "cee", "bee", "ayy"]
  test "sort unord asc":
    var z = @["cee", "ee", "ayy", "bee", "dee"]; z.stalinSort()
    check z == @["cee", "ee"]
  test "sort unord desc":
    var z = @["ee", "bee", "cee", "ayy", "dee"]; z.stalinSort(Descending)
    check z == @["ee", "bee", "ayy"]
  
  test "sorted ord asc":
    check @["ayy", "bee", "cee", "dee", "ee"].stalinSorted() ==
      @["ayy", "bee", "cee", "dee", "ee"]
  test "sorted ord desc":
    check @["ee", "dee", "cee", "bee", "ayy"].stalinSorted(Descending) ==
      @["ee", "dee", "cee", "bee", "ayy"]
  test "sorted unord asc":
    check @["cee", "ee", "ayy", "bee", "dee"].stalinSorted() == @["cee", "ee"]
  test "sorted unord desc":
    check @["ee", "bee", "cee", "ayy", "dee"].stalinSorted(Descending) ==
      @["ee", "bee", "ayy"]