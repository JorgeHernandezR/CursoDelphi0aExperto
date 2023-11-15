program Resolucion_de_problemas;

uses
  Forms,
  uFProblemas in 'uFProblemas.pas' {Fproblemas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFproblemas, Fproblemas);
  Application.Run;
end.
