unit Tela_Entrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,Unit_Funcoes,
  Vcl.Mask;

type
  TTela_Entrada = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtVaga: TEdit;
    btnSalvarEntrada: TButton;
    lbHoraEntrada: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtPlacaEntrada: TMaskEdit;
    procedure btnSalvarEntradaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  telaEntrada: TTela_Entrada;

implementation

{$R *.dfm}

uses Tela_Estacionamento;

procedure TTela_Entrada.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #27 Then Close; //ESC fecha form
end;

procedure TTela_Entrada.btnSalvarEntradaClick(Sender: TObject);
var
  hora:Ttime;
  i, nVagas: integer;
begin

    lbHoraEntrada.Visible := true;
    lbHoraEntrada.Caption := TimeToStr(Time);
    hora := time;
    nVagas := StrToInt(txtVaga.Text);

    if (txtPlacaEntrada.TextHint = '') then
    begin
      ShowMessage('Informe uma placa');
      txtPlacaEntrada.SetFocus;
      exit;
    end;

    if (txtVaga.Text = '') then
    begin
      ShowMessage('Informe uma vaga');
      txtVaga.SetFocus;
      exit;
    end;

    if (nVagas > 20) then
    begin
      ShowMessage('At� vaga 20');
      txtVaga.SetFocus;
      exit;
    end;

      for i := 1 to estacionamento.getCont do  //valida se a placa j� esta estacionada
        if (estacionamento.carros[i].placa=txtPlacaEntrada.Text)and
           (estacionamento.carros[i].horaSaida=strtotime('00:00:00')) then
        begin
          ShowMessage('Placa j� est� no estacionamento');
          txtVaga.SetFocus;
          exit;
        end;

   try
      Estacionamento.inserirPlaca
      (txtPlacaEntrada.Text, hora, StrToInt(txtVaga.Text) , 1);
   finally
      txtPlacaEntrada.Clear;
      txtVaga.Clear;
      txtPlacaEntrada.SetFocus;
      if not (assigned(telaEstacionamento)) then
      begin
         telaEstacionamento := TUnit_Tela_Estacionamento.Create(Self);
         telaEstacionamento.Show;    //Chama o form de tela de estacionamento
      end;
   end;

end;
end.
