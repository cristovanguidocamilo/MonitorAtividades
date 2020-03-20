unit untMonitorAtividades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, DateUtils, IniFiles, Clipbrd,
  Vcl.DBCtrls;

type
  TfrmMonitorAbate = class(TForm)
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Timer1: TTimer;
    BitBtn1: TBitBtn;
    ZQuery1seq_abate: TIntegerField;
    ZQuery1banda: TWideStringField;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    ZQuery1data_pes: TDateTimeField;
    ZQuery1num_lote: TWideStringField;
    DBGrid2: TDBGrid;
    ZQuery2: TZQuery;
    DataSource2: TDataSource;
    ZQuery2sequencial: TSmallintField;
    ZQuery2num_lote: TWideStringField;
    ZQuery2idade: TSmallintField;
    ZQuery2cod_matur: TWideStringField;
    ZQuery2cod_rastr: TWideStringField;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    ZQuery2sexo: TWideStringField;
    DBGrid3: TDBGrid;
    ZQuery3: TZQuery;
    DataSource3: TDataSource;
    ZQuery3sequencial: TSmallintField;
    ZQuery3num_lote: TWideStringField;
    ZQuery3sexo: TWideStringField;
    ZQuery3idade: TSmallintField;
    Label3: TLabel;
    ZQuery4: TZQuery;
    DataSource4: TDataSource;
    ZQuery4restam: TFloatField;
    ZQuery4qtdlote: TFloatField;
    ZQuery4qtdabate: TFloatField;
    ZQuery5: TZQuery;
    ZQuery5sequencial: TSmallintField;
    ZQuery6: TZQuery;
    ZQuery6quant: TIntegerField;
    DBGrid4: TDBGrid;
    Label4: TLabel;
    DataSource5: TDataSource;
    ZQuery7: TZQuery;
    DataSource6: TDataSource;
    DBGrid5: TDBGrid;
    Label5: TLabel;
    ZQuery7cod_camara: TWideStringField;
    ZQuery7quant: TIntegerField;
    ZQuery8: TZQuery;
    DataSource7: TDataSource;
    DBGrid6: TDBGrid;
    ZQuery8cod_camara: TWideStringField;
    ZQuery8seq_abate: TIntegerField;
    ZQuery8cod_trilho: TWideStringField;
    CheckBox1: TCheckBox;
    ZQuery8num_lote: TWideStringField;
    ZQuery2cod_rastr_1: TWideStringField;
    DBText1: TDBText;
    Label6: TLabel;
    Panel1: TPanel;
    ZQuery9: TZQuery;
    DataSource8: TDataSource;
    ZQuery9velocidade: TIntegerField;
    Label7: TLabel;
    DBText2: TDBText;
    ZQuery7periodo: TWideStringField;
    Label8: TLabel;
    DBText3: TDBText;
    ZQuery8periodo: TWideStringField;
    SpeedButton1: TSpeedButton;
    DBGrid7: TDBGrid;
    Label9: TLabel;
    ZQuery10: TZQuery;
    DataSource9: TDataSource;
    ZQuery10cod_camara: TWideStringField;
    ZQuery10animais: TIntegerField;
    CheckBox2: TCheckBox;
    ZQuery11: TZQuery;
    DataSource10: TDataSource;
    DBGrid8: TDBGrid;
    ZQuery11num_lote: TWideStringField;
    ZQuery11quant: TIntegerField;
    ZQuery1cod_tras: TWideStringField;
    ZQuery10num_lote: TWideStringField;
    ZQuery2rastr: TWideStringField;
    ZQuery2class: TWideStringField;
    ZQuery1rastr: TWideStringField;
    ZQuery8rastr: TWideStringField;
    ZQuery7rastr: TWideStringField;
    ZQuery6rastr: TWideStringField;
    ZQuery11rastr: TWideStringField;
    CONEXAO_TEMP: TZConnection;
    QRY_TEMP: TZQuery;
    ZQuery7abertura: TDateTimeField;
    ZQuery7fechamento: TDateTimeField;
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure Alerta;
  public
    { Public declarations }
  end;

var
  frmMonitorAbate: TfrmMonitorAbate;
  QuantidadeAviso: String;

implementation

{$R *.dfm}

uses untMenu, untLogAbate, untAlterarIdade;

