unit Unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  StdCtrls;

type

  { TForm7 }

  TForm7 = class(TForm)
    Button2: TButton;
    Button20: TButton;
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
    procedure Button2Click(Sender: TObject);
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
  Form7: TForm7;

implementation

uses Unit1, Unit2, Unit4, Unit5, Unit6;

{$R *.lfm}

{ TForm7 }

procedure TForm7.Button2Click(Sender: TObject);
begin
  case TButton(Sender).Caption of
    'Hex':
    begin
      Form7.Close;
      Form5.Show;
    end;
    'Oct':
    begin
      Form7.Close;
      Form6.Show;
    end;
    'Dec':
    begin
      Form7.Close;
      Form4.Show;
    end;
  end;
end;

procedure TForm7.MenuItem3Click(Sender: TObject);
begin
  Form1.Show;
  Form7.Hide;
end;

procedure TForm7.MenuItem4Click(Sender: TObject);
begin
  Form2.Show;
  Form7.Hide;
end;

procedure TForm7.MenuItem5Click(Sender: TObject);
begin
  ShowMessage('Это и есть калькулятор программиста');
end;

procedure TForm7.MenuItem6Click(Sender: TObject);
begin
  ShowMessage('Русак Диана, 2015');
end;

end.
