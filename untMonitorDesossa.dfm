object frmMonitorDesossa: TfrmMonitorDesossa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Monitoramento da Desossa'
  ClientHeight = 608
  ClientWidth = 410
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 170
    Height = 19
    Caption = 'Entrada do Dianteiro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 215
    Width = 162
    Height = 19
    Caption = 'Entrada do Traseiro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 9
    Top = 422
    Width = 117
    Height = 19
    Caption = 'Entrada da PA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 288
    Top = 11
    Width = 73
    Height = 16
    Caption = 'Dia Atual - '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 33
    Width = 393
    Height = 176
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clMaroon
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'num_lote'
        Title.Caption = 'Num Lote'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'diant_ini'
        Title.Caption = 'Horario Inicio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'diant_fim'
        Title.Caption = 'Horario Final'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quant'
        Title.Caption = 'Quantidade'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 240
    Width = 393
    Height = 176
    DataSource = DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clMaroon
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid2DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'num_lote'
        Title.Caption = 'Num Lote'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'diant_ini'
        Title.Caption = 'Horario Inicio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'diant_fim'
        Title.Caption = 'Horario Final'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quant'
        Title.Caption = 'Quantidade'
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 9
    Top = 447
    Width = 393
    Height = 128
    DataSource = DataSource3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clMaroon
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid3DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'num_lote'
        Title.Caption = 'Num Lote'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'diant_ini'
        Title.Caption = 'Horario Inicio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'diant_fim'
        Title.Caption = 'Horario Final'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quant'
        Title.Caption = 'Quantidade'
        Visible = True
      end>
  end
  object SpinEdit1: TSpinEdit
    Left = 361
    Top = 8
    Width = 41
    Height = 22
    MaxValue = 365
    MinValue = 0
    TabOrder = 3
    Value = 0
    OnChange = SpinEdit1Change
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 589
    Width = 410
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'TOTAL DE PE'#199'AS DA DESOSSA: '
        Width = 50
      end>
  end
  object ZQuery1: TZQuery
    Connection = frmMenu.ZConnection1
    SQL.Strings = (
      'declare @data datetime = cast(getdate() as date)'
      ''
      'select num_lote,'
      '       min(data_ent) as diant_ini,'
      #9'     max(data_ent) as diant_fim,'
      '       count(1) as quant'
      '  from t_entdesossa with(nolock)'
      ' where cast(data_ent as date) = @data - :dia'
      '   and cod_prod in ('#39'011001'#39','#39'011017'#39')'
      ' group by num_lote'
      ' order by 2')
    Params = <
      item
        DataType = ftUnknown
        Name = 'dia'
        ParamType = ptUnknown
      end>
    Left = 112
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dia'
        ParamType = ptUnknown
      end>
    object ZQuery1num_lote: TSmallintField
      Alignment = taCenter
      FieldName = 'num_lote'
    end
    object ZQuery1diant_ini: TDateTimeField
      Alignment = taCenter
      FieldName = 'diant_ini'
      ReadOnly = True
    end
    object ZQuery1diant_fim: TDateTimeField
      Alignment = taCenter
      FieldName = 'diant_fim'
      ReadOnly = True
    end
    object ZQuery1quant: TIntegerField
      Alignment = taCenter
      FieldName = 'quant'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 152
    Top = 80
  end
  object ZQuery2: TZQuery
    Connection = frmMenu.ZConnection1
    SQL.Strings = (
      'declare @data datetime = cast(getdate() as date)'
      ''
      'select num_lote,'
      '       min(data_ent) as diant_ini,'
      #9'     max(data_ent) as diant_fim,'
      '       count(1) as quant'
      '  from t_entdesossa with(nolock)'
      ' where cast(data_ent as date) = @data - :dia'
      '   and cod_prod in ('#39'011000'#39','#39'011016'#39')'
      ' group by num_lote'
      ' order by 2')
    Params = <
      item
        DataType = ftUnknown
        Name = 'dia'
        ParamType = ptUnknown
      end>
    Left = 112
    Top = 287
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dia'
        ParamType = ptUnknown
      end>
    object SmallintField1: TSmallintField
      Alignment = taCenter
      FieldName = 'num_lote'
    end
    object DateTimeField1: TDateTimeField
      Alignment = taCenter
      FieldName = 'diant_ini'
      ReadOnly = True
    end
    object DateTimeField2: TDateTimeField
      Alignment = taCenter
      FieldName = 'diant_fim'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      Alignment = taCenter
      FieldName = 'quant'
      ReadOnly = True
    end
  end
  object DataSource2: TDataSource
    DataSet = ZQuery2
    Left = 152
    Top = 287
  end
  object ZQuery3: TZQuery
    Connection = frmMenu.ZConnection1
    SQL.Strings = (
      'declare @data datetime = cast(getdate() as date)'
      ''
      'select num_lote,'
      '       min(data_ent) as diant_ini,'
      #9'     max(data_ent) as diant_fim,'
      '       count(1) as quant'
      '  from t_entdesossa with(nolock)'
      ' where cast(data_ent as date) = @data - :dia'
      '   and cod_prod in ('#39'011004'#39','#39'011010'#39')'
      ' group by num_lote'
      ' order by 2')
    Params = <
      item
        DataType = ftUnknown
        Name = 'dia'
        ParamType = ptUnknown
      end>
    Left = 113
    Top = 494
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dia'
        ParamType = ptUnknown
      end>
    object SmallintField2: TSmallintField
      Alignment = taCenter
      FieldName = 'num_lote'
    end
    object DateTimeField3: TDateTimeField
      Alignment = taCenter
      FieldName = 'diant_ini'
      ReadOnly = True
    end
    object DateTimeField4: TDateTimeField
      Alignment = taCenter
      FieldName = 'diant_fim'
      ReadOnly = True
    end
    object IntegerField2: TIntegerField
      Alignment = taCenter
      FieldName = 'quant'
      ReadOnly = True
    end
  end
  object DataSource3: TDataSource
    DataSet = ZQuery3
    Left = 153
    Top = 494
  end
  object Timer1: TTimer
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 344
    Top = 88
  end
  object ZQuery4: TZQuery
    Connection = frmMenu.ZConnection1
    SQL.Strings = (
      'declare @data datetime = cast(getdate() as date)'
      ''
      'select count(1) as quant'
      '  from t_entdesossa with(nolock)'
      ' where cast(data_ent as date) = @data - :dia')
    Params = <
      item
        DataType = ftUnknown
        Name = 'dia'
        ParamType = ptUnknown
      end>
    Left = 312
    Top = 560
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dia'
        ParamType = ptUnknown
      end>
    object ZQuery4quant: TIntegerField
      FieldName = 'quant'
      ReadOnly = True
    end
  end
end