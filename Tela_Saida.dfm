object Tela_Saida: TTela_Saida
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tela Saida'
  ClientHeight = 271
  ClientWidth = 313
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
    Left = 8
    Top = 27
    Width = 58
    Height = 24
    Caption = 'Placa:'
  end
  object lbHo: TLabel
    Left = 8
    Top = 122
    Width = 108
    Height = 24
    Caption = 'Hora Saida:'
  end
  object lbValoraPagar: TLabel
    Left = 8
    Top = 171
    Width = 131
    Height = 24
    Caption = 'Valor a Pagar:'
  end
  object lbValorPagar: TLabel
    Left = 185
    Top = 171
    Width = 119
    Height = 24
    Caption = 'lbValorPagar'
    Visible = False
  end
  object lbHoraEntrada: TLabel
    Left = 8
    Top = 75
    Width = 131
    Height = 24
    Caption = 'Hora Entrada:'
  end
  object lbHoraEntrada_formsaida: TLabel
    Left = 162
    Top = 75
    Width = 5
    Height = 24
    Visible = False
  end
  object lbHoraSaida: TLabel
    Left = 144
    Top = 122
    Width = 5
    Height = 24
    Visible = False
  end
  object Label2: TLabel
    Left = 153
    Top = 171
    Width = 26
    Height = 24
    Caption = 'R$'
  end
  object txtPlacaSaida: TEdit
    Left = 72
    Top = 24
    Width = 129
    Height = 32
    MaxLength = 8
    TabOrder = 0
  end
  object btnSalvar: TButton
    Left = 185
    Top = 222
    Width = 105
    Height = 41
    Caption = 'Salvar'
    TabOrder = 1
  end
  object btnRegistrar: TButton
    Left = 215
    Top = 24
    Width = 90
    Height = 32
    Caption = 'Registrar'
    TabOrder = 2
  end
end
