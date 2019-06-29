unit Tela_Saida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Unit_Funcoes, Tela_Estacionamento,
  Vcl.Mask;

type
  TTela_Saida = class(TForm)
    Label1: TLabel;
    lbHo: TLabel;
    lbValoraPagar: TLabel;
    btnRegistrar: TButton;
    lbValorPagar: TLabel;
    lbHoraEntrada: TLabel;
    lbHoraEntrada_formsaida: TLabel;
    lbHoraSaida: TLabel;
    btnSalvar: TButton;
    Label2: TLabel;
    txtPlacaSaida: TMaskEdit;
    procedure btnRegistrarClick(Sender: TObject);
    function getRegistroPelaPlaca(aux: string):integer;
    procedure btnSalvarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaSaida: TTela_Saida;

implementation

{$R *.dfm}

function TTela_Saida.getRegistroPelaPlaca(aux: string):integer;
var
    i:integer;
begin
    for  i:= 1 to Estacionamento.getCont do
      begin
        if (Estacionamento.carros[i].placa=aux) then
        begin
           result:=i;
        end;
      end;
end;

procedure TTela_Saida.btnRegistrarClick(Sender: TObject);
var
i:integer;
tempototal:TTime;
h,m,s,mili:word;
begin

     if (txtPlacaSaida.Text = '') then
    begin
      ShowMessage('Informe uma placa');
      txtPlacaSaida.SetFocus;
      exit;
    end;

     try
      i := getRegistroPelaPlaca(txtPlacaSaida.Text);
       lbHoraSaida.Visible := true;
       lbHoraEntrada_formsaida.Caption := TimeToStr(Estacionamento.carros[i].HoraEntrada);
       tempototal:= time - Estacionamento.carros[i].HoraEntrada;
       decodetime(tempototal,h,m,s,mili);
       Estacionamento.carros[i].HoraSaida:=Time;
       lbHoraSaida.Caption := TimeToStr(Estacionamento.carros[i].HoraSaida);
       Estacionamento.carros[i].vagaaberta:=0;
     finally
         if not assigned(telaEstacionamento) then   telaEstacionamento := TUnit_Tela_Estacionamento.Create(Self);
          telaEstacionamento.Show;        //Chama o form de tela de estacionamento
     end;
end;

procedure TTela_Saida.btnSalvarClick(Sender: TObject);
var
i:integer;
tempototal:TTime;
h,m,s,mili:word;
begin
  i := getRegistroPelaPlaca(txtPlacaSaida.Text);
    lbHoraSaida.Visible := true;
    lbHoraEntrada_formsaida.Visible := true;
    lbValoraPagar.Visible := true;
    lbHoraEntrada_formsaida.Caption := TimeToStr(Estacionamento.carros[i].HoraEntrada);
    tempototal:= time - Estacionamento.carros[i].HoraEntrada;
    decodetime(tempototal,h,m,s,mili);
    lbHoraSaida.Caption := TimeToStr(Time);
    if ((m)<>0) then
    begin
      h:=h+1;
    end;
    lbValorPagar.Caption:= '10' ;
end;
          //5+(h*2)
end.
