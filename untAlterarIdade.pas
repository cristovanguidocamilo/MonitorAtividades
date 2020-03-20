unit untAlterarIdade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Samples.Spin, Vcl.ComCtrls, Data.DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TfrmAlterarIdade = class(TForm)
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    SpinEditMatricula: TSpinEdit;
    Label3: TLabel;
    SpinEditSequencial: TSpinEdit;
    Panel1: TPanel;
    SpinEditNovaIdade: TSpinEdit;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    qryExec: TZQuery;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpinEditSequencialExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlterarIdade: TfrmAlterarIdade;

implementation

{$R *.dfm}

uses untMenu;

procedure TfrmAlterarIdade.BitBtn1Click(Sender: TObject);
begin
  if ((SpinEditMatricula.Value = 62) or (SpinEditMatricula.Value = 5467) or (SpinEditMatricula.Value = 5554)) then
  begin
    if (SpinEditNovaIdade.Value Mod 2) = 0 then
    begin
      try
      qryExec.SQL.Clear;
      qryExec.SQL.Add('declare @valor nvarchar(1) = '''+IntToStr(SpinEditNovaIdade.Value)+'''');
      qryExec.SQL.Add('declare @data date = '''+FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date)+'''');
      qryExec.SQL.Add('declare @seq nvarchar(3) = '''+IntToStr(SpinEditSequencial.Value)+'''');
      qryExec.SQL.Add('update t_pescarcaca set idade = @valor, dentes = @valor, cod_matur = @valor from t_pescarcaca where data_abate = @data and seq_abate = @seq;');
      qryExec.SQL.Add('update t_classifica_abate set cod_matur = @valor where seq_do_dia = @seq and data_abate = @data;');
      qryExec.SQL.Add('INSERT INTO t_seg_log (cod_usuario, cod_modulo, operacao, data, status, cod_ponto, obs, hostname, cod_opcao, cod_aux, cod_aux2) VALUES');
      qryExec.SQL.Add('('''+IntToStr(SpinEditMatricula.Value)+''', '''', ''A'', '''+FormatDateTime('yyyy-mm-dd hh:nn:ss', Now)+''', ''S'', '''', ''Alterado Idade do Sequencial '+IntToStr(SpinEditSequencial.Value)+', abate: '+FormatDateTime('dd/mm/yyyy', DateTimePicker1.Date)+' '+Panel1.Caption+' para '+IntToStr(SpinEditNovaIdade.Value)+''', '''', '''', '''', '''')');
      //ShowMessage(qryExec.SQL.Text);
      qryExec.ExecSQL;
      MessageDlg('Alterado Idade para '+IntToStr(SpinEditNovaIdade.Value)+' Dentes!', mtInformation, [mbOK],0);
      Panel1.Caption := 'Selecione ao Lado';
      SpinEditMatricula.Value := 0;
      SpinEditSequencial.Value := 0;
      SpinEditNovaIdade.Value := 0;
      SpinEditMatricula.SetFocus;
      Except
        MessageDlg('Erro Ao Alterar!', mtError, [mbOK],0);
      end;
    end;
  end;
end;

procedure TfrmAlterarIdade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmAlterarIdade.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date := Date;
end;

procedure TfrmAlterarIdade.SpeedButton1Click(Sender: TObject);
begin
  if ((SpinEditMatricula.Value = 62) or (SpinEditMatricula.Value = 5467) or (SpinEditMatricula.Value = 5554)) then
  begin
    try
      qryExec.SQL.Clear;
      qryExec.SQL.Add('select idade from t_pescarcaca where data_abate = '''+FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date)+''' and seq_abate = '''+IntToStr(SpinEditSequencial.Value)+''' and banda = 1');
      qryExec.Active := True;
      Panel1.Caption := 'Idade Atual: '+ qryExec.FieldByName('idade').AsString;
      qryExec.Active := False;
      SpinEditNovaIdade.SetFocus;
    Except
      MessageDlg('Erro ao consultar Idade! Tente Novamente!', mtError, [mbOK],0);
    end;
  end;

end;

procedure TfrmAlterarIdade.SpinEditSequencialExit(Sender: TObject);
begin
  SpeedButton1.Click;
end;

end.
