unit untConsultaQuebra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmConsultaQuebra = class(TForm)
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    ZQuery1cod_camara: TWideStringField;
    ZQuery1seq_abate: TIntegerField;
    ZQuery1banda: TWideStringField;
    ZQuery1peso: TFloatField;
    ZQuery1peso_quebra: TFloatField;
    ZQuery1data_quebra: TDateTimeField;
    ZQuery1ph_quebra: TFloatField;
    ZQuery1perc_quebra: TFloatField;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    ZQuery1class_rastr: TWideStringField;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
  private
    { Private declarations }
    procedure atualizaGrid;
  public
    { Public declarations }
  end;

var
  frmConsultaQuebra: TfrmConsultaQuebra;

implementation

{$R *.dfm}

uses untMenu;

procedure TfrmConsultaQuebra.atualizaGrid;
begin
  ZQuery1.Active := False;
  ZQuery1.ParamByName('data').AsDate := DateTimePicker1.Date;
  ZQuery1.ParamByName('camara').AsString := ComboBox1.Items[ComboBox1.ItemIndex];
  ZQuery1.ParamByName('seq').AsString := ComboBox2.Items[ComboBox2.ItemIndex];
  ZQuery1.ParamByName('ph').AsString := ComboBox3.Items[ComboBox3.ItemIndex];
  ZQuery1.ParamByName('hab').AsString := ComboBox4.Items[ComboBox4.ItemIndex];
  ZQuery1.Active := True;
end;

procedure TfrmConsultaQuebra.BitBtn1Click(Sender: TObject);
begin
  atualizaGrid;
end;

procedure TfrmConsultaQuebra.ComboBox1Change(Sender: TObject);
begin
  atualizaGrid;
end;

procedure TfrmConsultaQuebra.ComboBox2Change(Sender: TObject);
begin
  atualizaGrid;
end;

procedure TfrmConsultaQuebra.ComboBox3Change(Sender: TObject);
begin
  atualizaGrid;
end;

procedure TfrmConsultaQuebra.ComboBox4Change(Sender: TObject);
begin
  atualizaGrid;
end;

procedure TfrmConsultaQuebra.DateTimePicker1Change(Sender: TObject);
begin
  atualizaGrid;
end;

procedure TfrmConsultaQuebra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmConsultaQuebra.Destroy;
  frmConsultaQuebra := Nil;
end;

procedure TfrmConsultaQuebra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmConsultaQuebra.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date := Date;
end;

end.