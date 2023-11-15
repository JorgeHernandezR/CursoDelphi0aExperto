object FPrimerPrograma: TFPrimerPrograma
  Left = 0
  Top = 0
  Caption = 'FPrimerPrograma'
  ClientHeight = 242
  ClientWidth = 527
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LbSaludar: TLabel
    Left = 8
    Top = 8
    Width = 583
    Height = 39
    Caption = 'Bienvenido al primer programa en Delphi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object BSaludar: TButton
    Left = 8
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Saludar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BSaludarClick
  end
end
