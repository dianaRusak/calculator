unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  StdCtrls;

type

  { TForm6 }

  TForm6 = class(TForm)
    Button10: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button25: TButton;
    Button26: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
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
  Form6: TForm6;

implementation

uses Unit1, Unit2, Unit4, Unit5, Unit7;

{$R *.lfm}

{ TForm6 }

procedure TForm6.Button2Click(Sender: TObject);
begin
  case TButton(Sender).Caption of
    'Hex':
    begin
      Form6.Close;
      Form5.Show;
    end;
    'Bin':
    begin
      Form6.Close;
      Form7.Show;
    end;
    'Dec':
    begin
      Form6.Close;
      Form4.Show;
    end;
  end;
end;

procedure TForm6.MenuItem3Click(Sender: TObject);
begin
  Form1.Show;
  Form6.Hide;
end;

procedure TForm6.MenuItem4Click(Sender: TObject);
begin
  Form2.Show;
  Form6.Hide;
end;

procedure TForm6.MenuItem5Click(Sender: TObject);
begin
  ShowMessage('Это и есть калькулятор программиста');
end;

procedure TForm6.MenuItem6Click(Sender: TObject);
begin
  ShowMessage('Русак Диана, 2015');
end;

end.
