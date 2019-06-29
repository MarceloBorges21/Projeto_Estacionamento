object Tela_Entrada: TTela_Entrada
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tela Entrada'
  ClientHeight = 232
  ClientWidth = 278
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 24
  object Label1: TLabel
    Left = 20
    Top = 24
    Width = 58
    Height = 24
    Caption = 'Placa:'
  end
  object Label2: TLabel
    Left = 20
    Top = 80
    Width = 153
    Height = 24
    Caption = 'Hora de entrada:'
  end
  object Label3: TLabel
    Left = 20
    Top = 136
    Width = 53
    Height = 24
    Caption = 'Vaga:'
  end
  object lbHoraEntrada: TLabel
    Left = 189
    Top = 80
    Width = 5
    Height = 24
    Visible = False
  end
  object Label4: TLabel
    Left = 84
    Top = 54
    Width = 81
    Height = 17
    Caption = 'Ex.: abc-1234'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 79
    Top = 171
    Width = 30
    Height = 19
    Caption = '1-20'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object txtVaga: TEdit
    Left = 79
    Top = 133
    Width = 58
    Height = 32
    MaxLength = 2
    NumbersOnly = True
    TabOrder = 1
  end
  object btnSalvarEntrada: TButton
    Left = 125
    Top = 192
    Width = 107
    Height = 33
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = btnSalvarEntradaClick
  end
  object txtPlacaEntrada: TMaskEdit
    Left = 84
    Top = 21
    Width = 101
    Height = 32
    EditMask = 'LLL-0000;1;_'
    MaxLength = 8
    TabOrder = 0
    Text = '   -    '
  end
end
