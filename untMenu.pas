unit untMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  ZAbstractConnection, ZConnection, IniFiles;

type
  TfrmMenu = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ZConnection1: TZConnection;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure GravaIni(Arquivo, Secao, Propriedade, Valor : String);
    Function LeIni(Arquivo, Secao, Propriedade : String) : String;
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses untMonitorAtividades, untMonitorDesossa, untConsultaQuebra;

procedure TfrmMenu.BitBtn1Click(Sender: TObject);
begin
  if frmMonitorAbate = Nil then
  Begin
    Application.CreateForm(TfrmMonitorAbate, frmMonitorAbate);
    frmMonitorAbate.Show;
  End
  Else
    Application.MessageBox('Monitoramento já aberto!','Aviso',MB_OK+MB_ICONEXCLAMATION);
end;

procedure TfrmMenu.BitBtn2Click(Sender: TObject);
begin
  if frmMonitorDesossa = Nil then
  Begin
    Application.CreateForm(TfrmMonitorDesossa, frmMonitorDesossa);
    frmMonitorDesossa.Show;
  End
  Else
    Application.MessageBox('Monitoramento já aberto!','Aviso',MB_OK+MB_ICONEXCLAMATION);
end;

procedure TfrmMenu.BitBtn3Click(Sender: TObject);
begin
  if frmConsultaQuebra = Nil then
  Begin
    Application.CreateForm(TfrmConsultaQuebra, frmConsultaQuebra);
    frmConsultaQuebra.Show;
  End
  Else
    Application.MessageBox('Consulta de Quebra já aberta!', 'Aviso', MB_OK+MB_ICONEXCLAMATION);

end;

procedure TfrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ZConnection1.Connected := False;
  GravaIni('CONFIG.INI', 'frmMenu', 'TOP' , IntToStr(frmMenu.Top ));
  GravaIni('CONFIG.INI', 'frmMenu', 'LEFT', IntToStr(frmMenu.Left));
end;

procedure TfrmMenu.FormShow(Sender: TObject);
Var
  ABT, DES, QUE:String;
begin
  Try
    ZConnection1.Connected := False;
    ZConnection1.HostName  := LeIni('CONFIG.INI', 'CONEXAO','HostName');
    ZConnection1.Database  := LeIni('CONFIG.INI', 'CONEXAO','Database');
    ZConnection1.Password  := LeIni('CONFIG.INI', 'CONEXAO','Password');
    ZConnection1.Protocol  := LeIni('CONFIG.INI', 'CONEXAO','Protocol');
    ZConnection1.User      := LeIni('CONFIG.INI', 'CONEXAO','User'    );
    ZConnection1.Connected := True;
  Except
    Begin
    Application.MessageBox('Erro de Login no Banco de Dados! Verifique Parâmetros de Conexão','Erro',mb_Ok+MB_ICONERROR);
    Application.Terminate;
    End;
  End;
  frmMenu.Top  := StrToInt(LeIni('CONFIG.INI', 'frmMenu', 'TOP' ));
  frmMenu.Left := StrToInt(LeIni('CONFIG.INI', 'frmMenu', 'LEFT'));
  ABT := LeIni('CONFIG.INI', 'frmMenu', 'ABT');
  DES := LeIni('CONFIG.INI', 'frmMenu', 'DES');
  QUE := LeIni('CONFIG.INI', 'frmMenu', 'QUE');
  if ABT = 'S' then
    BitBtn1.Visible := True
  else
    BitBtn1.Visible := False;
  if DES = 'S' then
    BitBtn2.Visible := True
  else
    BitBtn2.Visible := False;
  if QUE = 'S' then
    BitBtn3.Visible := True
  else
    BitBtn3.Visible := False;
  end;

procedure TfrmMenu.GravaIni(Arquivo, Secao, Propriedade, Valor: String);
Var
  ArquivoINI : TIniFile;
begin
  ArquivoINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\'+Arquivo);
  ArquivoINI.WriteString(Secao, Propriedade, Valor);
  ArquivoINI.Free;
end;

function TfrmMenu.LeIni(Arquivo, Secao, Propriedade: String): String;
Var
  ArquivoINI : TIniFile;
begin
  ArquivoINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\'+Arquivo);
  Result := ArquivoINI.ReadString(Secao, Propriedade, 'Erro ao Ler Arquivo INI');
  ArquivoINI.Free;
end;

end.
