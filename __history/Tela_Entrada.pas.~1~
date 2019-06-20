unit Tela_Entrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TTela_Entrada = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtPlacaEntrada: TEdit;
    txtVaga: TEdit;
    btnSalvarEntrada: TButton;
    lbHoraEntrada: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  telaEntrada: TTela_Entrada;

implementation

{$R *.dfm}

procedure TTela_Entrada.FormCreate(Sender: TObject);
begin
    lbHoraEntrada.Visible := true;
    lbHoraEntrada.Caption := TimeToStr(Time);
end;

end.
