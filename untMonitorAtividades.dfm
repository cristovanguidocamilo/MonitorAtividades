object frmMonitorAbate: TfrmMonitorAbate
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Monitoramento do Abate  (F12 - Programar Quantidade Aviso)'
  ClientHeight = 821
  ClientWidth = 974
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
    Top = 407
    Width = 157
    Height = 19
    Caption = 'Monitor da Balan'#231'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 423
    Top = 14
    Width = 208
    Height = 19
    Caption = 'Monitor Rastr e Classifica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 615
    Top = 583
    Width = 96
    Height = 19
    Caption = 'Monitor DIF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 423
    Top = 583
    Width = 102
    Height = 19
    Caption = 'Quantidades'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 14
    Width = 308
    Height = 19
    Caption = 'Monitor de Mapeamento das C'#226'maras'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 8
    Top = 350
    Width = 185
    Height = 17
    Alignment = taCenter
    DataField = 'periodo'
    DataSource = DataSource6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 331
    Width = 173
    Height = 13
    Alignment = taCenter
    Caption = 'Abertura e Fechamento da C'#226'mara:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 199
    Top = 331
    Width = 184
    Height = 13
    Alignment = taCenter
    Caption = 'Primeiro e '#218'ltimo Hor'#225'rio das Carca'#231'as'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 199
    Top = 350
    Width = 218
    Height = 17
    Alignment = taCenter
    DataField = 'periodo'
    DataSource = DataSource7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 394
    Top = 404
    Width = 23
    Height = 22
    Hint = 'Log da Balan'#231'a'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
      333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
      C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
      F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
      F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
      00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
      3333333373FF7333333333333000333333333333377733333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    OnClick = SpeedButton1Click
  end
  object Label9: TLabel
    Left = 799
    Top = 583
    Width = 99
    Height = 19
    Caption = 'Tuberculose'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 832
    Top = 8
    Width = 131
    Height = 25
    Caption = 'Iniciar Monitoramento'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 432
    Width = 409
    Height = 364
    Hint = 
      'Animais que passaram pela balan'#231'a do Abate e ainda n'#227'o foram Map' +
      'eados'
    DataSource = DataSource1
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
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'seq_abate'
        Title.Caption = 'Seq Abate'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'banda'
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
        FieldName = 'class_rastr'
        Title.Caption = 'Class Rastr'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'class_rastr2'
        Title.Caption = 'Subtipo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num_lote'
        Title.Caption = 'Lote'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_pes'
        Title.Caption = 'Data Pesagem'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 423
    Top = 39
    Width = 540
    Height = 538
    Hint = 'Animais Lan'#231'ados pelo Rastr_Abate (Calha) e Classifica'
    DataSource = DataSource2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid2DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'sequencial'
        Title.Alignment = taCenter
        Title.Caption = 'Seq'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num_lote'
        Title.Alignment = taCenter
        Title.Caption = 'Lote'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sexo'
        Title.Alignment = taCenter
        Title.Caption = 'Sexo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idade'
        Title.Alignment = taCenter
        Title.Caption = 'Idade R'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_matur'
        Title.Alignment = taCenter
        Title.Caption = 'Idade C'
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
        Title.Caption = 'Class R'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'class_rastr_1'
        Title.Alignment = taCenter
        Title.Caption = 'Class C'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'class_rastr2'
        Title.Alignment = taCenter
        Title.Caption = 'Subtipo R'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'class_rastr2_1'
        Title.Alignment = taCenter
        Title.Caption = 'Subtipo C'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_rastr'
        Title.Alignment = taCenter
        Title.Caption = 'D.I.A.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 802
    Width = 974
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'DESENVOLVIDO POR CRISTOVAN CAMILO - TI - JUNHO / 2018'
        Width = 400
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Text = 'ATUALIZA'#199#195'O 2019.10.05-1'
        Width = 100
      end>
  end
  object DBGrid3: TDBGrid
    Left = 615
    Top = 608
    Width = 178
    Height = 187
    Hint = 'Animais que passaram pela Calha e N'#227'o Foram Classificados'
    DataSource = DataSource3
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'sequencial'
        Title.Alignment = taCenter
        Title.Caption = 'Seq'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num_lote'
        Title.Alignment = taCenter
        Title.Caption = 'Lote'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sexo'
        Title.Alignment = taCenter
        Title.Caption = 'Sexo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idade'
        Title.Alignment = taCenter
        Title.Caption = 'Idade'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 43
        Visible = True
      end>
  end
  object DBGrid4: TDBGrid
    Left = 423
    Top = 608
    Width = 186
    Height = 187
    Hint = 'Quantidades Totais por Habilita'#231#227'o'
    DataSource = DataSource5
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'class_rastr'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'class_rastr2'
        Title.Alignment = taCenter
        Title.Caption = 'SubTipo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 48
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'quant'
        Title.Alignment = taCenter
        Title.Caption = 'Quant'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 63
        Visible = True
      end>
  end
  object DBGrid5: TDBGrid
    Left = 8
    Top = 39
    Width = 185
    Height = 290
    DataSource = DataSource6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid5DrawColumnCell
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
        FieldName = 'class_rastr'
        Title.Alignment = taCenter
        Title.Caption = 'Class'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'class_rastr2'
        Title.Alignment = taCenter
        Title.Caption = 'Sub'
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
        Width = 44
        Visible = True
      end>
  end
  object DBGrid6: TDBGrid
    Left = 199
    Top = 39
    Width = 218
    Height = 290
    DataSource = DataSource7
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'num_lote'
        Title.Alignment = taCenter
        Title.Caption = 'Lote'
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
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_trilho'
        Title.Alignment = taCenter
        Title.Caption = 'Trilho'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'class_rastr'
        Title.Alignment = taCenter
        Title.Caption = 'Class'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'class_rastr2'
        Title.Alignment = taCenter
        Title.Caption = 'Sub'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object CheckBox1: TCheckBox
    Left = 328
    Top = 16
    Width = 89
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Pause Refresh'
    TabOrder = 8
  end
  object Panel1: TPanel
    Left = 255
    Top = 373
    Width = 133
    Height = 49
    BevelInner = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    object Label7: TLabel
      Left = 8
      Top = 4
      Width = 109
      Height = 13
      Caption = 'Velocidade '#8773' da N'#243'ria:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 8
      Top = 23
      Width = 113
      Height = 30
      Hint = 'Velocidade Calculada sobre as '#218'ltimas 2 Pesagens da Balan'#231'a'
      Alignment = taCenter
      DataField = 'velocidade'
      DataSource = DataSource8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DBGrid7: TDBGrid
    Left = 799
    Top = 608
    Width = 167
    Height = 188
    DataSource = DataSource9
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'animais'
        Title.Alignment = taCenter
        Title.Caption = 'Animais'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object CheckBox2: TCheckBox
    Left = 531
    Top = 585
    Width = 78
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Mostrar Lote'
    TabOrder = 11
    OnClick = CheckBox2Click
  end
  object DBGrid8: TDBGrid
    Left = 423
    Top = 608
    Width = 186
    Height = 188
    DataSource = DataSource10
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'num_lote'
        Title.Alignment = taCenter
        Title.Caption = 'Lote'
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
        Title.Caption = 'Tipo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'class_rastr2'
        Title.Alignment = taCenter
        Title.Caption = 'Sub'
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
        Width = 46
        Visible = True
      end>
  end
  object ZQuery1: TZQuery
    Connection = frmMenu.ZConnection1
    SQL.Strings = (
      'declare @data datetime = cast(getdate() as date)'
      ''
      'select seq_abate,'
      '       banda, '
      #9'     class_rastr,'
      #9'     class_rastr2,'
      '       num_lote,'
      '       data_pes'
      '  from t_pescarcaca with(nolock)'
      ' where data_abate = @data'
      '   and status not in ('#39'O'#39','#39'G'#39','#39'T'#39')'
      '   and cod_camara = '#39#39' '
      ' order by data_pes')
    Params = <>
    Left = 273
    Top = 447
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
    object ZQuery1class_rastr: TWideStringField
      Alignment = taCenter
      FieldName = 'class_rastr'
      Size = 5
    end
    object ZQuery1class_rastr2: TWideStringField
      Alignment = taCenter
      FieldName = 'class_rastr2'
      Size = 5
    end
    object ZQuery1num_lote: TWideStringField
      Alignment = taCenter
      FieldName = 'num_lote'
      Required = True
      Size = 2
    end
    object ZQuery1data_pes: TDateTimeField
      Alignment = taCenter
      FieldName = 'data_pes'
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 273
    Top = 495
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 57
    Top = 503
  end
  object ZQuery2: TZQuery
    Connection = frmMenu.ZConnection1
    SQL.Strings = (
      'declare @data datetime = cast(getdate() as date)'
      ''
      'select ras.sequencial,'
      '       ras.num_lote,'
      '       ras.sexo,'
      #9'     ras.idade,'
      #9'     clas.cod_matur,'
      #9'     ras.class_rastr,'
      #9'     clas.class_rastr,'
      #9'     ras.class_rastr2,'
      '  '#9'   clas.class_rastr2,'
      #9'     ras.cod_rastr,'
      #9'     dia.cod_rastr'
      '  from t_ab_sequencial_rastr ras    with (nolock)'
      
        '  left join t_classifica_abate clas with (nolock) on clas.seq_do' +
        '_dia = ras.sequencial'
      
        '                                                 and clas.data_a' +
        'bate = ras.data'
      
        '  left join t_rastrea_dia dia       with (nolock) on ras.data   ' +
        '     = dia.data'
      
        #9#9#9#9#9#9#9#9#9'        '#9'         and ras.num_lote                = dia' +
        '.num_lote'
      
        #9#9#9#9#9#9#9#9#9#9'                 and ras.cod_rastr               = dia' +
        '.cod_rastr'
      ' where ras.data = @data'
      '   and ras.sequencial > isnull((select top 1 seq_abate'
      
        '                                   from t_pescarcaca with (noloc' +
        'k)'
      '                                  where data_abate = @data'
      #9#9#9#9#9'                        order by seq_abate desc),0)'
      ' order by ras.sequencial')
    Params = <>
    Left = 880
    Top = 72
    object ZQuery2sequencial: TSmallintField
      Alignment = taCenter
      FieldName = 'sequencial'
      Required = True
    end
    object ZQuery2num_lote: TWideStringField
      Alignment = taCenter
      FieldName = 'num_lote'
      Size = 2
    end
    object ZQuery2sexo: TWideStringField
      Alignment = taCenter
      FieldName = 'sexo'
      Size = 2
    end
    object ZQuery2idade: TSmallintField
      Alignment = taCenter
      FieldName = 'idade'
    end
    object ZQuery2cod_matur: TWideStringField
      Alignment = taCenter
      FieldName = 'cod_matur'
      Size = 1
    end
    object ZQuery2class_rastr: TWideStringField
      Alignment = taCenter
      FieldName = 'class_rastr'
      Size = 5
    end
    object ZQuery2class_rastr_1: TWideStringField
      Alignment = taCenter
      FieldName = 'class_rastr_1'
      Size = 5
    end
    object ZQuery2class_rastr2: TWideStringField
      Alignment = taCenter
      FieldName = 'class_rastr2'
      Size = 5
    end
    object ZQuery2class_rastr2_1: TWideStringField
      Alignment = taCenter
      FieldName = 'class_rastr2_1'
      Size = 5
    end
    object ZQuery2cod_rastr: TWideStringField
      Alignment = taCenter
      FieldName = 'cod_rastr'
      Size = 16
    end
    object ZQuery2cod_rastr_1: TWideStringField
      FieldName = 'cod_rastr_1'
      Size = 16
    end
  end
  object DataSource2: TDataSource
    DataSet = ZQuery2
    Left = 880
    Top = 120
  end
  object ZQuery3: TZQuery
    Connection = frmMenu.ZConnection1
    SQL.Strings = (
      'declare @data datetime = cast(getdate() as date)'
      ''
      'select ras.sequencial,'
      '       ras.num_lote,'
      '       ras.sexo,'
      '       ras.idade'
      '  from t_ab_sequencial_rastr ras with (nolock)'
      
        '  left join t_classifica_abate clas with (nolock) on clas.seq_do' +
        '_dia = ras.sequencial'
      
        '                                                 and clas.data_a' +
        'bate = ras.data'
      
        '  left join t_pescarcaca pes with (nolock) on pes.seq_abate = ra' +
        's.sequencial'
      '                                and pes.data_abate = ras.data'
      ' where ras.data = @data'
      
        '   and ras.sequencial <= isnull((select max(seq_do_dia)  from t_' +
        'classifica_abate with (nolock)'
      '                                  where data_abate = @data'
      '                            and class_rastr is not null'
      '                            ),0)'
      '   and clas.class_rastr is null'
      '   and pes.status is null'
      ' order by ras.sequencial')
    Params = <>
    Left = 703
    Top = 684
    object ZQuery3sequencial: TSmallintField
      Alignment = taCenter
      FieldName = 'sequencial'
      Required = True
    end
    object ZQuery3num_lote: TWideStringField
      Alignment = taCenter
      FieldName = 'num_lote'
      Size = 2
    end
    object ZQuery3sexo: TWideStringField
      Alignment = taCenter
      FieldName = 'sexo'
      Size = 2
    end
    object ZQuery3idade: TSmallintField
      Alignment = taCenter
      FieldName = 'idade'
    end
  end
  object DataSource3: TDataSource
    DataSet = ZQuery3
    Left = 735
    Top = 684
  end
  object ZQuery4: TZQuery
    Connection = frmMenu.ZConnection1
    SQL.Strings = (
      'declare @data datetime = cast(getdate() as date)'
      ''
      'select t.qtdlote - t.qtdabate as restam,'
      '       t.qtdlote,'
      #9'     t.qtdabate'
      '  from (select (select sum(quant_lote)'
      #9#9'              from t_pedprogit with (nolock)'
      '                 where cast(data_abate as DATE) = @data )'
      #9#9'           qtdlote,'
      #9'             convert(numeric (8,1),count(*))/2 qtdabate,'
      #9#9#9'         sum (peso) peso_abate'
      #9#9'      from t_pescarcaca pes with (nolock)'
      '         where cast(data_abate as DATE) = @data ) t')
    Params = <>
    Left = 680
    Top = 392
    object ZQuery4restam: TFloatField
      FieldName = 'restam'
      ReadOnly = True
    end
    object ZQuery4qtdlote: TFloatField
      FieldName = 'qtdlote'
      ReadOnly = True
    end
    object ZQuery4qtdabate: TFloatField
      FieldName = 'qtdabate'
      ReadOnly = True
    end
  end
  object DataSource4: TDataSource
    DataSet = ZQuery4
    Left = 744
    Top = 392
  end
  object ZQuery5: TZQuery
    Connection = frmMenu.ZConnection1
    SQL.Strings = (
      'declare @data datetime = cast(getdate() as date)'
      ''
      
        'select max(sequencial) as sequencial from t_ab_sequencial_rastr ' +
        'ras with (nolock)'
      'where data =  @data')
    Params = <>
    Left = 760
    Top = 328
    object ZQuery5sequencial: TSmallintField
      FieldName = 'sequencial'
      ReadOnly = True
    end
  end
  object ZQuery6: TZQuery
    Connection = frmMenu.ZConnection1
    SQL.Strings = (
      'declare @data datetime = cast(getdate() as date)'
      ''
      'select class_rastr,'
      '       isnull(class_rastr2,'#39#39') as class_rastr2,'
      '       count(1)/2 as quant'
      '  from t_pescarcaca'
      ' where data_abate = @data'
      ' group by class_rastr, isnull(class_rastr2,'#39#39')'
      ' order by class_rastr, isnull(class_rastr2,'#39#39')'
      '')
    Params = <>
    Left = 447
    Top = 660
    object ZQuery6class_rastr: TWideStringField
      FieldName = 'class_rastr'
      Size = 5
    end
    object ZQuery6class_rastr2: TWideStringField
      FieldName = 'class_rastr2'
      Size = 5
    end
    object ZQuery6quant: TIntegerField
      FieldName = 'quant'
      ReadOnly = True
    end
  end
  object DataSource5: TDataSource
    DataSet = ZQuery6
    Left = 487
    Top = 660
  end
  object ZQuery7: TZQuery
    Connection = frmMenu.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'declare @data datetime = cast(getdate() as date)'
      ''
      'select pes.cod_camara,'
      '       pes.class_rastr,'
      #9'     pes.class_rastr2,'
      #9'     count (1)/2 as quant,'
      
        '       periodo = Concat((select top 1 Convert(Char(8),cast(abert' +
        'uramin as time),108) from dbo.F_INFO_CAMARA_PROC(min(mapa.data_e' +
        'nt),pes.cod_camara)), '#39' - '#39',(select top 1 Convert(Char(8),cast(f' +
        'echamentomax as time),108) from dbo.F_INFO_CAMARA_PROC(max(mapa.' +
        'data_ent),pes.cod_camara)))'
      '  from t_pescarcaca pes with(nolock)'
      
        ' inner join t_mapa_camaras_abate mapa on mapa.cod_carcaca = pes.' +
        'cod_tras'
      ' where pes.data_abate = @data'
      '   and cast(mapa.data_ent as date) = @data'
      '   and pes.class_rastr not in ('#39'DIF'#39')'
      '   and pes.cod_camara <> '#39#39
      ' group by pes.cod_camara, pes.class_rastr, pes.class_rastr2'
      ' order by pes.cod_camara, pes.class_rastr, pes.class_rastr2'
      ''
      ''
      '')
    Params = <>
    Left = 48
    Top = 104
    object ZQuery7cod_camara: TWideStringField
      Alignment = taCenter
      FieldName = 'cod_camara'
      Size = 3
    end
    object ZQuery7class_rastr: TWideStringField
      Alignment = taCenter
      FieldName = 'class_rastr'
      Size = 5
    end
    object ZQuery7class_rastr2: TWideStringField
      Alignment = taCenter
      FieldName = 'class_rastr2'
      Size = 5
    end
    object ZQuery7quant: TIntegerField
      Alignment = taCenter
      FieldName = 'quant'
      ReadOnly = True
    end
    object ZQuery7periodo: TWideStringField
      FieldName = 'periodo'
      ReadOnly = True
      Size = 19
    end
  end
  object DataSource6: TDataSource
    DataSet = ZQuery7
    Left = 104
    Top = 104
  end
  object ZQuery8: TZQuery
    Connection = frmMenu.ZConnection1
    SQL.Strings = (
      'declare @data datetime = cast(getdate() as date)'
      ''
      'select pes.cod_camara,'
      '       pes.seq_abate,'
      #9'     cam.cod_trilho,'
      '  '#9'   pes.class_rastr,'
      #9'     pes.class_rastr2,'
      '       pes.num_lote,'
      
        '       periodo = (select Concat(Convert(Char(8),cast(min(data_en' +
        't) as time),108), '#39' - '#39', Convert(Char(8),cast(max(data_ent) as t' +
        'ime),108)) from t_mapa_camaras_abate where data_mapa = @data and' +
        ' cod_camara = cam.cod_camara)'
      '  from t_mapa_camaras_abate cam'
      
        ' inner join t_pescarcaca pes on cam.data_mapa = pes.data_abate a' +
        'nd cam.cod_carcaca = pes.cod_tras'
      ' where cam.data_mapa = @data'
      ' order by pes.seq_abate desc')
    Params = <>
    MasterFields = 'cod_camara'
    MasterSource = DataSource6
    LinkedFields = 'cod_camara'
    Left = 328
    Top = 56
    object ZQuery8cod_camara: TWideStringField
      Alignment = taCenter
      FieldName = 'cod_camara'
      Size = 3
    end
    object ZQuery8seq_abate: TIntegerField
      Alignment = taCenter
      FieldName = 'seq_abate'
    end
    object ZQuery8cod_trilho: TWideStringField
      Alignment = taCenter
      FieldName = 'cod_trilho'
      Size = 4
    end
    object ZQuery8class_rastr: TWideStringField
      FieldName = 'class_rastr'
      Size = 5
    end
    object ZQuery8class_rastr2: TWideStringField
      FieldName = 'class_rastr2'
      Size = 5
    end
    object ZQuery8num_lote: TWideStringField
      FieldName = 'num_lote'
      Required = True
      Size = 2
    end
    object ZQuery8periodo: TWideStringField
      FieldName = 'periodo'
      ReadOnly = True
      Size = 19
    end
  end
  object DataSource7: TDataSource
    DataSet = ZQuery8
    Left = 360
    Top = 56
  end
  object ZQuery9: TZQuery
    Connection = frmMenu.ZConnection1
    SQL.Strings = (
      'declare @data datetime = cast(getdate() as date)'
      ''
      
        'select (3600 / (datediff(ss, min(cast(data_pes as time)), max(ca' +
        'st(data_pes as time))) * 2 )) as velocidade'
      '  from (select top 2 data_pes'
      '          from t_pescarcaca with (nolock)'
      '         where data_abate = @data'
      '         order by data_pes desc) t')
    Params = <>
    Left = 224
    Top = 392
    object ZQuery9velocidade: TIntegerField
      FieldName = 'velocidade'
      ReadOnly = True
    end
  end
  object DataSource8: TDataSource
    DataSet = ZQuery9
    Left = 256
    Top = 392
  end
  object ZQuery10: TZQuery
    Connection = frmMenu.ZConnection1
    SQL.Strings = (
      'declare @data datetime = cast(getdate() as date)'
      ''
      'select cod_camara,'
      #9'     count(1)/2 as animais'
      '  from t_pescarcaca'
      ' where data_abate = @data'
      '   and num_lote in (select distinct lote'
      '                      from t_pedprogit'
      '                     where cod_pedcom in (select cod_pedcom'
      '                                            from t_pedcompbov'
      '                                           where abate = @data'
      
        #9#9#9#9#9'                                   and cod_faz in (select d' +
        'istinct ped.cod_faz'
      
        #9#9#9#9#9#9#9#9#9#9'                                           from t_pedc' +
        'ompbov ped'
      
        #9#9#9#9#9#9#9#9#9#9'                                          inner join t' +
        '_pedprogit prog on prog.cod_pedcom = ped.cod_pedcom'
      
        #9#9#9#9#9#9#9#9#9#9'                                          where prog.d' +
        'ata_abate = @data'
      
        #9#9#9#9#9#9#9#9#9#9'                                            and prog.l' +
        'ote in (select distinct num_lote'
      
        #9#9#9#9#9#9#9#9#9#9'   '#9#9#9#9'                                               ' +
        '       from t_pescarcaca_dif'
      
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'                                                 ' +
        '    where data_abate = @data'
      
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'                                                 ' +
        '      and cod_motivo in (select cod_motivo'
      
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'   '#9#9#9#9'                                         ' +
        '                       from t_motivos_dif'
      
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'                                            ' +
        '                     where desc_motivo like '#39'%TUBERCULOSE%'#39'))))'
      ') and class_rastr <> '#39'DIF'#39
      'group by cod_camara'
      'order by cod_camara')
    Params = <>
    Left = 824
    Top = 712
    object ZQuery10cod_camara: TWideStringField
      FieldName = 'cod_camara'
      Size = 3
    end
    object ZQuery10animais: TIntegerField
      FieldName = 'animais'
      ReadOnly = True
    end
  end
  object DataSource9: TDataSource
    DataSet = ZQuery10
    Left = 856
    Top = 712
  end
  object ZQuery11: TZQuery
    Connection = frmMenu.ZConnection1
    SQL.Strings = (
      'declare @data datetime = cast(getdate() as date)'
      ''
      'select num_lote,'
      '       class_rastr,'
      '       isnull(class_rastr2, '#39#39') as class_rastr2,'
      '       count(1)/2 as quant'
      '  from t_pescarcaca'
      ' where data_abate = @data'
      ' group by num_lote, class_rastr, isnull(class_rastr2, '#39#39')')
    Params = <>
    Left = 440
    Top = 736
    object ZQuery11num_lote: TWideStringField
      Alignment = taCenter
      FieldName = 'num_lote'
      Required = True
      Size = 2
    end
    object ZQuery11class_rastr: TWideStringField
      Alignment = taCenter
      FieldName = 'class_rastr'
      Size = 5
    end
    object ZQuery11class_rastr2: TWideStringField
      Alignment = taCenter
      FieldName = 'class_rastr2'
      ReadOnly = True
      Size = 5
    end
    object ZQuery11quant: TIntegerField
      Alignment = taCenter
      FieldName = 'quant'
      ReadOnly = True
    end
  end
  object DataSource10: TDataSource
    DataSet = ZQuery11
    Left = 472
    Top = 736
  end
end