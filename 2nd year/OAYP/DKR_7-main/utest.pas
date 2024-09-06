Unit utest;
interface

uses GraphABC;

procedure LineRel(dx, dy : Integer);
procedure a(i,m: Integer);
procedure b(i,m: Integer);
procedure c(i,m: Integer);
procedure d(i,m: Integer);

implementation

procedure LineRel(dx, dy : Integer);
Begin
     LineTo(PenX+dx, PenY+dy)
End;

procedure a(i,m: Integer);
Begin
     If i > 0 Then
     Begin
          d(i - 1,m);
          LineRel(m, 0);
              a(i - 1,m);
              LineRel(0, m);
              a(i - 1,m);
              LineRel(-m, 0);
              c(i - 1,m)
     End
End;

procedure b(i,m: integer);
Begin
     If i > 0 Then
     Begin
          c(i - 1,m);
              LineRel(-m, 0);
              b(i - 1,m);
              LineRel(0, -m);
              b(i - 1,m);
              LineRel(m, 0);
              d(i - 1,m)
     End
End;

procedure c(i,m: integer);
Begin
     If i > 0 Then
     Begin
          b(i - 1,m);
          LineRel(0, -m);
              c(i - 1,m);
              LineRel(-m, 0);
              c(i - 1,m);
              LineRel(0, m);
              a(i - 1,m)
     End
End;

procedure d(i,m: integer);
Begin
     If i > 0 Then
     Begin
          a(i - 1,m);
              LineRel(0, m);
              d(i - 1,m);
              LineRel(m, 0);
              d(i - 1,m);
              LineRel(0, -m);
              b(i - 1,m)
     End
End;
end.
