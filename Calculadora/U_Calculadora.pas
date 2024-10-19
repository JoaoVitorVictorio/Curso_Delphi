unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Math.Vectors, FMX.Controls3D,
  FMX.Layers3D, FMX.Layouts, FMX.Edit;

type
  Tfrm_calculadora = class(TForm)
    btn_0: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_dividir: TButton;
    btn_igual: TButton;
    btn_multiplicar: TButton;
    btn_ponto: TButton;
    btn_somar: TButton;
    btn_subtrair: TButton;
    caixa_botoes: TLayout;
    caixa_topo: TLayout;
    txt_numero1: TEdit;
    lb_operador: TLabel;
    txt_numero2: TEdit;
    procedure btn_subtrairClick(Sender: TObject);
    procedure btn_somarClick(Sender: TObject);
    procedure btn_multiplicarClick(Sender: TObject);
    procedure btn_dividirClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_calculadora: Tfrm_calculadora;

implementation

{$R *.fmx}

procedure Tfrm_calculadora.btn_dividirClick(Sender: TObject);
begin
  lb_operador.Text := '/';
end;

procedure Tfrm_calculadora.btn_igualClick(Sender: TObject);
  var n1, n2 : double;
begin
  n1 := StrToFloat(txt_numero1.Text);
  n2 := StrToFloat(txt_numero1.Text);
end;

procedure Tfrm_calculadora.btn_multiplicarClick(Sender: TObject);
begin
  lb_operador.Text := '*';
end;

procedure Tfrm_calculadora.btn_somarClick(Sender: TObject);
begin
  lb_operador.Text := '+';
end;

procedure Tfrm_calculadora.btn_subtrairClick(Sender: TObject);
begin
  lb_operador.Text := '-';
end;

end.
