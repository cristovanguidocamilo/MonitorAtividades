program MonitorAtividades;

uses
  Vcl.Forms,
  untMonitorAtividades in 'untMonitorAtividades.pas' {frmMonitorAbate},
  untMenu in 'untMenu.pas' {frmMenu},
  untMonitorDesossa in 'untMonitorDesossa.pas' {frmMonitorDesossa},
  untLogAbate in 'untLogAbate.pas' {frmLogAbate},
  untConsultaQuebra in 'untConsultaQuebra.pas' {frmConsultaQuebra},
  untConsultaPH in 'untConsultaPH.pas' {frmConsultaPH},
  untEstoqueOsso in 'untEstoqueOsso.pas' {frmEstoqueOsso},
  untAlterarIdade in 'untAlterarIdade.pas' {frmAlterarIdade},
  untAguarde in 'untAguarde.pas' {frmAguarde};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Monitor';
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmAlterarIdade, frmAlterarIdade);
  Application.CreateForm(TfrmAguarde, frmAguarde);
  Application.Run;
end.
