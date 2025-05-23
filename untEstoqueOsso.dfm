object frmEstoqueOsso: TfrmEstoqueOsso
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Estoque com Osso'
  ClientHeight = 657
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 25
    Width = 33
    Height = 13
    Caption = 'Abate:'
  end
  object Label2: TLabel
    Left = 244
    Top = 25
    Width = 56
    Height = 13
    Caption = 'Habilita'#231#227'o:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 62
    Width = 626
    Height = 587
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'cod_prod'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 222
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tipo'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 65
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'data_abate'
        Title.Alignment = taCenter
        Title.Caption = 'Data Abate'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'habilitacao'
        Title.Alignment = taCenter
        Title.Caption = 'Habilita'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 126
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'quant'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd_bloq'
        Title.Alignment = taCenter
        Title.Caption = 'Bloq'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 46
        Visible = True
      end>
  end
  object btnAtualiza: TBitBtn
    Left = 536
    Top = 17
    Width = 98
    Height = 25
    Caption = 'Atualizar'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF33339993707399933333773337F3777FF3399933000339
      9933377333777F3377F3399333707333993337733337333337FF993333333333
      399377F33333F333377F993333303333399377F33337FF333373993333707333
      333377F333777F333333993333101333333377F333777F3FFFFF993333000399
      999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
      99933773FF777F3F777F339993707399999333773F373F77777F333999999999
      3393333777333777337333333999993333333333377777333333}
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnAtualizaClick
  end
  object DateTimePicker1: TDateTimePicker
    Left = 47
    Top = 20
    Width = 97
    Height = 21
    Date = 43858.609097094910000000
    Time = 43858.609097094910000000
    Enabled = False
    TabOrder = 2
    OnChange = DateTimePicker1Change
  end
  object CheckBox1: TCheckBox
    Left = 150
    Top = 24
    Width = 44
    Height = 17
    Caption = 'Tudo'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = CheckBox1Click
  end
  object ComboBox1: TComboBox
    Left = 306
    Top = 19
    Width = 80
    Height = 21
    TabOrder = 4
    OnChange = ComboBox1Change
    Items.Strings = (
      ''
      'UA-CHINA-ARAB-HAL'
      'UA-CHINA-HAL'
      'UA-CHINA'
      'UA-HAL'
      'UA'
      'LE-CHINA-ARAB-HAL'
      'LE-CHINA-HAL'
      'LE-CHINA'
      'LE-HAL'
      'LE'
      'LG-CHINA-ARAB-HAL'
      'LG-CHINA-HAL'
      'LG-CHINA'
      'LG-HAL'
      'LG'
      'NE')
  end
  object CheckBox2: TCheckBox
    Left = 436
    Top = 8
    Width = 65
    Height = 17
    Caption = 'Dianteiro'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = CheckBox2Click
  end
  object CheckBox3: TCheckBox
    Left = 436
    Top = 23
    Width = 58
    Height = 17
    Caption = 'Traseiro'
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = CheckBox3Click
  end
  object CheckBox4: TCheckBox
    Left = 436
    Top = 38
    Width = 35
    Height = 17
    Caption = 'PA'
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = CheckBox4Click
  end
  object ZQuery1: TZQuery
    Connection = frmMenu.ZConnection1
    SQL.Strings = (
      'declare @abate date = cast(:abate as date)'
      'declare @hab varchar(20) = :hab'
      'declare @diant varchar(1) = :diant'
      'declare @tras varchar(1) = :tras'
      'declare @pa varchar(1) = :pa'
      ''
      'select * from ('
      'select t.cod_prod,'
      '       t.tipo,'
      #9'   cast(data_abate as date) as data_abate,'
      
        #9'   concat(rtrim(isnull(ras1.class_rastr, t.class_rastr)), case ' +
        'when (isnull(ras2.class_rastr2, t.class_rastr2)) <> '#39#39' then conc' +
        'at('#39'-'#39', rtrim(isnull(ras2.class_rastr2, t.class_rastr2))) end, c' +
        'ase when (isnull(ras3.class_rastr3, t.class_rastr3)) <> '#39#39' then ' +
        'concat('#39'-'#39', rtrim(isnull(ras3.class_rastr3, t.class_rastr3))) en' +
        'd, case when (isnull(ras4.class_rastr4, t.class_rastr4)) <> '#39#39' t' +
        'hen concat('#39'-'#39', rtrim(isnull(ras4.class_rastr4, t.class_rastr4))' +
        ') end) as habilitacao,'
      #9'   count(1) as quant,'
      #9'   count(res.cod_barra) as qtd_bloq'
      'from ('
      
        'select '#39'011000 - TRASEIRO BOI'#39' as cod_prod, '#39'ABATE'#39' as tipo, dat' +
        'a_abate, cod_tras as cod_barra, class_rastr, class_rastr2, class' +
        '_rastr3, class_rastr4 from t_pescarcaca with (nolock)  where dat' +
        'a_sai_tras is null and sexo = 1'
      'union all'
      
        'select '#39'011016 - TRASEIRO VACA'#39' as cod_prod, '#39'ABATE'#39' as tipo, da' +
        'ta_abate, cod_tras as cod_barra, class_rastr, class_rastr2, clas' +
        's_rastr3, class_rastr4 from t_pescarcaca with (nolock) where dat' +
        'a_sai_tras is null and sexo = 2'
      'union all'
      
        'select '#39'011001 - DIANTEIRO BOI'#39' as cod_prod, '#39'ABATE'#39' as tipo, da' +
        'ta_abate, cod_tras as cod_barra, class_rastr, class_rastr2, clas' +
        's_rastr3, class_rastr4 from t_pescarcaca with (nolock) where dat' +
        'a_sai_diant is null and sexo = 1'
      'union all'
      
        'select '#39'011017 - DIANTEIRO VACA'#39' as cod_prod, '#39'ABATE'#39' as tipo, d' +
        'ata_abate, cod_tras as cod_barra, class_rastr, class_rastr2, cla' +
        'ss_rastr3, class_rastr4 from t_pescarcaca with (nolock) where da' +
        'ta_sai_diant is null and sexo = 2'
      'union all'
      
        'select '#39'011004 - PONTA AGULHA BOI'#39' as cod_prod, '#39'ABATE'#39' as tipo,' +
        ' data_abate, cod_tras as cod_barra, class_rastr, class_rastr2, c' +
        'lass_rastr3, class_rastr4 from t_pescarcaca with (nolock) where ' +
        'data_sai_pa is null and sexo = 1'
      'union all'
      
        'select '#39'011010 - PONTA AGULHA VACA'#39' as cod_prod, '#39'ABATE'#39' as tipo' +
        ', data_abate, cod_tras as cod_barra, class_rastr, class_rastr2, ' +
        'class_rastr3, class_rastr4 from t_pescarcaca with (nolock) where' +
        ' data_sai_pa is null and sexo = 2'
      ') t'
      
        'left join t_historico_rastr  ras1 with (nolock) on ras1.cod_tras' +
        ' = t.cod_barra'
      
        'left join t_historico_rastr2 ras2 with (nolock) on ras2.cod_tras' +
        ' = t.cod_barra'
      
        'left join t_historico_rastr3 ras3 with (nolock) on ras3.cod_tras' +
        ' = t.cod_barra'
      
        'left join t_historico_rastr4 ras4 with (nolock) on ras4.cod_tras' +
        ' = t.cod_barra'
      
        'left join t_reserva_estoque_it res with (nolock) on res.cod_barr' +
        'a = t.cod_barra and res.situacao = 1'
      
        'group by t.cod_prod, t.tipo, cast(data_abate as date), concat(rt' +
        'rim(isnull(ras1.class_rastr, t.class_rastr)), case when (isnull(' +
        'ras2.class_rastr2, t.class_rastr2)) <> '#39#39' then concat('#39'-'#39', rtrim' +
        '(isnull(ras2.class_rastr2, t.class_rastr2))) end, case when (isn' +
        'ull(ras3.class_rastr3, t.class_rastr3)) <> '#39#39' then concat('#39'-'#39', r' +
        'trim(isnull(ras3.class_rastr3, t.class_rastr3))) end, case when ' +
        '(isnull(ras4.class_rastr4, t.class_rastr4)) <> '#39#39' then concat('#39'-' +
        #39', rtrim(isnull(ras4.class_rastr4, t.class_rastr4))) end)'
      ''
      ''
      'union all'
      ''
      
        'select t.cod_prod, t.tipo, t.data_abate, t.habilitacao, count (1' +
        ') as quant, 0 as qtd_bloq from ('
      
        'select case when pes.cod_prod = '#39'011000'#39' then '#39'011000 - TRASEIRO' +
        ' BOI'#39
      
        '            when pes.cod_prod = '#39'011001'#39' then '#39'011001 - DIANTEIR' +
        'O DE BOI'#39
      #9#9#9'when pes.cod_prod = '#39'011004'#39' then '#39'011004 - PONTA AGULHA BOI'#39
      
        #9#9#9'when pes.cod_prod = '#39'011010'#39' then '#39'011010 - PONTA AGULHA VACA' +
        #39
      #9#9#9'when pes.cod_prod = '#39'011016'#39' then '#39'011016 - TRASEIRO VACA'#39
      
        #9#9#9'when pes.cod_prod = '#39'011017'#39' then '#39'011017 - DIANTEIRO VACA'#39' e' +
        'nd as cod_prod,'
      '       '#39'TENDAL'#39' as tipo,'
      #9'   cast(pes.data_abate as date) as data_abate,'
      
        #9'   concat(rtrim(ras.class_rastr), case when ras.class_rastr2 <>' +
        ' '#39#39' then concat('#39'-'#39', rtrim(ras.class_rastr2)) end, case when ras' +
        '.class_rastr3 <> '#39#39' then concat('#39'-'#39', rtrim(ras.class_rastr3)) en' +
        'd, case when ras.class_rastr4 <> '#39#39' then concat('#39'-'#39', rtrim(ras.c' +
        'lass_rastr4)) end) as habilitacao'
      'from pescaixa pes with (nolock)'
      
        'inner join rastreabilidade_pesagem ras with (nolock) on ras.cod_' +
        'barra = pes.cod_barra'
      
        'and pes.cod_prod in ('#39'011000'#39','#39'011001'#39','#39'011004'#39','#39'011010'#39','#39'011016' +
        #39','#39'011017'#39')'
      'and pes.data_sai is null'
      ') t'
      'group by t.cod_prod, t.tipo, t.data_abate, t.habilitacao'
      ') x'
      
        'where @abate = case when @abate <> '#39#39' then x.data_abate else @ab' +
        'ate end'
      
        'and x.habilitacao = case when @hab <> '#39#39' then @hab else x.habili' +
        'tacao end'
      
        'and ((x.cod_prod like case when @diant = '#39'S'#39' then '#39'%DIANTEIRO%'#39' ' +
        'else '#39#39' end) or'
      
        '(x.cod_prod like case when @tras = '#39'S'#39' then '#39'%TRASEIRO%'#39' else '#39#39 +
        ' end) or'
      
        '(x.cod_prod like case when @pa = '#39'S'#39' then '#39'%PONTA%'#39' else '#39#39' end)' +
        ')'
      ''
      'order by 1, 3, 4')
    Params = <
      item
        DataType = ftUnknown
        Name = 'abate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hab'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diant'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tras'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pa'
        ParamType = ptUnknown
      end>
    Left = 200
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'abate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hab'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diant'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tras'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pa'
        ParamType = ptUnknown
      end>
    object ZQuery1cod_prod: TWideStringField
      FieldName = 'cod_prod'
      ReadOnly = True
      Size = 26
    end
    object ZQuery1tipo: TWideStringField
      FieldName = 'tipo'
      ReadOnly = True
      Size = 6
    end
    object ZQuery1data_abate: TWideStringField
      FieldName = 'data_abate'
      ReadOnly = True
    end
    object ZQuery1habilitacao: TWideStringField
      FieldName = 'habilitacao'
      ReadOnly = True
      Size = 23
    end
    object ZQuery1quant: TIntegerField
      FieldName = 'quant'
      ReadOnly = True
    end
    object ZQuery1qtd_bloq: TIntegerField
      Alignment = taCenter
      FieldName = 'qtd_bloq'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 232
    Top = 360
  end
end