procedure TfrmMonitorAbate.Alerta;
Var
  Mov, Rep, i: Integer;
begin
  Mov := 10;
  Rep := 10;
  With frmMonitorAbate do
  begin
  FormStyle := fsStayOnTop;
  Color := clRed;
    for i := 1 to Rep do
    begin
      Left := Left + Mov;
      Sleep(10);
      Top := Top - Mov;
      Sleep(10);
      Left := Left - Mov;
      Sleep(10);
      Top := Top + Mov;
      Sleep(10);
    end;
  Color := clBtnFace;
  FormStyle := fsNormal;
  end;
end;

procedure TfrmMonitorAbate.BitBtn1Click(Sender: TObject);
begin
  if BitBtn1.Caption = 'Iniciar Monitoramento' then
  begin
    BitBtn1.Caption := 'Parar Monitoramento';
    ZQuery1.Active := True;
    ZQuery2.Active := True;
    ZQuery3.Active := True;
    ZQuery4.Active := True;
    ZQuery5.Active := True;
    ZQuery6.Active := True;
    ZQuery7.Active := True;
    ZQuery8.Active := True;
    ZQuery9.Active := True;
    ZQuery10.Active := True;
    ZQuery11.Active := True;
    Timer1.Enabled := True;
  end
  else
  begin
    BitBtn1.Caption := 'Iniciar Monitoramento';
    Timer1.Enabled := False;
    ZQuery1.Active := False;
    ZQuery2.Active := False;
    ZQuery3.Active := False;
    ZQuery4.Active := False;
    ZQuery5.Active := False;
    ZQuery6.Active := False;
    ZQuery7.Active := False;
    ZQuery8.Active := False;
    ZQuery9.Active := False;
    ZQuery10.Active := False;
    ZQuery11.Active := False;
  end;
end;

procedure TfrmMonitorAbate.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then
  begin
    DBGrid8.Visible := True;
    DBGrid4.Visible := False;
    ZQuery11.Refresh;
  end
  else
  begin
    DBGrid8.Visible := False;
    DBGrid4.Visible := True;
    ZQuery6.Refresh;
  end;
end;

procedure TfrmMonitorAbate.DBGrid1DblClick(Sender: TObject);
begin
  Clipboard.AsText := ZQuery1.FieldByName('cod_tras').AsString;
end;

procedure TfrmMonitorAbate.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if MinutesBetween(Now(),ZQuery1data_pes.AsDateTime) >= 5 then
    DBGrid1.Canvas.Brush.Color:= $0079FDFA;
  if MinutesBetween(Now(),ZQuery1data_pes.AsDateTime) >= 10 then
    DBGrid1.Canvas.Brush.Color:= $00A6A6FF;
   DBGrid1.Canvas.FillRect(Rect);
   DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmMonitorAbate.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //if (ZQuery2rastr.Text <> ZQuery2class.Text) and (ZQuery2rastr.Text <> '') then
    //DBGrid2.Canvas.Brush.Color:= $00A6A6FF;
  //if (ZQuery2class_rastr2.Text <> ZQuery2class_rastr2_1.Text) and (ZQuery2class_rastr2_1.Text <> '') then
    //DBGrid2.Canvas.Brush.Color := $0079FDFA;
  if ((ZQuery2cod_rastr.AsString <> '0000000000000000') and (ZQuery2cod_rastr.AsString <> ZQuery2cod_rastr_1.AsString)) then
    DBGrid2.Canvas.Brush.Color := $00FD93C0;
  if ((ZQuery2cod_rastr.AsString <> '0000000000000000') and (ZQuery2cod_rastr.AsString = ZQuery2cod_rastr_1.AsString)) then
    DBGrid2.Canvas.Brush.Color := $00B9FFBC;
   DBGrid2.Canvas.FillRect(Rect);
   DBGrid2.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmMonitorAbate.DBGrid5DblClick(Sender: TObject);
