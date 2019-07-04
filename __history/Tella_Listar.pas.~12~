unit Tella_Listar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TTela_Listar = class(TForm)
    mmListar: TMemo;
    mmHistorico: TMemo;
    Label1: TLabel;
    Label2: TLabel;

    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  telaListar: TTela_Listar;

implementation

{$R *.dfm}

uses Unit_Funcoes;

procedure TTela_Listar.FormActivate(Sender: TObject);
var
  i:integer;
  tempototal:TTime;
  h,m,s,mili:word;
begin
    mmHistorico.Clear;
    mmListar.Clear;
    for i := 1 to Estacionamento.getCont do
  begin

    if ( TimeToStr(Estacionamento.carros[i].HoraSaida) <> '00:00:00' ) then
    begin
      mmHistorico.Lines.Add('placa: '+estacionamento.carros[i].placa);
      mmHistorico.Lines.Add('Entrada: '+timetostr(estacionamento.carros[i].HoraEntrada));

      tempototal:= estacionamento.carros[i].HoraSaida - Estacionamento.carros[i].HoraEntrada;
      decodetime(tempototal,h,m,s,mili);
      if ((m)<>0) then
        begin
         h:=h+1;
        end;
      mmHistorico.Lines.Add('Saída: '+timetostr(estacionamento.carros[i].HoraSaida));
      mmHistorico.Lines.Add('Valor Pago: '+inttostr(5+(h*2)));
      mmHistorico.Lines.Add('-------------------------');
    end;


  end;
   for i := 1 to Estacionamento.getCont do
  begin

    if ( TimeToStr(Estacionamento.carros[i].HoraSaida) = '00:00:00' ) then
    begin
      mmListar.Lines.Add('placa: '+ estacionamento.carros[i].placa);
      mmListar.Lines.Add('Entrada: '+ timetostr(estacionamento.carros[i].HoraEntrada));
      mmListar.Lines.Add('Vaga: ' + IntToStr(estacionamento.carros[i].vaga));
      tempototal:= estacionamento.carros[i].HoraSaida - Estacionamento.carros[i].HoraEntrada;
      decodetime(tempototal,h,m,s,mili);
      if ((m)<>0) then
        begin
         h:=h+1;
        end;
        mmListar.Lines.Add('-------------------------');
    end;



  end;
end;



procedure TTela_Listar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #27 Then Close; //ESC fecha form
end;

end.
