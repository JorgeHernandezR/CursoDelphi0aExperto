unit UFfundamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ExtCtrls, StdCtrls, Math, Menus;

type
  TFfundamentos = class(TForm)
    PCMenuPrincipal: TPageControl;
    TSarchivo: TTabSheet;
    SBNumerosEnteros: TPanel;
    Panel2: TPanel;
    sbFormatoReales: TSpeedButton;
    Panel1: TPanel;
    sbOperaciones: TSpeedButton;
    Panel3: TPanel;
    Panel4: TPanel;
    gbNum2: TGroupBox;
    edNum2: TEdit;
    gbNum1: TGroupBox;
    edNum1: TEdit;
    Panel5: TPanel;
    sbCalcularTeoremaPitagoras: TSpeedButton;
    Panel6: TPanel;
    Panel7: TPanel;
    gbCatetoB: TGroupBox;
    edCatetoB: TEdit;
    gbCatetoA: TGroupBox;
    edCatetoA: TEdit;
    Panel8: TPanel;
    sbCadenasdeTexto: TSpeedButton;
    Panel9: TPanel;
    sbSaludar: TSpeedButton;
    Panel10: TPanel;
    spTipoVariant: TSpeedButton;
    Panel11: TPanel;
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    Nmers1: TMenuItem;
    Calculador1: TMenuItem;
    eoremadePitagoras1: TMenuItem;
    Cadenasdetexto1: TMenuItem;
    Variant1: TMenuItem;
    SumarNumeros1: TMenuItem;
    OperarNumeros1: TMenuItem;
    CalcularTeoremadePitagoras1: TMenuItem;
    Saludar1: TMenuItem;
    Operaciones1: TMenuItem;
    tiposdevariant1: TMenuItem;
    TabSheet1: TTabSheet;
    Panel12: TPanel;
    sbMenuSecundario: TSpeedButton;
    Panel13: TPanel;
    Ver1: TMenuItem;
    MenSecundario1: TMenuItem;
    sbFormatosReales: TSpeedButton;
    Panel14: TPanel;
    sbOperacionesTextos: TSpeedButton;
    Label1: TLabel;
    pcPaginaContenido: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    mSalida: TMemo;
    mSalidaTexto: TMemo;
    pcPaginaOpcionesTexto: TPageControl;
    TabSheet4: TTabSheet;
    ScrollBox1: TScrollBox;
    sbConctenar: TSpeedButton;
    Panel15: TPanel;
    GroupBox1: TGroupBox;
    edTextoInicial: TEdit;
    GroupBox2: TGroupBox;
    edTextoFinal: TEdit;
    Panel16: TPanel;
    GroupBox3: TGroupBox;
    edCopear: TEdit;
    GroupBox4: TGroupBox;
    edPos: TEdit;
    edCant: TEdit;
    SpeedButton1: TSpeedButton;
    Panel17: TPanel;
    GroupBox5: TGroupBox;
    edTextoMinusculas: TEdit;
    sbConvertirMinusculas: TSpeedButton;
    Panel18: TPanel;
    GroupBox7: TGroupBox;
    sbRemplazarTexto: TSpeedButton;
    mTextoARemplazar: TMemo;
    GroupBox6: TGroupBox;
    edRemplazar: TEdit;
    edRemplazado: TEdit;
    Panel19: TPanel;
    GroupBox8: TGroupBox;
    edClave: TEdit;
    sbGenerarClave: TSpeedButton;
    procedure sbFormatoRealesClick(Sender: TObject);
    procedure sbOperacionesClick(Sender: TObject);
    procedure edNum2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sbCalcularTeoremaPitagorasClick(Sender: TObject);
    procedure sbSaludarClick(Sender: TObject);
    procedure sbCadenasdeTextoClick(Sender: TObject);
    procedure spTipoVariantClick(Sender: TObject);
    procedure sbMenuSecundarioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbFormatosRealesClick(Sender: TObject);
    procedure sbOperacionesTextosClick(Sender: TObject);
    procedure sbConctenarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbConvertirMinusculasClick(Sender: TObject);
    procedure sbRemplazarTextoClick(Sender: TObject);
    procedure sbGenerarClaveClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ffundamentos: TFfundamentos;

  // aqui se pueden declarar variables globales.

implementation

{$R *.dfm}

procedure TFfundamentos.edNum2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = $0D then
  begin
    sbOperacionesClick(Self);
  end;

end;

procedure TFfundamentos.sbCalcularTeoremaPitagorasClick(Sender: TObject);

var
  a, b, h: real; // definimos variables para resolver el problema.
begin
  pcPaginaContenido.TabIndex := 0;

  // Obtener valores de la caja

  a := StrToFloat(edCatetoA.Text);
  b := StrToFloat(edCatetoB.Text);

  h := Sqrt(Math.Power(a, 2) + Math.Power(b, 2));

  mSalida.Lines.Add('====================Teorema de Pitagoras=============');
  mSalida.Lines.Add('Cateto A =' + FloatToStr(a) + 'y Cateto B =' + FloatToStr
      (b) + 'generan la Hipotenusa H=' + FloatToStr(h));

