object frmConsultaPH: TfrmConsultaPH
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta PH'
  ClientHeight = 612
  ClientWidth = 588
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 74
    Height = 13
    Caption = 'Data de Abate:'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 88
    Top = 8
    Width = 97
    Height = 21
    Date = 43753.298054131940000000
    Time = 43753.298054131940000000
    TabOrder = 0
    OnChange = DateTimePicker1Change
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 37
    Width = 569
    Height = 339
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cod_camara'
        Title.Alignment = taCenter
        Title.Caption = 'C'#226'mara'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'seq_abate'
        Title.Alignment = taCenter
        Title.Caption = 'Seq Abate'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'banda'
        Title.Alignment = taCenter
        Title.Caption = 'Banda'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_quebra'
        Title.Alignment = taCenter
        Title.Caption = 'Data/Hora'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'class_rastr'
        Title.Alignment = taCenter
        Title.Caption = 'Merc Origem'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'desclass'
        Title.Alignment = taCenter
        Title.Caption = 'Merc Final'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_tipo_desclas'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Desc'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ph_quebra'
        Title.Alignment = taCenter
        Title.Caption = 'PH Lido'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 191
    Top = 6
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object CheckBox1: TCheckBox
    Left = 432
    Top = 14
    Width = 145
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Somente Desclassifica'#231#245'es'
    TabOrder = 3
    OnClick = CheckBox1Click
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 382
    Width = 329
    Height = 222
    DataSource = DataSource2
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'data_abate'
        Title.Alignment = taCenter
        Title.Caption = 'Data Abate'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_camara'
        Title.Alignment = taCenter
        Title.Caption = 'C'#226'mara'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'class_rastr'
        Title.Alignment = taCenter
        Title.Caption = 'Habilita'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quant'
        Title.Alignment = taCenter
        Title.Caption = 'Quant'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object ZQuery1: TZQuery
    Connection = frmMenu.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'declare @data date = cast(:data as date)'
      'declare @desclass char(2) = :desclass'
      ''
      'select pes.cod_camara,'
      '       pes.seq_abate,'
      '       pes.banda,'
      '       pes.data_quebra,'
      '       pes.class_rastr,'
      '       isnull(his.class_rastr, pes.class_rastr) as desclass,'
      '       his.cod_tipo_desclas,'
      '       pes.ph_quebra'
      '  from t_pescarcaca pes'
      '  left join t_historico_rastr his on his.cod_tras = pes.cod_tras'
      ' where pes.data_abate = @data'
      
        '   and @desclass = case when @desclass = '#39'PH'#39' then his.cod_tipo_' +
        'desclas else @desclass end'
      '   and pes.status <> '#39'T'#39
      '   and pes.ph_quebra is not null'
      ' order by pes.data_quebra desc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desclass'
        ParamType = ptUnknown
      end>
    Left = 48
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desclass'
        ParamType = ptUnknown
      end>
    object ZQuery1cod_camara: TWideStringField
      Alignment = taCenter
      FieldName = 'cod_camara'
      Size = 3
    end
    object ZQuery1seq_abate: TIntegerField
      Alignment = taCenter
      FieldName = 'seq_abate'
    end
    object ZQuery1banda: TWideStringField
      Alignment = taCenter
      FieldName = 'banda'
      Required = True
      Size = 1
    end
    object ZQuery1data_quebra: TDateTimeField
      Alignment = taCenter
      FieldName = 'data_quebra'
    end
    object ZQuery1class_rastr: TWideStringField
      Alignment = taCenter
      FieldName = 'class_rastr'
      Size = 5
    end
    object ZQuery1desclass: TWideStringField
      Alignment = taCenter
      FieldName = 'desclass'
      ReadOnly = True
      Size = 5
    end
    object ZQuery1cod_tipo_desclas: TWideStringField
      Alignment = taCenter
      FieldName = 'cod_tipo_desclas'
      Size = 2
    end
    object ZQuery1ph_quebra: TFloatField
      Alignment = taCenter
      FieldName = 'ph_quebra'
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 80
    Top = 304
  end
  object ZQuery2: TZQuery
    Connection = frmMenu.ZConnection1
    SQL.Strings = (
      'declare @data date = cast(:data as date)'
      'declare @desclass char(2) = :desclass'
      ''
      'select pes.data_abate,'
      '       pes.cod_camara,'
      '       isnull(his.class_rastr, pes.class_rastr) as class_rastr,'
      #9'     count(1)/2 as quant'
      '  from t_pescarcaca pes'
      '  left join t_historico_rastr his on his.cod_tras = pes.cod_tras'
      ' where pes.data_abate = @data'
      
        '   and @desclass = case when @desclass = '#39'PH'#39' then his.cod_tipo_' +
        'desclas else @desclass end'
      '   and pes.status <> '#39'T'#39
      '   and pes.ph_quebra is not null'
      
        ' group by pes.data_abate, pes.cod_camara, isnull(his.class_rastr' +
        ', pes.class_rastr)'
      ' order by 1, 2, 3')
    Params = <
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desclass'
        ParamType = ptUnknown
      end>
    Left = 24
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desclass'
        ParamType = ptUnknown
      end>
    object ZQuery2data_abate: TDateTimeField
      Alignment = taCenter
      FieldName = 'data_abate'
    end
    object ZQuery2cod_camara: TWideStringField
      Alignment = taCenter
      FieldName = 'cod_camara'
      Size = 3
    end
    object ZQuery2class_rastr: TWideStringField
      Alignment = taCenter
      FieldName = 'class_rastr'
      ReadOnly = True
      Size = 5
    end
    object ZQuery2quant: TIntegerField
      Alignment = taCenter
      FieldName = 'quant'
      ReadOnly = True
    end
  end
  object DataSource2: TDataSource
    DataSet = ZQuery2
    Left = 56
    Top = 416
  end
end