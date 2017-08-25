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
    procedure FormCreate(Sender: TObject);
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

procedure TForm5.FormCreate(Sender: TObject);
begin

end;

procedure TForm5.Button4Click(Sender: TObject);
begin
  case TButton(Sender).Caption of
    'Bin':
    begin
      Form5.Close;
      Form7.Show;
    end;
    'Oct':
    begin
      Form5.Close;
      Form6.Show;
    end;
    'Dec':
    begin
      Form5.Close;
      Form4.Show;
    end;
  end;
end;

end.
