object Fproblemas: TFproblemas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Resolucion de problemas'
  ClientHeight = 719
  ClientWidth = 1360
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MenuPrincipal
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 19
  object PaginaPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 860
    Height = 719
    ActivePage = TabConsola
    Align = alClient
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    ExplicitWidth = 1360
    object TabConsola: TTabSheet
      Caption = 'Consola de Mensajes'
      ExplicitWidth = 1326
      object mProblemas: TMemo
        Left = 0
        Top = 0
        Width = 826
        Height = 711
        Align = alClient
        Lines.Strings = (
          'mProblemas')
        TabOrder = 0
        ExplicitLeft = 64
        ExplicitTop = 32
        ExplicitWidth = 185
        ExplicitHeight = 89
      end
    end
  end
  object Contenido: TPanel
    Left = 860
    Top = 0
    Width = 500
    Height = 719
    Align = alRight
    Caption = 'Contenido'
    TabOrder = 1
    ExplicitLeft = 1039
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 498
      Height = 56
      Align = alTop
      Caption = 'Ingrese un n'#250'mero de cuatro cifras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object sbCalcularSumaCuatroDigitosF1: TSpeedButton
        Left = 272
        Top = 18
        Width = 112
        Height = 36
        Align = alRight
        Caption = 'Calcular suma-F1'
        OnClick = sbCalcularSumaCuatroDigitosF1Click
        ExplicitLeft = 383
        ExplicitTop = 17
      end
      object sbCalcularSumaCuatroDigitosF2: TSpeedButton
        Left = 384
        Top = 18
        Width = 112
        Height = 36
        Align = alRight
        Caption = 'Calcular suma-F2'
        OnClick = sbCalcularSumaCuatroDigitosF2Click
        ExplicitLeft = 400
        ExplicitTop = 21
      end
      object edNumero4C: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 21
        Width = 264
        Height = 30
        Align = alClient
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '1234'
        ExplicitWidth = 388
      end
    end
  end
  object MenuPrincipal: TMainMenu
    Left = 688
    Top = 65512
    object Archivo1: TMenuItem
      Caption = 'Archivo'
      object Problemas1: TMenuItem
        Caption = 'Problemas'
        object problema1: TMenuItem
          Caption = 'Suma digitos n'#250'meros de cuatro cifras-forma1'
        end
        object problema1b: TMenuItem
          Caption = 'Suma de los digitos del numero de cuatro cifras-forma2'
        end
      end
    end
  end
end