end;

procedure TFfundamentos.sbConctenarClick(Sender: TObject);
var
  texto1, texto2, textofinal: string;
begin
  mSalidaTexto.Lines.Clear;
  mSalidaTexto.Lines.Add('Concatenando textos');

  texto1 := edTextoInicial.Text;
  texto2 := edTextoFinal.Text;
  textofinal := texto1 + texto2;
  mSalidaTexto.Lines.Add(textofinal);
end;

procedure TFfundamentos.sbConvertirMinusculasClick(Sender: TObject);
var
  texto: string;
begin
  // Conversion de textos   a minusculas y mayusculas.
  texto := edTextoMinusculas.Text;

  mSalidaTexto.Lines.Clear;
  mSalidaTexto.Lines.Add(LowerCase(texto));
  mSalidaTexto.Lines.Add(UpperCase(texto));
  mSalidaTexto.Lines.Add(AnsiLowerCase(texto));
  mSalidaTexto.Lines.Add(AnsiUpperCase(texto));

end;

procedure TFfundamentos.FormCreate(Sender: TObject);
begin
  PCMenuPrincipal.TabIndex := 0;
  pcPaginaContenido.TabIndex := 0;

end;

procedure TFfundamentos.sbCadenasdeTextoClick(Sender: TObject);
var
  letra1: Char;
  letra2: AnsiChar;
  letra3: WideChar;
  texto1: string;
  texto2: AnsiString;
  texto3: WideString;
begin
  pcPaginaContenido.TabIndex := 0;
  letra1 := 'p';
  letra2 := 'q';
  letra3 := '☺';

  texto1 :=
    '♥♥Bienvenido a la programación con Delphi Rad Studio eto es un STRING ♥♥';
  texto2 :=
    '♥♥Bienvenido a la programación con Delphi Rad Studio esto es un AnsiString♥♥';
  texto3 :=
    '♥♥Bienvendio a la programación con Delphi Rad Studio esto es un WideString♥♥';

  mSalida.Lines.Add('==================Caracteres==========');
  mSalida.Lines.Add(letra1);
  mSalida.Lines.Add(letra2);
  mSalida.Lines.Add(letra3);
  mSalida.Lines.Add('==================Textos==============');
  mSalida.Lines.Add(texto1);
  mSalida.Lines.Add(texto2);
  mSalida.Lines.Add(texto3);

end;

procedure TFfundamentos.sbOperacionesClick(Sender: TObject);
var
  a, b, c: integer; { se definen las variables de tipo integer
    que van desde -2147483648..2147483647; }
var
  d: real;

begin
  pcPaginaContenido.TabIndex := 0;
  mSalida.Lines.Add(
    '========================Calculadora=================================');

  a := StrToInt(edNum1.Text);
  b := StrToInt(edNum2.Text);


  // Esta linea corresponde al video 005

  if b = 0 then
  begin
    ShowMessage('No se puede dividir entre 0');
  end
  else
  begin
    c := a + b;
    mSalida.Lines.Add(IntToStr(a) + ' + ' + IntToStr(b) + ' = ' + IntToStr(c));
    c := a - b;
    mSalida.Lines.Add(IntToStr(a) + ' - ' + IntToStr(b) + ' = ' + IntToStr(c));
    c := a * b;
    mSalida.Lines.Add(IntToStr(a) + ' * ' + IntToStr(b) + ' = ' + IntToStr(c));
    d := a / b;
    mSalida.Lines.Add(IntToStr(a) + ' / ' + IntToStr(b) + ' = ' + FloatToStr(d)
      );
  end;

end;

procedure TFfundamentos.sbOperacionesTextosClick(Sender: TObject);
begin
  { cambiar a un cardpanel para  diferente para realizar las operaciones con
    cadenas de texto }
  pcPaginaContenido.TabIndex := 1;
end;

procedure TFfundamentos.sbRemplazarTextoClick(Sender: TObject);
var
  texto, reemplazado: string;
begin
  // Remplazar texto;
  mSalidaTexto.Lines.Clear;
  mSalidaTexto.Lines.Add('Remplazando Texto...');

  texto := mTextoARemplazar.Text;
  reemplazado := StringReplace(texto, edRemplazar.Text, edRemplazado.Text,
    [rfReplaceAll, rfIgnoreCase]);
  mSalidaTexto.Lines.Add(reemplazado);
end;

procedure TFfundamentos.sbSaludarClick(Sender: TObject);
var
  nombre: string;
begin
  nombre := 'Jorge Isidro Hernándenz Ramírez';
  ShowMessage('Hola, ' + nombre);

end;

procedure TFfundamentos.SpeedButton1Click(Sender: TObject);
var
  p, c: integer;
  texto, copiado: string;
