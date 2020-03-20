program MonitorAtividades;

uses
  Vcl.Forms,
  untMonitorAtividades in 'untMonitorAtividades.pas' {frmMonitorAbate},
  untMenu in 'untMenu.pas' {frmMenu},
  untMonitorDesossa in 'untMonitorDesossa.pas' {frmMonitorDesossa},
  untLogAbate in 'untLogAbate.pas' {frmLogAbate},
  untConsultaQuebra in 'untConsultaQuebra.pas' {frmConsultaQuebra},
  untConsultaPH in 'untConsultaPH.pas' {frmConsultaPH},
  untEstoqueOsso in 'untEstoqueOsso.pas' {frmEstoqueOsso};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Monitoramento de Abate';
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
end.
