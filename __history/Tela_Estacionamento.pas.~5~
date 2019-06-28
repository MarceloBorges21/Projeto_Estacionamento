unit Tela_Estacionamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TUnit_Tela_Estacionamento = class(TForm)
    Image1: TImage;
    Vaga1: TLabel;
    Vaga2: TLabel;
    Vaga3: TLabel;
    Vaga4: TLabel;
    Vaga5: TLabel;
    Vaga6: TLabel;
    Vaga7: TLabel;
    Vaga8: TLabel;
    Vaga9: TLabel;
    Vaga10: TLabel;
    Vaga11: TLabel;
    Vaga12: TLabel;
    Vaga13: TLabel;
    Vaga14: TLabel;
    Vaga15: TLabel;
    Vaga16: TLabel;
    Vaga17: TLabel;
    Vaga18: TLabel;
    Vaga19: TLabel;
    Vaga20: TLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure setCorVaga(vaga, cor:integer);
  end;

var
  telaEstacionamento: TUnit_Tela_Estacionamento;

implementation

{$R *.dfm}

uses Unit_Funcoes;


procedure TUnit_Tela_Estacionamento.FormActivate(Sender: TObject);
var
   i:integer;
begin
     for i := 1 to Estacionamento.getCont do
        if (Estacionamento.getCarro(i).vagaAberta = 0) then
          setCorVaga(Estacionamento.getCarro(i).vaga, 0)
        else
            setCorVaga(Estacionamento.getCarro(i).vaga, 1);
end;

procedure TUnit_Tela_Estacionamento.setCorVaga(vaga,cor: integer);
begin
     case (cor) of
        1: begin
               case vaga of
                   1: Vaga1.Font.Color := clRed;
                   2: Vaga2.Font.Color := clRed;
                   3: Vaga3.Font.Color := clRed;
                   4: Vaga4.Font.Color := clRed;
                   5: Vaga5.Font.Color := clRed;
                   6: Vaga6.Font.Color := clRed;
                   7: Vaga7.Font.Color := clRed;
                   8: Vaga8.Font.Color := clRed;
                   9: Vaga9.Font.Color := clRed;
                   10: Vaga10.Font.Color := clRed;
                   11: Vaga11.Font.Color := clRed;
                   12: Vaga12.Font.Color := clRed;
                   13: Vaga13.Font.Color := clRed;
                   14: Vaga14.Font.Color := clRed;
                   15: Vaga15.Font.Color := clRed;
                   16: Vaga16.Font.Color := clRed;
                   17: Vaga17.Font.Color := clRed;
                   18: Vaga18.Font.Color := clRed;
                   19: Vaga19.Font.Color := clRed;
                   20: Vaga20.Font.Color := clRed;
               end;
           end;
        0: begin
               case vaga of
                   1: Vaga1.Font.Color := clGreen;
                   2: Vaga2.Font.Color := clGreen;
                   3: Vaga3.Font.Color := clGreen;
                   4: Vaga4.Font.Color := clGreen;
                   5: Vaga5.Font.Color := clGreen;
                   6: Vaga6.Font.Color := clGreen;
                   7: Vaga7.Font.Color := clGreen;
                   8: Vaga8.Font.Color := clGreen;
                   9: Vaga9.Font.Color := clGreen;
                   10: Vaga10.Font.Color := clGreen;
                   11: Vaga11.Font.Color := clGreen;
                   12: Vaga12.Font.Color := clGreen;
                   13: Vaga13.Font.Color := clGreen;
                   14: Vaga14.Font.Color := clGreen;
                   15: Vaga15.Font.Color := clGreen;
                   16: Vaga16.Font.Color := clGreen;
                   17: Vaga17.Font.Color := clGreen;
                   18: Vaga18.Font.Color := clGreen;
                   19: Vaga19.Font.Color := clGreen;
                   20: Vaga20.Font.Color := clGreen;
               end;
           end;
        end;
end;

end.