begin

  p := StrToInt(edPos.Text);
  c := StrToInt(edCant.Text);
  texto := edCopear.Text;

  // operacion de copear

  copiado := Copy(texto, p, c);
  mSalidaTexto.Lines.Clear;
  mSalidaTexto.Lines.Add('Copiando texto...');
  mSalidaTexto.Lines.Add('Se copio(' + copiado + ') de (' + texto + ')')

end;

procedure TFfundamentos.sbFormatoRealesClick(Sender: TObject);
var
  a, b, c: Word; { se estan definiendo los tipos de variable de tipo entero
    que contiene valores entre 0 y 65535 }

begin
  pcPaginaContenido.TabIndex := 0;
  a := 123;
  b := 412;
  // definir la suma
  // Ctrl+D organizar codigo (identacion)

  c := a + b;

  // Mostrar en pantalla => IntoString
  // ¿Como se convierte ?

  mSalida.Lines.Add(IntToStr(a) + ' + ' + IntToStr(b) + ' = ' + IntToStr(c));

end;

procedure TFfundamentos.sbFormatosRealesClick(Sender: TObject);
var
  numero: real;
  hh, mm, ss: integer;
begin
  pcPaginaContenido.TabIndex := 0;
  mSalida.Lines.Add('=============================================');
  mSalida.Lines.Add('==============Formateando numeros reales=====');

  numero := 1231232432134212.1234;
  mSalida.Lines.Add(FloatToStr(numero) + '\n');
  mSalida.Lines.Add(FloatToStrF(numero, ffNumber, 4, 0));
  mSalida.Lines.Add(FloatToStrF(numero, ffNumber, 8, 0));
  mSalida.Lines.Add(FloatToStrF(numero, ffNumber, 12, 0));
  mSalida.Lines.Add(FloatToStrF(numero, ffNumber, 16, 2));
  mSalida.Lines.Add(FloatToStrF(numero, ffNumber, 16, 4));
  mSalida.Lines.Add('Formateando números reales -dinero');
  numero := 123456748.25;
  mSalida.Lines.Add(FloatToStrF(numero, ffCurrency, 16, 2));
  mSalida.Lines.Add('Formateando números reales -pequeños');
  numero := 0.000001485;
  mSalida.Lines.Add(FloatToStrF(numero, ffNumber, 16, 15));
  mSalida.Lines.Add('Formateando números en cadenas de texto');
  hh := 3;
  mm := 5;
  ss := 7;
  mSalida.Lines.Add(IntToStr(hh) + ' : ' + IntToStr(mm) + ' : ' + IntToStr(ss));
  mSalida.Lines.Add(FormatCurr('00', hh) + ':' + FormatCurr('00', mm)
      + ' : ' + FormatCurr('00', ss));

  numero := 20878325;
  mSalida.Lines.Add(FormatCurr('COP 000,000,000,000', numero));
  mSalida.Lines.Add(FormatCurr('COP 000-000-000-000', numero))

end;

procedure TFfundamentos.sbGenerarClaveClick(Sender: TObject);

var
  clave: string;
begin
  // Generar clave segura
  clave := edClave.Text;
  clave := StringReplace(clave, 'a', '4', [rfReplaceAll, rfIgnoreCase]);
  clave := StringReplace(clave, 'e', '1', [rfReplaceAll, rfIgnoreCase]);
  clave := StringReplace(clave, 'i', 'l', [rfReplaceAll, rfIgnoreCase]);
  clave := StringReplace(clave, 'o', '0', [rfReplaceAll, rfIgnoreCase]);
  clave := StringReplace(clave, 'u', '5', [rfReplaceAll, rfIgnoreCase]);
  clave := StringReplace(clave, 'n', '#', [rfReplaceAll, rfIgnoreCase]);
  clave := StringReplace(clave, ' ', '-', [rfReplaceAll, rfIgnoreCase]);

  mSalidaTexto.Lines.Clear;
  mSalidaTexto.Lines.Add(clave);

end;

procedure TFfundamentos.sbMenuSecundarioClick(Sender: TObject);
begin
  PCMenuPrincipal.Visible := not PCMenuPrincipal.Visible;
end;

procedure TFfundamentos.spTipoVariantClick(Sender: TObject);
var
  variable: Variant;
begin
  pcPaginaContenido.TabIndex := 0;

  // Mostrar el valor en pantalla

  mSalida.Lines.Add('Variable = ' + VarToStr(variable));

  variable := '♥♥♥';
  mSalida.Lines.Add('Variable = ' + VarToStr(variable));

  variable := 'Este es el curso de 0 a experto';
  mSalida.Lines.Add('Variable = ' + VarToStr(variable));

  variable := 19996;
  mSalida.Lines.Add('Variable = ' + VarToStr(variable));

  variable := 1996.98;
  mSalida.Lines.Add('Variable = ' + VarToStr(variable));

  variable := true;
  mSalida.Lines.Add('Variable = ' + VarToStr(variable));

  variable := now;
  mSalida.Lines.Add('Variable = ' + VarToStr(variable));

end;

end.
