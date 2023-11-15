program pPrimerPrograma;

uses
  Forms,
  uPrimerPrograma in 'uPrimerPrograma.pas' {FPrimerPrograma};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrimerPrograma, FPrimerPrograma);
  Application.Run;
end.
