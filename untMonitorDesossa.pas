unit untMonitorDesossa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, IniFiles, Vcl.Samples.Spin,
  Vcl.ComCtrls, DateUtils;

type
  TfrmMonitorDesossa = class(TForm)
    ZQuery1: TZQuery;
    ZQuery1num_lote: TSmallintField;
    ZQuery1diant_ini: TDateTimeField;
    ZQuery1diant_fim: TDateTimeField;
    ZQuery1quant: TIntegerField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    ZQuery2: TZQuery;
    SmallintField1: TSmallintField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    IntegerField1: TIntegerField;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    ZQuery3: TZQuery;
    SmallintField2: TSmallintField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    IntegerField2: TIntegerField;
    DataSource3: TDataSource;
    DBGrid3: TDBGrid;
    Label3: TLabel;
    Timer1: TTimer;
    SpinEdit1: TSpinEdit;
    Label4: TLabel;
    StatusBar1: TStatusBar;
    ZQuery4: TZQuery;
    ZQuery4quant: TIntegerField;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure AtivaQuery;
    procedure SpinEdit1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMonitorDesossa: TfrmMonitorDesossa;

implementation

{$R *.dfm}

uses untMenu;

procedure TfrmMonitorDesossa.AtivaQuery;
begin
  ZQuery1.Active := False;
  ZQuery1.ParamByName('dia').AsInteger := SpinEdit1.Value;
  ZQuery1.Active := True;
  ZQuery2.Active := False;
  ZQuery2.ParamByName('dia').AsInteger := SpinEdit1.Value;
  ZQuery2.Active := True;
  ZQuery3.Active := False;
  ZQuery3.ParamByName('dia').AsInteger := SpinEdit1.Value;
  ZQuery3.Active := True;
  ZQuery4.Active := False;
  ZQuery4.ParamByName('dia').AsInteger := SpinEdit1.Value;
  ZQuery4.Active := True;
end;

procedure TfrmMonitorDesossa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if MinutesBetween(Now(),ZQuery1.FieldByName('diant_fim').AsDateTime) >= 5 then
    DBGrid1.Canvas.Brush.Color:= $0079FDFA;
  if MinutesBetween(Now(),ZQuery1.FieldByName('diant_fim').AsDateTime) >= 10 then
    DBGrid1.Canvas.Brush.Color:= $00A6A6FF;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmMonitorDesossa.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if MinutesBetween(Now(),ZQuery2.FieldByName('diant_fim').AsDateTime) >= 5 then
    DBGrid2.Canvas.Brush.Color:= $0079FDFA;
  if MinutesBetween(Now(),ZQuery2.FieldByName('diant_fim').AsDateTime) >= 10 then
    DBGrid2.Canvas.Brush.Color:= $00A6A6FF;
  DBGrid2.Canvas.FillRect(Rect);
  DBGrid2.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmMonitorDesossa.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if MinutesBetween(Now(),ZQuery3.FieldByName('diant_fim').AsDateTime) >= 5 then
    DBGrid3.Canvas.Brush.Color:= $0079FDFA;
  if MinutesBetween(Now(),ZQuery3.FieldByName('diant_fim').AsDateTime) >= 10 then
    DBGrid3.Canvas.Brush.Color:= $00A6A6FF;
  DBGrid3.Canvas.FillRect(Rect);
  DBGrid3.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmMonitorDesossa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmMenu.GravaIni('CONFIG.INI', 'frmMonitorDesossa', 'TOP' , IntToStr(frmMonitorDesossa.Top ));
  frmMenu.GravaIni('CONFIG.INI', 'frmMonitorDesossa', 'LEFT', IntToStr(frmMonitorDesossa.Left));
  Timer1.Enabled := False;
  ZQuery1.Active := False;
  ZQuery2.Active := False;
  ZQuery3.Active := False;
  frmMonitorDesossa.Destroy;
  frmMonitorDesossa := Nil;
end;

procedure TfrmMonitorDesossa.FormShow(Sender: TObject);
begin
  AtivaQuery;
  Timer1.Enabled := True;
  frmMonitorDesossa.Top  := StrToInt(frmMenu.LeIni('CONFIG.INI', 'frmMonitorDesossa', 'TOP' ));
  frmMonitorDesossa.Left := StrToInt(frmMenu.LeIni('CONFIG.INI', 'frmMonitorDesossa', 'LEFT'));
end;

procedure TfrmMonitorDesossa.SpinEdit1Change(Sender: TObject);
begin
  AtivaQuery;
end;

procedure TfrmMonitorDesossa.Timer1Timer(Sender: TObject);
begin
  ZQuery1.Refresh;
  ZQuery2.Refresh;
  ZQuery3.Refresh;
  ZQuery4.Refresh;
  StatusBar1.Panels.Items[0].Text := 'TOTAL DE PE�AS DA DESOSSA: ' + ZQuery4quant.AsString;
end;

end.