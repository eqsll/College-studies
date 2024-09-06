Uses GraphABC,utest;
Var
   (ca,cb,p,u) := (100,100,4,10);
 
Procedure KeyDown(k: integer);
begin
  case K of
  VK_Down: cb += 10;
  VK_Up: cb -= 10; 
  VK_Left: ca -= 10;  
  VK_Right: ca += 10;
  VK_E: if p <7 then begin p+=1; u:=u div 2; end;
  VK_Q: if p > 1 then begin p-=1; u:=u * 2; end;
  VK_W: if u < 20 then u+=1;
  VK_S: if u > 1 then u-=1;
  VK_Escape: halt(1);
end;
Window.Clear; 
MoveTo(ca, cb);
a(p,u);
Redraw;
end;



Begin
  SetWindowCaption('Фракталы: Кривая Гильберта');
  SetWindowSize(500,500);
  LockDrawing;
  KeyDown(0);
  OnkeyDown += KeyDown; 
End.