unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Edit1: TEdit;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    procedure Button10Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button6KeyPress(Sender: TObject; var Key: char);
    procedure Button8Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure WhereIsMySign(sign: string);
    procedure SimpleMathOperation(sign: char);
  private
   { private declarations }
    Arg1, Arg2: extended;
    SignPointed, SetToZero, Flag, Flag2 : boolean;
    LastSign: char;
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation
 uses Unit1, Unit4;
{$R *.lfm}

{ TForm2 }


procedure TForm2.Button10Click(Sender: TObject);
begin
     WhereIsMySign(TButton(Sender).Caption);
end;

procedure TForm2.Button16Click(Sender: TObject);
begin
     WhereIsMySign(TButton(Sender).Caption);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  if SetToZero then
    Arg1 := StrToFloat(Edit1.Text);
  case TButton(Sender).Caption of
    'cos': Edit1.Text := FloatToStr(sin(StrToFloat(Edit1.Text)));
    'sin': Edit1.Text := FloatToStr(cos(StrToFloat(Edit1.Text)));
    'tg': Edit1.Text := FloatToStr(sin(StrToFloat(Edit1.Text))/cos(StrToFloat(Edit1.Text)));
    'ctg': Edit1.Text := FloatToStr(cos(StrToFloat(Edit1.Text))/sin(StrToFloat(Edit1.Text)));
  end;
  Flag := True;
  SetToZero := True;
  end;

procedure TForm2.Button24Click(Sender: TObject);
begin
     WhereIsMySign(TButton(Sender).Caption);
end;



procedure TForm2.Button28Click(Sender: TObject);
var t:double;
begin
     t := StrToFloat(Edit1.Text);
     case TButton(Sender).Caption of
       'rad':
             if flag2 then
             begin
                 Edit1.Text := FloatToStr(pi*t/180);
                 Flag2 := False;
             end;
        'grad':
              if flag2 = false then
              begin
                 Edit1.Text := FloatToStr(180*t/pi);
                 Flag2 := True;
             end;
     end;
end;


procedure TForm2.Button6Click(Sender: TObject);
begin
     WhereIsMySign(TButton(Sender).Caption);
end;

procedure TForm2.Button6KeyPress(Sender: TObject; var Key: char);
begin
    case key of
    #13: WhereIsMySign('=');
    #8: WhereIsMySign('←')
    else
      WhereIsMySign(key);
  end;
  Form1.SetFocus;
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
      WhereIsMySign(TButton(Sender).Caption);
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin

end;

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  If not((key in ['0'..'9'])or(key='.')or(key=',')) then key:=#0;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  SignPointed := False;
  SetToZero := False;
  Flag := False;
  flag2 := True;
end;

procedure TForm2.MenuItem3Click(Sender: TObject);
begin
   ShowMessage('Это и есть инженерный')
end;


procedure TForm2.MenuItem4Click(Sender: TObject);
begin

   Form1.Show;
   Form2.Hide;
end;

procedure TForm2.MenuItem5Click(Sender: TObject);
begin

  Form4.Show;
  Form2.Hide;
end;

procedure TForm2.MenuItem6Click(Sender: TObject);
begin
   ShowMessage('Русак Д.И., 2015');
end;

procedure TForm2.WhereIsMySign(sign: string);
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
    else if sign[length(sign)] in ['-', '+', '*', '/', '='] then
    begin
      if (Sign = '=') then
      begin
        SimpleMathOperation(LastSign);//вывод ответа
        SignPointed := False;
      end
      else
      begin
        if ((not SetToZero) and SignPointed) or flag then
          SimpleMathOperation(LastSign)
        else
          SignPointed := True;
        LastSign := sign[1];
      end;
      SetToZero := True;
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
        '±': Text := FloatToStr(StrToFloat(Text) * -1);
      end;
      if Text = '' then
        Text := '0';
      SetToZero := False;
    end;
    Flag := False;
  end;
end;

procedure TForm2.SimpleMathOperation(sign: char);
begin
  if not SignPointed then
    Arg1 := StrToFloat(Edit1.Text)
  else
    Arg2 := StrToFloat(Edit1.Text);
  case sign of
    '+': Edit1.Text := FloatToStr(Arg1 + Arg2);
    '-': Edit1.Text := FloatToStr(Arg1 - Arg2);
    '/': if Arg2 <> 0 then
        Edit1.Text := FloatToStr(Arg1 / Arg2)
      else if (Arg1 = 0) and (Arg2 = 0) then
        ShowMessage('Результат неопределён')
      else
        ShowMessage('Division by zero is impossible');
    '*': Edit1.Text := FloatToStr(Arg1 * Arg2);
  end;
end;
end.

