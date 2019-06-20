unit Tela_Saida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TTela_Saida = class(TForm)
    Label1: TLabel;
    lbHo: TLabel;
    lbValoraPagar: TLabel;
    txtPlacaSaida: TEdit;
    btnBuscar: TButton;
    lbValorPagar: TLabel;
    lbHoraEntrada: TLabel;
    lbHoraEntrada_formsaida: TLabel;
    lbHoraSaida: TLabel;
    btnSalvar: TButton;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaSaida: TTela_Saida;

implementation

{$R *.dfm}

procedure TTela_Saida.FormCreate(Sender: TObject);
begin
    lbHoraSaida.Visible := true;
    lbHoraSaida.Caption := TimeToStr(Time);
end;

end.
