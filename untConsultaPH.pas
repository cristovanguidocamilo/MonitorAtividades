unit untConsultaPH;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmConsultaPH = class(TForm)
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    CheckBox1: TCheckBox;
    ZQuery1cod_camara: TWideStringField;
    ZQuery1seq_abate: TIntegerField;
    ZQuery1banda: TWideStringField;
    ZQuery1data_quebra: TDateTimeField;
    ZQuery1class_rastr: TWideStringField;
    ZQuery1desclass: TWideStringField;
    ZQuery1cod_tipo_desclas: TWideStringField;
    ZQuery1ph_quebra: TFloatField;
    ZQuery2: TZQuery;
    DataSource2: TDataSource;
    ZQuery2data_abate: TDateTimeField;
    ZQuery2cod_camara: TWideStringField;
    ZQuery2class_rastr: TWideStringField;
    ZQuery2quant: TIntegerField;
    DBGrid2: TDBGrid;
    ZQuery2perc_cam: TFloatField;
    ZQuery2total_cam: TIntegerField;
    ZQuery2total_lido: TIntegerField;
    Panel1: TPanel;
    Timer1: TTimer;
    CheckBox2: TCheckBox;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
    procedure atualizaGrid;
  public
    { Public declarations }
  end;

var
  frmConsultaPH: TfrmConsultaPH;

implementation

{$R *.dfm}

uses untMenu;

procedure TfrmConsultaPH.atualizaGrid;
begin
  ZQuery1.Active := False;
  ZQuery2.Active := False;
  ZQuery1.ParamByName('data').AsDate := DateTimePicker1.Date;
  ZQuery2.ParamByName('data').AsDate := DateTimePicker1.Date;
  if CheckBox1.Checked then
  begin
    ZQuery1.ParamByName('desclass').AsString := 'PH';
    ZQuery2.ParamByName('desclass').AsString := 'PH';
  end
  else
  begin
    ZQuery1.ParamByName('desclass').AsString := '';
    ZQuery2.ParamByName('desclass').AsString := '';
  end;
  ZQuery1.Active := True;
  ZQuery2.Active := True;
end;

procedure TfrmConsultaPH.BitBtn1Click(Sender: TObject);
begin
  atualizaGrid;
end;

procedure TfrmConsultaPH.CheckBox1Click(Sender: TObject);
begin
  atualizaGrid;
end;

procedure TfrmConsultaPH.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then
    Timer1.Enabled := True
  else
    Timer1.Enabled := False;
end;

procedure TfrmConsultaPH.ComboBox1Change(Sender: TObject);
begin
  atualizaGrid;
end;

procedure TfrmConsultaPH.ComboBox2Change(Sender: TObject);
begin
  atualizaGrid;
end;

procedure TfrmConsultaPH.ComboBox3Change(Sender: TObject);
begin
  atualizaGrid;
end;

procedure TfrmConsultaPH.ComboBox4Change(Sender: TObject);
begin
  atualizaGrid;
end;

procedure TfrmConsultaPH.ComboBox5Change(Sender: TObject);
begin
  atualizaGrid;
end;

procedure TfrmConsultaPH.DateTimePicker1Change(Sender: TObject);
begin
  atualizaGrid;
end;

procedure TfrmConsultaPH.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if ZQuery2.FieldByName('total_cam').AsInteger = ZQuery2.FieldByName('total_lido').AsInteger then
     DBGrid2.Canvas.Brush.Color := $00B9FFBC;
   DBGrid2.Canvas.FillRect(Rect);
   DBGrid2.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmConsultaPH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Timer1.Enabled := False;
  frmMenu.GravaIni('CONFIG.INI', 'frmConsultaPH', 'TOP' , IntToStr(frmConsultaPH.Top ));
  frmMenu.GravaIni('CONFIG.INI', 'frmConsultaPH', 'LEFT', IntToStr(frmConsultaPH.Left));
  ZQuery1.Active := False;
  ZQuery2.Active := False;
  frmConsultaPH.Destroy;
  frmConsultaPH := Nil;
end;

procedure TfrmConsultaPH.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmConsultaPH.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date := Date;
  frmConsultaPH.Top  := StrToInt(frmMenu.LeIni('CONFIG.INI', 'frmConsultaPH', 'TOP' ));
  frmConsultaPH.Left := StrToInt(frmMenu.LeIni('CONFIG.INI', 'frmConsultaPH', 'LEFT'));
end;

procedure TfrmConsultaPH.Timer1Timer(Sender: TObject);
begin
  atualizaGrid;
end;

end.
