unit uPrimerPrograma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFPrimerPrograma = class(TForm)
    LbSaludar: TLabel;
    BSaludar: TButton;
    procedure BSaludarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrimerPrograma: TFPrimerPrograma;

implementation

{$R *.dfm}

procedure TFPrimerPrograma.BSaludarClick(Sender: TObject);
begin
LbSaludar.Caption:= 'Hola, bienvenido a mi primer programa de Delphi';
end;

end.
