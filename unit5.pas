unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button25: TButton;
    Button26: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit1: TEdit;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1, Unit2, Unit4, Unit6, Unit7;

{$R *.lfm}

{ TForm5 }

procedure TForm5.MenuItem3Click(Sender: TObject);
begin
  Form1.Show;
  Form5.Hide;
end;

procedure TForm5.MenuItem4Click(Sender: TObject);
begin
  Form2.Show;
  Form5.Hide;
end;

procedure TForm5.MenuItem5Click(Sender: TObject);
begin
  ShowMessage('Это и есть калькулятор программиста');
end;

procedure TForm5.MenuItem6Click(Sender: TObject);
begin
  ShowMessage('Русак Диана, 2015');
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
  case TButton(Sender).Caption of
    'Bin':
    begin
      Form7.Show;
      Form5.Hide;
    end;
    'Oct':
    begin
      Form6.Show;
      Form5.Hide;
    end;
    'Dec':
    begin
      Form4.Show;
      Form5.Hide;
    end;
  end;
end;

procedure TForm5.Edit1Change(Sender: TObject);
begin

end;

end.