begin
  if ZQuery7fechamento.AsString <> '' then
  Begin
    CONEXAO_TEMP.Connected := True;
    QRY_TEMP.SQL.Clear;
    if ZQuery7cod_camara.AsString = '01' then
    begin
      QRY_TEMP.SQL.Add('select ');
      QRY_TEMP.SQL.Add('abertura = (select top 1 CAM_01_AMBIENTE as temperatura from CAMARA01 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7abertura.AsDateTime)+'''),');
      QRY_TEMP.SQL.Add('fechamento = (select top 1 CAM_01_AMBIENTE as temperatura from CAMARA01 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7fechamento.AsDateTime)+''')');
    end;
     if ZQuery7cod_camara.AsString = '02' then
    begin
      QRY_TEMP.SQL.Add('select ');
      QRY_TEMP.SQL.Add('abertura = (select top 1 CAM_02_AMBIENTE as temperatura from CAMARA02 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7abertura.AsDateTime)+'''),');
      QRY_TEMP.SQL.Add('fechamento = (select top 1 CAM_02_AMBIENTE as temperatura from CAMARA02 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7fechamento.AsDateTime)+''')');
    end;
     if ZQuery7cod_camara.AsString = '03' then
    begin
      QRY_TEMP.SQL.Add('select ');
      QRY_TEMP.SQL.Add('abertura = (select top 1 CAM_03_AMBIENTE as temperatura from CAMARA03 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7abertura.AsDateTime)+'''),');
      QRY_TEMP.SQL.Add('fechamento = (select top 1 CAM_03_AMBIENTE as temperatura from CAMARA03 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7fechamento.AsDateTime)+''')');
    end;
     if ZQuery7cod_camara.AsString = '04' then
    begin
      QRY_TEMP.SQL.Add('select ');
      QRY_TEMP.SQL.Add('abertura = (select top 1 CAM_04_AMBIENTE as temperatura from CAMARA04 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7abertura.AsDateTime)+'''),');
      QRY_TEMP.SQL.Add('fechamento = (select top 1 CAM_04_AMBIENTE as temperatura from CAMARA04 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7fechamento.AsDateTime)+''')');
    end;
     if ZQuery7cod_camara.AsString = '05' then
    begin
      QRY_TEMP.SQL.Add('select ');
      QRY_TEMP.SQL.Add('abertura = (select top 1 CAM_05_AMBIENTE as temperatura from CAMARA05 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7abertura.AsDateTime)+'''),');
      QRY_TEMP.SQL.Add('fechamento = (select top 1 CAM_05_AMBIENTE as temperatura from CAMARA05 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7fechamento.AsDateTime)+''')');
    end;
     if ZQuery7cod_camara.AsString = '06' then
    begin
      QRY_TEMP.SQL.Add('select ');
      QRY_TEMP.SQL.Add('abertura = (select top 1 CAM_06_AMBIENTE as temperatura from CAMARA06 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7abertura.AsDateTime)+'''),');
      QRY_TEMP.SQL.Add('fechamento = (select top 1 CAM_06_AMBIENTE as temperatura from CAMARA06 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7fechamento.AsDateTime)+''')');
    end;
     if ZQuery7cod_camara.AsString = '07' then
    begin
      QRY_TEMP.SQL.Add('select ');
      QRY_TEMP.SQL.Add('abertura = (select top 1 CAM_07_AMBIENTE as temperatura from CAMARA07 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7abertura.AsDateTime)+'''),');
      QRY_TEMP.SQL.Add('fechamento = (select top 1 CAM_07_AMBIENTE as temperatura from CAMARA07 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7fechamento.AsDateTime)+''')');
    end;
     if ZQuery7cod_camara.AsString = '08' then
    begin
      QRY_TEMP.SQL.Add('select ');
      QRY_TEMP.SQL.Add('abertura = (select top 1 CAM_08_AMBIENTE as temperatura from CAMARA08 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7abertura.AsDateTime)+'''),');
      QRY_TEMP.SQL.Add('fechamento = (select top 1 CAM_08_AMBIENTE as temperatura from CAMARA08 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7fechamento.AsDateTime)+''')');
    end;
     if ZQuery7cod_camara.AsString = '09' then
    begin
      QRY_TEMP.SQL.Add('select ');
      QRY_TEMP.SQL.Add('abertura = (select top 1 CAM_09_AMBIENTE as temperatura from CAMARA09 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7abertura.AsDateTime)+'''),');
      QRY_TEMP.SQL.Add('fechamento = (select top 1 CAM_09_AMBIENTE as temperatura from CAMARA09 where Time_Stamp >= '''+FormatDateTime('yyyy-mm-dd hh:nn:ss',ZQuery7fechamento.AsDateTime)+''')');
    end;
    QRY_TEMP.Active := True;
    Application.MessageBox(PChar('Abertura: '+QRY_TEMP.FieldByName('abertura').AsString+'°C'+#13#10+'Fechamento: '+QRY_TEMP.FieldByName('fechamento').AsString+'°C'),'Aviso',MB_OK+MB_ICONINFORMATION);
    QRY_TEMP.Active := False;
    CONEXAO_TEMP.Connected := False;
  End
  else
    Application.MessageBox('Câmara Não Fechada!','Erro',MB_OK+MB_ICONERROR);
end;

procedure TfrmMonitorAbate.DBGrid5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if ((Length(ZQuery7periodo.Text)) > 15) then
     DBGrid5.Canvas.Brush.Color := $00B9FFBC;
   DBGrid5.Canvas.FillRect(Rect);
   DBGrid5.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmMonitorAbate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := False;
  frmMenu.GravaIni('CONFIG.INI', 'frmMonitorAbate', 'TOP' , IntToStr(frmMonitorAbate.Top ));
  frmMenu.GravaIni('CONFIG.INI', 'frmMonitorAbate', 'LEFT', IntToStr(frmMonitorAbate.Left));
  if BitBtn1.Caption = 'Parar Monitoramento' then
    BitBtn1.Click;
  frmMonitorAbate.Destroy;
  frmMonitorAbate := Nil;
end;

procedure TfrmMonitorAbate.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F12 then
    if QuantidadeAviso = '0' then
      begin
        QuantidadeAviso := InputBox('Inserir Monitor Quantidade', 'Digite com quantos animais deve-se avisar.', '');
        frmMonitorAbate.Caption := 'Monitoramento do Abate  (F12 - Cancelar Programação) - Quantidade Programada: ' + QuantidadeAviso;
      end
      else
      begin
        QuantidadeAviso := '0';
        frmMonitorAbate.Caption := 'Monitoramento do Abate  (F12 - Programar Quantidade Aviso)';
      end;
  if (ssCtrl in Shift) and (ssShift in Shift) and (Key=Ord('I')) then
  begin
    Application.CreateForm(TfrmAlterarIdade, frmAlterarIdade);
    frmAlterarIdade.ShowModal;
    frmAlterarIdade.Free;
  end;
end;

procedure TfrmMonitorAbate.FormShow(Sender: TObject);
begin
  frmMonitorAbate.Top  := StrToInt(frmMenu.LeIni('CONFIG.INI', 'frmMonitorAbate', 'TOP' ));
  frmMonitorAbate.Left := StrToInt(frmMenu.LeIni('CONFIG.INI', 'frmMonitorAbate', 'LEFT'));
  BitBtn1.Click;
  QuantidadeAviso := '0';
end;

procedure TfrmMonitorAbate.SpeedButton1Click(Sender: TObject);
begin
  if frmLogAbate = Nil then
  begin
    Application.CreateForm(TfrmLogAbate, frmLogAbate);
    frmLogAbate.Show;
  end
  Else
    Application.MessageBox('Tela já aberto!','Aviso',mb_Ok+mb_IconExclamation);
end;

procedure TfrmMonitorAbate.Timer1Timer(Sender: TObject);
begin
  ZQuery1.Refresh;
  ZQuery2.Refresh;
  ZQuery3.Refresh;
  ZQuery4.Refresh;
  ZQuery5.Refresh;
  if CheckBox2.Checked then
    ZQuery11.Refresh
  else
    ZQuery6.Refresh;
  ZQuery7.Refresh;
  if CheckBox1.Checked = False then
    ZQuery8.Refresh;
  ZQuery9.Refresh;
  ZQuery10.Refresh;

  if QuantidadeAviso <> '0' then
    if StrToInt(QuantidadeAviso) <= ZQuery5sequencial.AsInteger then
      Alerta;

  StatusBar1.Panels.Items[1].Text := 'Total: '+ZQuery4qtdlote.AsString;
  StatusBar1.Panels.Items[2].Text := 'Abatidos: '+ZQuery4qtdabate.AsString;
  StatusBar1.Panels.Items[3].Text := 'Restam: '+ZQuery4restam.AsString;
end;

end.
