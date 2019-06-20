object Tela_Entrada: TTela_Entrada
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tela Entrada'
  ClientHeight = 274
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
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
  object txtPlacaEntrada: TEdit
    Left = 84
    Top = 21
    Width = 121
    Height = 32
    MaxLength = 8
    TabOrder = 0
  end
  object txtVaga: TEdit
    Left = 79
    Top = 133
    Width = 121
    Height = 32
    MaxLength = 2
    TabOrder = 1
  end
  object btnSalvarEntrada: TButton
    Left = 227
    Top = 223
    Width = 107
    Height = 33
    Caption = 'Salvar'
    TabOrder = 2
  end
end
