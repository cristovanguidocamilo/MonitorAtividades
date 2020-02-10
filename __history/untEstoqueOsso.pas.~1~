unit untEstoqueOsso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmEstoqueOsso = class(TForm)
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    ZQuery1cod_prod: TWideStringField;
    ZQuery1tipo: TWideStringField;
    ZQuery1data_abate: TWideStringField;
    ZQuery1habilitacao: TWideStringField;
    ZQuery1quant: TIntegerField;
    DBGrid1: TDBGrid;
    btnAtualiza: TBitBtn;
    procedure btnAtualizaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoqueOsso: TfrmEstoqueOsso;

implementation

{$R *.dfm}

uses untMenu;

procedure TfrmEstoqueOsso.btnAtualizaClick(Sender: TObject);
begin
  ZQuery1.Refresh;
end;

procedure TfrmEstoqueOsso.FormShow(Sender: TObject);
begin
  ZQuery1.Active := True;
end;

end.
