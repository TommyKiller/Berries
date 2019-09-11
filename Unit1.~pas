unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    ImageList1: TImageList;
    Timer1: TTimer;
    Image1: TImage;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Randomizing(j: Integer);
    procedure ObjectsRepaint;
    procedure MapStructurization;
    procedure MapRepaint;
    procedure Lose;
    procedure Timer1Timer(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  GOM: Boolean;
  Pic: TBitmap;
  s: String;
  Map: array [-100..900,-100..1000] of Integer;
  Baskets: array [1..2,0..1] of Integer;
  Grab: array [1..3,1..20] of Integer;
  Cord: array [1..2,1..20] of Integer;
  Score: array [0..1] of Integer;
  Berryshrooms,Actived: array [1..20] of Integer;
  i,j,m,n,k,d,Size,BerryScore,MushScore: Integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.Height:=800;
  Form1.Width:=900;
  BerryScore:=0;
  MushScore:=0;
  Size:=50;
  GOM:=false;
  Label1.Visible:=false;
  MapStructurization;
  Randomize;
  for i:=1 to 20 do Randomizing(i);
  Timer1.Enabled:=true;
end;

procedure TForm1.MapStructurization;
begin
  for i:=-100 to Form1.Height+100 do
    for j:=100 to Form1.Width+100 do
      Map[i,j]:=2;
  for i:=590 to 790 do
    for j:=100 to 350 do
      Map[i,j]:=0;
  for i:=590 to 790 do
    for j:=550 to 800 do
      Map[i,j]:=1;
end;

procedure TForm1.Randomizing(j: Integer);
begin
  repeat
    k:=0;
    for d:=1 to 3 do Grab[d,j]:=0;
    Actived[j]:=0;
    Berryshrooms[j]:=random(2);
    Cord[1,j]:=random(900-Size);
    Cord[2,j]:=random(300-Size)+200;
    for m:=Cord[2,j] to Cord[2,j]+Size do
      for n:=Cord[1,j] to Cord[1,j]+Size do
        if Map[m,n]=3 then inc(k);
  until k=0;
  for m:=Cord[2,j] to Cord[2,j]+Size do
    for n:=Cord[1,j] to Cord[1,j]+Size do
      Map[m,n]:=3;
end;

procedure TForm1.MapRepaint;
begin
  Pic:=TBitmap.Create;
  Pic.Transparent:=false;
  Pic.LoadFromFile('Background.bmp');
  Image1.Canvas.StretchDraw(Rect(0,0,Form1.Width,Form1.Height),Pic);
  Pic.Free;
  if GOM then
    with Label1 do begin
      Top:=350;
      Left:=225;
      Transparent:=true;
      Visible:=true;
      Font.Size:=15;
      Font.Color:=clRed;
      Caption:=s;
  end;
end;

procedure TForm1.ObjectsRepaint;
begin
  for i:=1 to 20 do
    if (Actived[i]=0) or (Actived[i]=2) then begin
      if Actived[i]=2 then
        if Cord[2,i]<=Form1.Height then Cord[2,i]:=Cord[2,i]+10;
      Pic:=TBitmap.Create;
      Pic.Transparent:=true;
      ImageList1.GetBitmap(Berryshrooms[i],Pic);
      Image1.Canvas.StretchDraw(Rect(Cord[1,i],Cord[2,i],Cord[1,i]+Size,Cord[2,i]+Size),Pic);
      Pic.Free;
    end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if Timer1.Enabled then begin
    Application.ProcessMessages;
    Timer1.Interval:=1;
    MapRepaint;
    ObjectsRepaint;
    Lose;
  end;
end;

procedure TForm1.Lose;
var
  Score: Integer;
begin
  Score:=0;
  for i:=1 to 20 do
    if Actived[i]=1 then inc(Score)
    else if Actived[i]=2 then inc(Score);
  if Score=20 then begin
    GOM:=true;
    for j:=1 to 20 do
      if Actived[j]=1 then inc(k);
    if k>0 then s:='Congratulations! You`ve picked '+IntToStr(BerryScore)+' berries and '+IntToStr(MushScore)+' mushrooms!'
    else s:='You lose...';
  end;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  x1,y1: Integer;
begin
  if Map[y,x]=3 then begin
    x1:=x;
    y1:=y;
    while Map[y1,x1]=3 do dec(y1);
    inc(y1);
    while Map[y1,x1]=3 do dec(x1);
    inc(x1);
    for i:=1 to 20 do
      if (Cord[1,i]=x1) and (Cord[2,i]=y1) then begin
        Grab[1,i]:=x-x1;
        Grab[2,i]:=y-y1;
        Grab[3,i]:=1;
        for m:=Cord[2,i] to Cord[2,i]+Size do
          for n:=Cord[1,i] to Cord[1,i]+Size do
            Map[m,n]:=2;
      end;
  end;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  for i:=1 to 20 do
    if Grab[3,i]=1 then begin
      Cord[1,i]:=x-Grab[1,i];
      Cord[2,i]:=y-Grab[2,i];
    end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  for i:=1 to 20 do
    if Grab[3,i]=1 then begin
      if ((Map[Cord[2,i]+55,Cord[1,i]]=Berryshrooms[i]) and (Map[Cord[2,i]+55,Cord[1,i]+Size]=Berryshrooms[i]) and (Actived[i]=0)) then begin
        Image1.Canvas.FillRect(Rect(Cord[1,i],Cord[2,i],Cord[1,i]+Size,Cord[2,i]+Size));
        Actived[i]:=1;
        case Berryshrooms[i] of
          0:inc(BerryScore);
          1:inc(MushScore);
        end;
      end
      else Actived[i]:=2;
      Grab[3,i]:=0;
    end;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE: if GOM then Form1.Close;
  end;
end;

end.
