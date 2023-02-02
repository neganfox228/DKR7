uses fractals2,GraphABC;

var
g, y, x, n,y1,x1: integer;

procedure KeyDown(key: integer);
begin
case key of
VK_Up: begin y1 := y1 + 5; end;
VK_Down: begin y1 -= 5; end;
VK_Left: begin x1 := x1 + 5; end;
VK_Right: begin x1 := x1 - 5; end;
VK_A: x1 := x1 + 50;
VK_D: x1 := x1 - 50;
VK_W: y1 := y1 + 50;
VK_S: y1 := y1 - 50;
VK_H: n -= 5;
VK_J: n += 5;
VK_U: g += 1;
VK_Y: g -= 1;
end;
Window.Clear;
Draw(10-x1, 354-y1, n, pi / 3, g);
Draw(410-x1, 354-y1, n, pi, g);
Draw(210-x1, 8-y1, n, -pi / 3, g);
redraw;
end;

begin
g := 4;
n := 400;
window.Maximize;
SetWindowCaption('Фракталы: Снежинка Коха');
Draw(10, 354, 400, pi / 3, g);
Draw(410, 354, 400, pi, g);
Draw(210, 8, 400, -pi / 3, g);
onKeyDown += keydown;
end.