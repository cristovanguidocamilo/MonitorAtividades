unit untEstoqueOsso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.ComCtrls;

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
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    Label2: TLabel;
    procedure btnAtualizaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  if CheckBox1.Checked = False then
  begin
    ZQuery1.Active := False;
    ZQuery1.ParamByName('abate').AsString := FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date);
    ZQuery1.Active := True;
  end
  else
    ZQuery1.Active := False;
    ZQuery1.ParamByName('abate').AsString := '';
  ZQuery1.ParamByName('hab').AsString := ComboBox1.Items[ComboBox1.ItemIndex];
  ZQuery1.Active := True;
end;

procedure TfrmEstoqueOsso.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    DateTimePicker1.Enabled := False
  else
    DateTimePicker1.Enabled := True;
  btnAtualiza.Click;
end;

procedure TfrmEstoqueOsso.ComboBox1Change(Sender: TObject);
begin
  btnAtualiza.Click;
end;

procedure TfrmEstoqueOsso.DateTimePicker1Change(Sender: TObject);
begin
  btnAtualiza.Click;
end;

procedure TfrmEstoqueOsso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmEstoqueOsso := Nil;
end;

procedure TfrmEstoqueOsso.FormShow(Sender: TObject);
begin
  ZQuery1.ParamByName('abate').AsString := '';
  ZQuery1.ParamByName('hab').AsString := ComboBox1.Items[ComboBox1.ItemIndex];
  ZQuery1.Active := True;
end;

end.
