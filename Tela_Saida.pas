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
    procedure txtPlacaSaidaKeyPress(Sender: TObject; var Key: Char);

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
        if (Estacionamento.carros[i].placa = aux) then
        begin
           result:=i;
        end;
      end;
end;

procedure TTela_Saida.txtPlacaSaidaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #27 Then Close; //ESC fecha form
end;

procedure TTela_Saida.btnRegistrarClick(Sender: TObject);
var
i:integer;
tempototal:TTime;
h,m,s,mili:word;
erro:bool;
begin
    if (txtPlacaSaida.Text = '   -    ') then
    begin
      ShowMessage('Informe uma placa');
      txtPlacaSaida.SetFocus;
      exit;
    end;
    try
     try
      i := getRegistroPelaPlaca(txtPlacaSaida.Text);
       lbHoraSaida.Visible := true;
       lbHoraEntrada_formsaida.Caption := TimeToStr(Estacionamento.carros[i].HoraEntrada);
       tempototal:= time - Estacionamento.carros[i].HoraEntrada;
       decodetime(tempototal,h,m,s,mili);
       Estacionamento.carros[i].HoraSaida:=Time;
       lbHoraSaida.Caption := TimeToStr(Estacionamento.carros[i].HoraSaida);
       Estacionamento.carros[i].vagaaberta:=0;
       erro:= false;
     except
      erro:= true;
      exit;
     end;
     finally
        if erro then
        begin
          ShowMessage('Placa não esta no estacionamento');
        end
        else
        begin
          txtPlacaSaida.Clear;
          txtPlacaSaida.SetFocus;
          if not assigned(telaEstacionamento) then   telaEstacionamento := TUnit_Tela_Estacionamento.Create(Self);
            telaEstacionamento.Show;        //Chama o form de tela de estacionamento
        end;
    end;
end;

procedure TTela_Saida.btnSalvarClick(Sender: TObject);
var
i:integer;
tempototal:TTime;
h,m,s,mili:word;
begin
    if (txtPlacaSaida.Text = '   -    ') then
    begin
      ShowMessage('Informe uma placa');
      txtPlacaSaida.SetFocus;
      exit;
    end ;

    try
      i := getRegistroPelaPlaca(txtPlacaSaida.Text);
      lbHoraSaida.Visible := true;
      lbHoraEntrada_formsaida.Visible := true;
      lbValorPagar.Visible := true;
      lbHoraEntrada_formsaida.Caption := TimeToStr(Estacionamento.carros[i].HoraEntrada);
      tempototal:= time - Estacionamento.carros[i].HoraEntrada;
      decodetime(tempototal,h,m,s,mili);
      lbHoraSaida.Caption := TimeToStr(Time);
      if ((m)<>0) then
      begin
        h:=h+1;
      end;
      lbValorPagar.Caption:= IntToStr(5+(h*2))+ ',00';
    except
      ShowMessage('Placa não esta no estacionamento');
    end;
end;
end.
