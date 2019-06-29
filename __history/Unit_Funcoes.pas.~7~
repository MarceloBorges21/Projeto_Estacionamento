unit Unit_Funcoes;

interface
uses DateUtils;

   type TCarros = record
    placa : string[8];
    horaEntrada : TTime;
    horaSaida : TTime;
    vaga : integer;
    vagaAberta : integer;
   end;

  TEstacionamento = class
    cont: integer;
    carros:array[1..100] of TCarros;

   public
    constructor create;
    procedure incCont;
    function getCont:integer;
    function getCarro(i:integer):TCarros;
    procedure inserirPlaca(placa:string; horaEntrada, horaSaida: TTime; vaga,vagaAberta:Integer);

end;

var
   Estacionamento: TEstacionamento;

implementation

{ TEstacionamento }

uses Tela_Estacionamento;

constructor TEstacionamento.create;
begin
 cont :=0;
end;

function TEstacionamento.getCarro(i: integer): TCarros;
begin
     result := carros[i];
end;

function TEstacionamento.getCont: integer;
begin
   result := cont;
end;

procedure TEstacionamento.incCont;
begin
  {}
  inc(cont);

end;

{
esse metodo abaixo faz o cadastro de do carro
}
procedure TEstacionamento.inserirPlaca(placa:string; horaEntrada, horaSaida: TTime; vaga,vagaAberta:Integer);
begin
     incCont;
     carros[getCont].placa := placa;
     carros[getCont].horaEntrada := horaEntrada;
     carros[getCont].horaSaida := horaSaida;
     carros[getCont].vaga := vaga;
     carros[getCont].vagaAberta := vagaAberta;
end;

end.
