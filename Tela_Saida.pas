unit Tela_Saida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Unit_Funcoes, Tela_Estacionamento;

type
  TTela_Saida = class(TForm)
    Label1: TLabel;
    lbHo: TLabel;
    lbValoraPagar: TLabel;
    txtPlacaSaida: TEdit;
    btnRegistrar: TButton;
    lbValorPagar: TLabel;
    lbHoraEntrada: TLabel;
    lbHoraEntrada_formsaida: TLabel;
    lbHoraSaida: TLabel;
    btnSalvar: TButton;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnRegistrarClick(Sender: TObject);
    function getRegistroPelaPlaca(aux: string):integer;
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
placa: string;
tempototal:TTime;
h,m,s,mili:word;
begin

     if (txtPlacaSaida.Text = '') then
    begin
      ShowMessage('Informe uma placa');
      txtPlacaSaida.SetFocus;
      exit;
    end;

    i := getRegistroPelaPlaca(txtPlacaSaida.Text);
    lbHoraSaida.Visible := true;
    lbHoraEntrada_formsaida.Caption := TimeToStr(Estacionamento.carros[i].HoraEntrada);
    lbHoraSaida.Caption := TimeToStr(Time);
    tempototal:= time - Estacionamento.carros[i].HoraEntrada;
    decodetime(tempototal,h,m,s,mili);

    if ((m)<>0) then
    begin
      h:=h+1;
    end;

     try
       lbValorPagar.Caption:= IntToStr(5+(h*2));
       Estacionamento.carros[i].vagaaberta:=0;
     finally

         if not assigned(telaEstacionamento) then   telaEstacionamento := TUnit_Tela_Estacionamento.Create(Self);
          telaEstacionamento.Show;        //Chama o form de tela de estacionamento
     end;
end;

procedure TTela_Saida.FormCreate(Sender: TObject);
begin
    lbHoraSaida.Visible := true;
    lbHoraSaida.Caption := TimeToStr(Time);
end;


end.
