unit Tela_Entrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,Unit_Funcoes;

type
  TTela_Entrada = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtPlacaEntrada: TEdit;
    txtVaga: TEdit;
    btnSalvarEntrada: TButton;
    lbHoraEntrada: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarEntradaClick(Sender: TObject);
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



procedure TTela_Entrada.btnSalvarEntradaClick(Sender: TObject);
var
  hora:Ttime;
  nVagas: integer;
begin
    lbHoraEntrada.Visible := true;
    lbHoraEntrada.Caption := TimeToStr(Time);
    hora := time;
    nVagas := StrToInt(txtVaga.Text);

    if (txtPlacaEntrada.Text = '') then
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

   try
   Estacionamento.inserirPlaca
   (txtPlacaEntrada.Text, hora,hora , StrToInt(txtVaga.Text) , 1);
   finally
    if not assigned(telaEstacionamento) then   telaEstacionamento := TUnit_Tela_Estacionamento.Create(Self);
    telaEstacionamento.Show;        //Chama o form de tela de estacionamento
    end;

end;

procedure TTela_Entrada.FormCreate(Sender: TObject);
begin
    lbHoraEntrada.Visible := true;
    lbHoraEntrada.Caption := TimeToStr(Time);
end;

end.
