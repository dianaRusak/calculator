unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus, ExtCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
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
    procedure Button11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure WhereIsMySign(sign: string);
  private
    { private declarations }
    Arg1, Arg2: extended;
    SignPointed, SetToZero, Flag, Flag2: boolean;
    LastSign: char;
  public
    { public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1, Unit2, Unit5, Unit6, Unit7;

{$R *.lfm}

{ TForm4 }

procedure TForm4.FormCreate(Sender: TObject);
begin
  SignPointed := False;
  SetToZero := False;
  Flag := False;
end;

procedure TForm4.MenuItem3Click(Sender: TObject);
begin
  Form1.Show;
  Form4.Hide;
end;

procedure TForm4.MenuItem4Click(Sender: TObject);
begin
  Form2.Show;
  Form4.Hide;
end;

procedure TForm4.MenuItem5Click(Sender: TObject);
begin
  ShowMessage('Это и есть калькулятор программиста');
end;

procedure TForm4.MenuItem6Click(Sender: TObject);
begin
  ShowMessage('Русак Диана, 2015');
end;

procedure TForm4.Button11Click(Sender: TObject);
begin
  WhereIsMySign(TButton(Sender).Caption);
end;

procedure TForm4.WhereIsMySign(sign: string);
begin
  with Edit1 do
  begin
    if sign[length(sign)] in ['0' .. '9', '.', ','] then
    begin  {ввод числа}
      if SetToZero then
      begin
        Arg1 := StrToFloat(Edit1.Text);
        Text := '0';
        SetToZero := False;
      end;
      case Text of
        '0': if sign[1] in [',', '.'] then
            Text := Text + sign
          else
            Text := sign
        else
          if not (sign[1] in [',', '.']) then
            Text := Text + sign
          else if not (Text[length(Text)] in [',', '.']) then
            Text := Text + sign
      end;
      if not SignPointed then
        Arg1 := StrToFloat(Text);
    end
    else
    begin
      case sign of
        '←': if (Text <> '0') and (LastSign <> '=') then
            Text := copy(Text, 1, length(Text) - 1);
        'C':
        begin
          Text := '0';
          Arg1 := 0;
          SignPointed := False;
          LastSign := ' ';
        end;
      end;
      if Text = '' then
        Text := '0';
      SetToZero := False;
    end;
    Flag := False;
  end;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  case TButton(Sender).Caption of
    'Hex':
    begin
      Form4.Close;
      Form5.Show;
    end;
    'Oct':
    begin
      Form4.Close;
      Form6.Show;
    end;
    'Bin':
    begin
      Form4.Close;
      Form7.Show;
    end;
  end;
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
  WhereIsMySign(TButton(Sender).Caption);
end;

procedure TForm4.Button7Click(Sender: TObject);
begin
  WhereIsMySign(TButton(Sender).Caption);
end;

procedure TForm4.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  if not ((key in ['0'..'9']) or (key = '.') or (key = ',')) then
    key := #0;
end;

end.
