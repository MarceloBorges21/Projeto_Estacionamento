unit Tela_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TTela_Principal1 = class(TForm)
    MainMenu1: TMainMenu;
    mnEntrada: TMenuItem;
    mnEstacionamento: TMenuItem;
    mnSaida: TMenuItem;
    mnListar: TMenuItem;
    Image1: TImage;
    procedure mnEntradaClick(Sender: TObject);
    procedure mnEstacionamentoClick(Sender: TObject);
    procedure mnSaidaClick(Sender: TObject);
    procedure mnListarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Tela_Principal1: TTela_Principal1;

implementation

{$R *.dfm}

uses Tela_Entrada, Tela_Estacionamento, Tela_Saida, Unit_Funcoes, Tella_Listar;

procedure TTela_Principal1.mnEntradaClick(Sender: TObject);
begin
     if not assigned(telaEntrada) then   telaEntrada := TTela_Entrada.Create(Self);
     telaEntrada.Show;
end;


procedure TTela_Principal1.mnEstacionamentoClick(Sender: TObject);
begin
   if not assigned(telaEstacionamento) then   telaEstacionamento := TUnit_Tela_Estacionamento.Create(Self);
    telaEstacionamento.Show;
end;


procedure TTela_Principal1.mnListarClick(Sender: TObject);
begin
   if not assigned(telaListar) then   telaListar := TTela_Listar.Create(Self);
    telaListar.Show;
end;

procedure TTela_Principal1.mnSaidaClick(Sender: TObject);
begin
    if not assigned(TelaSaida) then   TelaSaida := TTela_Saida.Create(Self);
    TelaSaida.Show;
end;

end.
