unit Unit_Funcoes;

interface

   type TCarros = record
    placa : string[8];
    horaEntrada : string;
    horaSaida : string;
    vaga : integer;
    vagaAberta : byte;
end;
  TEstacionamento = class
  private
     carros:array[1..100] of TCarros;
   public
    cont: integer;
    constructor create;

end;
  var
     Estacionamento: TEstacionamento;
implementation

{ TEstacionamento }

constructor TEstacionamento.create;
begin
 cont :=0;
end;

end.
