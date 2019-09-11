unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  Picture: TBitmap;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
  Label1.Visible:=false;
  Button1.Visible:=true;
  Button2.Visible:=true;
  Button3.Visible:=true;
  Button4.Visible:=false;
  Picture:=TBitmap.Create;
  Picture.LoadFromFile('MainBackground.bmp');
  Image1.Canvas.StretchDraw(Rect(0,0,Picture.Width,Picture.Height),Picture);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form1.Show;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Button1.Visible:=false;
  Button2.Visible:=false;
  Button3.Visible:=false;
  Button4.Visible:=true;
  Button4.Left:=100;
  Button4.Top:=250;
  Image1.Canvas.StretchDraw(Rect(0,0,Picture.Width,Picture.Height),Picture);
  with Label1 do begin
    Top:=180;
    Left:=0;
    Visible:=true;
    Font.Color:=clRed;
    Font.Size:=14;
    Transparent:=true;
    Caption:='To win you must collect all berries'+#13+#10+'in berry-basket (letter `B`) and all'+#13+#10+'mushrooms in mushroom-basket'+#13+#10'(letter `M`)';
  end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Form2.Close;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  FormCreate(Form2);
end;

end.
