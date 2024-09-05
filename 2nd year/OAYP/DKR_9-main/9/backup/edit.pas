unit Edit;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  MaskEdit;

type

  { TfEdit }

  TfEdit = class(TForm)
    bCancel: TBitBtn;
    bSave: TBitBtn;
    Calory: TEdit;
    factoryName: TEdit;
    fPrice: TEdit;
    fName: TEdit;
    fNameLabel: TLabel;
    fPriceLabel: TLabel;
    factoryNameLabel: TLabel;
    CaloryLabel: TLabel;
    HowMany: TEdit;
    HowManyLabel: TLabel;
    procedure CaloryKeyPress(Sender: TObject; var Key: char);
    procedure FormShow(Sender: TObject);
    procedure fPriceKeyPress(Sender: TObject; var Key: char);
    procedure HowManyKeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  fEdit: TfEdit;

implementation

{$R *.lfm}

{ TfEdit }


procedure TfEdit.FormShow(Sender: TObject);
begin
  fName.SetFocus;
end;

procedure TfEdit.CaloryKeyPress(Sender: TObject; var Key: char);
begin
  // проверяем нажатую клавишу
 case Key of
  // цифры разрешаем
  '0'..'9': key:=key;
  // разрешаем десятичный разделитель (только точку)
  '.', ',': key:='.';
  // разрешаем BackSpace
  #8: key:=key;
  // все прочие клавиши "гасим"
  else key:=#0;
 end;
end;

procedure TfEdit.fPriceKeyPress(Sender: TObject; var Key: char);
begin
  // проверяем нажатую клавишу
 case Key of
  // цифры разрешаем
  '0'..'9': key:=key;
  // разрешаем десятичный разделитель (только точку)
  '.', ',': key:='.';
  // разрешаем BackSpace
  #8: key:=key;
  // все прочие клавиши "гасим"
  else key:=#0;
 end;
end;

procedure TfEdit.HowManyKeyPress(Sender: TObject; var Key: char);
begin
  // проверяем нажатую клавишу
 case Key of
  // цифры разрешаем
  '0'..'9': key:=key;
  // разрешаем десятичный разделитель (только точку)
  '.', ',': key:='.';
  // разрешаем BackSpace
  #8: key:=key;
  // все прочие клавиши "гасим"
  else key:=#0;
 end;
end;

end.

