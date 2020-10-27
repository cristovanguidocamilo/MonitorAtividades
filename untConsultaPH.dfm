object frmConsultaPH: TfrmConsultaPH
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta PH'
  ClientHeight = 612
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  ShowHint = True
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
    Width = 433
    Height = 292
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        Title.Caption = 'C'#226'm'
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
        Title.Caption = 'Seq'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 45
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
        Width = 125
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
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_tipo_desclas'
        Title.Alignment = taCenter
        Title.Caption = 'Desc'
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
        Width = 44
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 191
    Top = 6
    Width = 66
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object CheckBox1: TCheckBox
    Left = 296
    Top = 19
    Width = 145
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Somente Desclassifica'#231#245'es'
    TabOrder = 3
    OnClick = CheckBox1Click
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 335
    Width = 369
    Height = 269
    Hint = 'Quantidade em Animais'
    DataSource = DataSource2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid2DrawColumnCell
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
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_camara'
        Title.Alignment = taCenter
        Title.Caption = 'C'#226'm'
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
        Width = 113
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
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'perc_cam'
        Title.Alignment = taCenter
        Title.Caption = '% C'#226'mara'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 380
    Top = 584
    Width = 71
    Height = 20
    BevelOuter = bvNone
    Caption = 'Leitura 100%'
    Color = 12189628
    ParentBackground = False
    TabOrder = 5
  end
  object CheckBox2: TCheckBox
    Left = 296
    Top = 0
    Width = 145
    Height = 17
    Hint = 'Intervalo de 10 Segundos'
    Alignment = taLeftJustify
    Caption = 'Atualizar Automaticamente'
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = CheckBox2Click
  end
  object ZQuery1: TZQuery
    Connection = frmMenu.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'declare @data date = cast(:data as date)'
      'declare @desclass char(2) = :desclass'
      ''
      'select pes.cod_camara,'
      
        '       cast(pes.seq_abate as varchar) + '#39'-'#39' + case when pes.band' +
        'a = 1 then '#39'D'#39' else '#39'E'#39' end as seq_abate,'
      '       pes.data_quebra,'
      
        #9'   concat(rtrim(pes.class_rastr), case when isnull(pes.class_ra' +
        'str2,'#39#39') <> '#39#39' then concat('#39'-'#39',rtrim(pes.class_rastr2)) end, cas' +
        'e when isnull(pes.class_rastr3,'#39#39') <> '#39#39' then concat('#39'-'#39',rtrim(p' +
        'es.class_rastr3)) end, case when isnull(pes.class_rastr4,'#39#39') <> ' +
        #39#39' then concat('#39'-'#39',rtrim(pes.class_rastr4)) end, case when isnul' +
        'l(pes.class_rastr5,'#39#39') <> '#39#39' then concat('#39'-'#39',rtrim(pes.class_ras' +
        'tr5)) end, case when isnull(pes.class_rastr6,'#39#39') <> '#39#39' then conc' +
        'at('#39'-'#39',rtrim(pes.class_rastr6)) end) as class_rastr,'
      
        #9'   concat(rtrim(isnull(his.class_rastr, pes.class_rastr)), case' +
        ' when isnull(rtrim(isnull(his2.class_rastr2, pes.class_rastr2)),' +
        #39#39') <> '#39#39' then concat('#39'-'#39',rtrim(isnull(his2.class_rastr2, pes.cl' +
        'ass_rastr2))) end, case when isnull(rtrim(isnull(his3.class_rast' +
        'r3, pes.class_rastr3)),'#39#39') <> '#39#39' then concat('#39'-'#39',rtrim(isnull(hi' +
        's3.class_rastr3, pes.class_rastr3))) end, case when isnull(rtrim' +
        '(isnull(his4.class_rastr4, pes.class_rastr4)),'#39#39') <> '#39#39' then con' +
        'cat('#39'-'#39',rtrim(isnull(his4.class_rastr4, pes.class_rastr4))) end,' +
        ' case when isnull(rtrim(isnull(his5.class_rastr5, pes.class_rast' +
        'r5)),'#39#39') <> '#39#39' then concat('#39'-'#39',rtrim(isnull(his5.class_rastr5, p' +
        'es.class_rastr5))) end, case when isnull(rtrim(isnull(his6.class' +
        '_rastr6, pes.class_rastr6)),'#39#39') <> '#39#39' then concat('#39'-'#39',rtrim(isnu' +
        'll(his6.class_rastr6, pes.class_rastr6))) end) as desclass,'
      
        '       isnull(isnull(isnull(his.cod_tipo_desclas, his2.cod_tipo_' +
        'desclas),his3.cod_tipo_desclas),his4.cod_tipo_desclas) as cod_ti' +
        'po_desclas,'
      '       pes.ph_quebra'
      '  from t_pescarcaca pes with (nolock)'
      
        '  left join t_historico_rastr his with (nolock) on his.cod_tras ' +
        '= pes.cod_tras'
      
        '  left join t_historico_rastr2 his2 with (nolock) on his2.cod_tr' +
        'as = pes.cod_tras'
      
        '  left join t_historico_rastr3 his3 with (nolock) on his3.cod_tr' +
        'as = pes.cod_tras'
      
        '  left join t_historico_rastr4 his4 with (nolock) on his4.cod_tr' +
        'as = pes.cod_tras'
      
        '  left join t_historico_rastr5 his5 with (nolock) on his5.cod_tr' +
        'as = pes.cod_tras'
      
        '  left join t_historico_rastr6 his6 with (nolock) on his6.cod_tr' +
        'as = pes.cod_tras'
      ' where pes.data_abate = @data'
      
        '   and @desclass = case when @desclass = '#39'PH'#39' then isnull(isnull' +
        '(isnull(his.cod_tipo_desclas, his2.cod_tipo_desclas),his3.cod_ti' +
        'po_desclas),his4.cod_tipo_desclas) else @desclass end'
      '   and pes.status <> '#39'T'#39
      '   and pes.ph_quebra is not null'
      ''
      'order by data_quebra desc')
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
    Left = 40
    Top = 168
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
    object ZQuery1seq_abate: TWideStringField
      Alignment = taCenter
      FieldName = 'seq_abate'
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
    Left = 72
    Top = 168
  end
  object ZQuery2: TZQuery
    Connection = frmMenu.ZConnection1
    SQL.Strings = (
      'declare @data date = cast(:data as date)'
      'declare @desclass char(2) = :desclass'
      ''
      'select t.data_abate,'
      '       t.cod_camara,'
      
        #9'     case when (substring(t.class_rastr,len(t.class_rastr),1)) ' +
        '= '#39'-'#39' then substring(t.class_rastr, 1, len(t.class_rastr)-1) els' +
        'e t.class_rastr end as class_rastr,'
      #9'     t.quant,'
      #9'     t.total_cam,'
      #9'     t.total_lido,'
      
        '       cast((cast(t.quant as decimal(15,2)) * 100) / cast(t.tota' +
        'l_cam as decimal(15,2)) as decimal(15,2)) as perc_cam'
      '  from ('
      'select pes.data_abate,'
      '       pes.cod_camara,'
      
        '       concat(rtrim(isnull(his.class_rastr, pes.class_rastr)), c' +
        'ase when isnull(rtrim(isnull(his2.class_rastr2, pes.class_rastr2' +
        ')),'#39#39') <> '#39#39' then concat('#39'-'#39',rtrim(isnull(his2.class_rastr2, pes' +
        '.class_rastr2))) end, case when isnull(rtrim(isnull(his3.class_r' +
        'astr3, pes.class_rastr3)),'#39#39') <> '#39#39' then concat('#39'-'#39',rtrim(isnull' +
        '(his3.class_rastr3, pes.class_rastr3))) end, case when isnull(rt' +
        'rim(isnull(his4.class_rastr4, pes.class_rastr4)),'#39#39') <> '#39#39' then ' +
        'concat('#39'-'#39',rtrim(isnull(his4.class_rastr4, pes.class_rastr4))) e' +
        'nd, case when isnull(rtrim(isnull(his5.class_rastr5, pes.class_r' +
        'astr5)),'#39#39') <> '#39#39' then concat('#39'-'#39',rtrim(isnull(his5.class_rastr5' +
        ', pes.class_rastr5))) end, case when isnull(rtrim(isnull(his6.cl' +
        'ass_rastr6, pes.class_rastr6)),'#39#39') <> '#39#39' then concat('#39'-'#39',rtrim(i' +
        'snull(his6.class_rastr6, pes.class_rastr6))) end) as class_rastr' +
        ','
      #9'     count(1)/2 as quant,'
      
        #9'     (select count(1)/2 from t_pescarcaca tot where  tot.data_a' +
        'bate = @data and tot.cod_camara = pes.cod_camara) as total_cam,'
      
        '  '#9'   (select count(1)/2 from t_pescarcaca tot where  tot.data_a' +
        'bate = @data and tot.cod_camara = pes.cod_camara and tot.ph_queb' +
        'ra is not null) as total_lido'
      '  from t_pescarcaca pes with (nolock)'
      
        '  left join t_historico_rastr his with (nolock) on his.cod_tras ' +
        '= pes.cod_tras'
      
        '  left join t_historico_rastr2 his2 with (nolock) on his2.cod_tr' +
        'as = pes.cod_tras'
      
        '  left join t_historico_rastr3 his3 with (nolock) on his3.cod_tr' +
        'as = pes.cod_tras'
      
        '  left join t_historico_rastr4 his4 with (nolock) on his4.cod_tr' +
        'as = pes.cod_tras'
      
        '  left join t_historico_rastr5 his5 with (nolock) on his5.cod_tr' +
        'as = pes.cod_tras'
      
        '  left join t_historico_rastr6 his6 with (nolock) on his6.cod_tr' +
        'as = pes.cod_tras'
      ' where pes.data_abate = @data'
      
        '   and @desclass = case when @desclass = '#39'PH'#39' then isnull(isnull' +
        '(isnull(his.cod_tipo_desclas, his2.cod_tipo_desclas),his3.cod_ti' +
        'po_desclas),his4.cod_tipo_desclas) else @desclass end'
      '   and pes.status <> '#39'T'#39
      '   and pes.ph_quebra is not null'
      
        ' group by pes.data_abate, pes.cod_camara, concat(rtrim(isnull(hi' +
        's.class_rastr, pes.class_rastr)), case when isnull(rtrim(isnull(' +
        'his2.class_rastr2, pes.class_rastr2)),'#39#39') <> '#39#39' then concat('#39'-'#39',' +
        'rtrim(isnull(his2.class_rastr2, pes.class_rastr2))) end, case wh' +
        'en isnull(rtrim(isnull(his3.class_rastr3, pes.class_rastr3)),'#39#39')' +
        ' <> '#39#39' then concat('#39'-'#39',rtrim(isnull(his3.class_rastr3, pes.class' +
        '_rastr3))) end, case when isnull(rtrim(isnull(his4.class_rastr4,' +
        ' pes.class_rastr4)),'#39#39') <> '#39#39' then concat('#39'-'#39',rtrim(isnull(his4.' +
        'class_rastr4, pes.class_rastr4))) end, case when isnull(rtrim(is' +
        'null(his5.class_rastr5, pes.class_rastr5)),'#39#39') <> '#39#39' then concat' +
        '('#39'-'#39',rtrim(isnull(his5.class_rastr5, pes.class_rastr5))) end, ca' +
        'se when isnull(rtrim(isnull(his6.class_rastr6, pes.class_rastr6)' +
        '),'#39#39') <> '#39#39' then concat('#39'-'#39',rtrim(isnull(his6.class_rastr6, pes.' +
        'class_rastr6))) end) ) t'
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
    object ZQuery2perc_cam: TFloatField
      Alignment = taCenter
      FieldName = 'perc_cam'
      ReadOnly = True
    end
    object ZQuery2total_cam: TIntegerField
      Alignment = taCenter
      FieldName = 'total_cam'
      ReadOnly = True
    end
    object ZQuery2total_lido: TIntegerField
      FieldName = 'total_lido'
      ReadOnly = True
    end
  end
  object DataSource2: TDataSource
    DataSet = ZQuery2
    Left = 56
    Top = 416
  end
  object Timer1: TTimer
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 408
    Top = 336
  end
end
