from algorithm import isSorted, SortOrder
export SortOrder
from sequtils import delete, toSeq

proc stalinSort*[T](a: var seq[T], order: SortOrder = Ascending) =
  while not a.isSorted(order):
    var
      b = a # buffer to avoid modification during iter
      s = 0 # index of most recent (s)orted character
    for i, x in a:
      if i < a.len:
        if not [a[s], a[i]].isSorted(order): b.delete(i, i)
        else: s = i
    a = b

proc stalinSorted*[T](a: openArray[T], order: SortOrder = Ascending): seq[T] =
  result = a.toSeq()
  while not result.isSorted(order):
    var
      b = result # buffer to avoid modification during iter
      s = 0 # index of most recent (s)orted character
    for i, x in result:
      if i < result.len:
        if not [result[s], result[i]].isSorted(order): b.delete(i, i)
        else: s = i
    result = b