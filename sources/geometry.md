
source list shapes
  http://en.wikipedia.org/wiki/Lists_of_shapes
  http://en.wikipedia.org/wiki/List_of_mathematical_shapes

source geometry programming language!
  http://eukleides.org/quickstart.html

  A B C triangle

  A' = projection(A, line(B, C))
  B' = projection(B, line(C, A))
  C' = projection(C, line(A, B))

  A_0 = midpoint(B.C)
  B_0 = midpoint(C.A)
  C_0 = midpoint(A.B)

  draw
    (A.B.C)
    circle(A', B', C')
    A'; B'; C'
    A_0 ; B_0 ; C_0
  end
  draw dashed
    A.A' ; B.B' ; C.C'
  end

  label
    A -135° ; B -45° ; C 90°
    A' 45° ; B' 135° ; C' -90°
    A_0 30° ; B_0 150° ; C_0 -90°
  end
