unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function asal (x :Integer): String;
  var
  i : Integer;
     sonuc: Boolean;
begin
sonuc:=true;
    for i := 2 to x-1 do
    if (x mod i=0) then   sonuc:=false;
     if sonuc then   asal:='asald�r' else asal:='asal de�ildir.';
  end;


 function ters (yazi: String): String;
 var
 s: String;
 i: Integer;

 begin
 s:='';
 for i := yazi.Length downto 1 do
 s:=s+yazi[i];
 ters:=s;



 end;




procedure TForm1.Button1Click(Sender: TObject);
var
say: Integer;

begin
   say:=StrToInt(Edit1.Text);
   Label1.Caption:=asal(say);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Label1.Caption:= ters(Edit1.Text);
end;

end.
 // 215 yaz ikiy�zonbe� yazs�n bunu yap.
