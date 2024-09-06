program QueueExample;

const
  MAX_SIZE = 5; // Максимальный размер очереди

type
  Queue = record
    items: array[1..MAX_SIZE] of Integer;
    front, rear: Integer;
  end;

procedure initializeQueue(var q: Queue);
begin
  q.front := 0;
  q.rear := 0;
end;

function isFull(q: Queue): Boolean;
begin
  isFull := (q.rear = MAX_SIZE);
end;

function isEmpty(q: Queue): Boolean;
begin
  isEmpty := (q.front = q.rear);
end;

procedure enqueue(var q: Queue; data: Integer);
begin
  if isFull(q) then
    writeln('Очередь переполнена!')
  else
  begin
    q.rear := q.rear + 1;
    q.items[q.rear] := data;
  end;
end;

procedure dequeue(var q: Queue);
begin
  if isEmpty(q) then
    writeln('Очередь пуста!')
  else
  begin
    q.front := q.front + 1;
  end;
end;

procedure displayQueue(q: Queue);
var
  i: Integer;
begin
  writeln('Содержимое очереди:');
  for i := q.front + 1 to q.rear do
    write(q.items[i], ' ');
  writeln;
end;

var
  myQueue: Queue;
  choice, data: Integer;

begin
  initializeQueue(myQueue);

  repeat
    writeln('1. Добавить элемент в очередь');
    writeln('2. Удалить элемент из очереди');
    writeln('3. Вывести содержимое очереди');
    writeln('0. Выйти');
    write('Выберите действие: ');
    readln(choice);

    case choice of
      1: begin
           write('Введите элемент для добавления: ');
           readln(data);
           enqueue(myQueue, data);
         end;
      2: dequeue(myQueue);
      3: displayQueue(myQueue);
      0: writeln('Выход из программы');
      else writeln('Некорректный выбор');
    end;

  until choice = 0;
end.