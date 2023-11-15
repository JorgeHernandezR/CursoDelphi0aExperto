unit uFProblemas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Buttons, StdCtrls, ExtCtrls, ComCtrls;

type
  TFproblemas = class(TForm)
    MenuPrincipal: TMainMenu;
    Archivo1: TMenuItem;
    Problemas1: TMenuItem;
    problema1: TMenuItem;
    PaginaPrincipal: TPageControl;
    TabConsola: TTabSheet;
    mProblemas: TMemo;
    Contenido: TPanel;
    GroupBox1: TGroupBox;
    edNumero4C: TEdit;
    sbCalcularSumaCuatroDigitosF1: TSpeedButton;
    problema1b: TMenuItem;
    sbCalcularSumaCuatroDigitosF2: TSpeedButton;
    procedure sbCalcularSumaCuatroDigitosF1Click(Sender: TObject);
    procedure sbCalcularSumaCuatroDigitosF2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fproblemas: TFproblemas;

implementation

{$R *.dfm}

procedure TFproblemas.sbCalcularSumaCuatroDigitosF1Click(Sender: TObject);
var
  num, suma: integer;
  a, b, c, d: integer;
begin
  // borrar consola de mensajes
  mProblemas.Lines.Clear;
  num := StrToInt(edNumero4C.Text);
  a := num div 1000;
  num := num - 1000 * a;
  b := num div 100;
  num := num - 100 * b;
  c := num div 10;
  d := num - 10 * c;
  suma := a + b + c + d;
  mProblemas.Lines.Add('La suma de los digitos del numero de cuatro cifras (' +
      edNumero4C.Text + ') es =' + IntToStr(suma))

end;

procedure TFproblemas.sbCalcularSumaCuatroDigitosF2Click(Sender: TObject);
var
  suma: integer;
begin

  suma := StrToInt(Copy(edNumero4C.Text, 1, 1));
  suma := suma + StrToInt(Copy(edNumero4C.Text, 2, 1));
  suma := suma + StrToInt(Copy(edNumero4C.Text, 3, 1));
  suma := suma + StrToInt(Copy(edNumero4C.Text, 4, 1));
  mProblemas.Lines.Add('La suma de los digitos del numero de cuatro cifras (' +
      edNumero4C.Text + ') es =' + IntToStr(suma))

end;

end.
