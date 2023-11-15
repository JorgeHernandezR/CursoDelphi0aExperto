program Fundamentos_de_programacion_pascal;

uses
  Forms,
  UFfundamentos in 'UFfundamentos.pas' {Ffundamentos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFfundamentos, Ffundamentos);
  Application.Run;
end.
