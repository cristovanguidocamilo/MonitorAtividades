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
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    procedure btnAtualizaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
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
  ZQuery1.Active := False;
  if CheckBox1.Checked = False then
    ZQuery1.ParamByName('abate').AsString := FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)
  else
    ZQuery1.ParamByName('abate').AsString := '';
  ZQuery1.ParamByName('hab').AsString := ComboBox1.Items[ComboBox1.ItemIndex];
  if CheckBox2.Checked then
    ZQuery1.ParamByName('diant').AsString := 'S'
  else
    ZQuery1.ParamByName('diant').AsString := 'N';
  if CheckBox3.Checked then
    ZQuery1.ParamByName('tras').AsString := 'S'
  else
    ZQuery1.ParamByName('tras').AsString := 'N';
  if CheckBox4.Checked then
    ZQuery1.ParamByName('pa').AsString := 'S'
  else
    ZQuery1.ParamByName('pa').AsString := 'N';
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

procedure TfrmEstoqueOsso.CheckBox2Click(Sender: TObject);
begin
  btnAtualiza.Click;
end;

procedure TfrmEstoqueOsso.CheckBox3Click(Sender: TObject);
begin
  btnAtualiza.Click;
end;

procedure TfrmEstoqueOsso.CheckBox4Click(Sender: TObject);
begin
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
  DateTimePicker1.Date := Date;
  ZQuery1.ParamByName('abate').AsString := '';
  btnAtualiza.Click;
end;

end.
