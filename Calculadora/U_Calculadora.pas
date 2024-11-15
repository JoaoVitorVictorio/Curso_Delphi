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
    lb_operador: TLabel;
    lb_igual: TLabel;
    lb_numero1: TLabel;
    lb_numero2: TLabel;
    btn_apagar: TButton;
    btn_limpar: TButton;
    lb_resultado: TLabel;
    btn_c: TButton;
    btn_porcentagem: TButton;
    procedure btn_subtrairClick(Sender: TObject);
    procedure btn_somarClick(Sender: TObject);
    procedure btn_multiplicarClick(Sender: TObject);
    procedure btn_dividirClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_apagarClick(Sender: TObject);
    procedure btn_0Click(Sender: TObject);
    procedure btn_pontoClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure btn_cClick(Sender: TObject);
    procedure btn_porcentagemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_calculadora: Tfrm_calculadora;

implementation

{$R *.fmx}

procedure Tfrm_calculadora.btn_0Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_numero1.Text := lb_numero1.Text + '0';
  end
  else
  begin
    lb_numero2.Text := lb_numero2.Text + '0';
  end;
end;

procedure Tfrm_calculadora.btn_1Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_numero1.Text := lb_numero1.Text + '1';
  end
  else
  begin
    lb_numero2.Text := lb_numero2.Text + '1';
  end;
end;

procedure Tfrm_calculadora.btn_2Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_numero1.Text := lb_numero1.Text + '2';
  end
  else
  begin
    lb_numero2.Text := lb_numero2.Text + '2';
  end;
end;

procedure Tfrm_calculadora.btn_3Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_numero1.Text := lb_numero1.Text + '3';
  end
  else
  begin
    lb_numero2.Text := lb_numero2.Text + '3';
  end;
end;

procedure Tfrm_calculadora.btn_4Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_numero1.Text := lb_numero1.Text + '4';
  end
  else
  begin
    lb_numero2.Text := lb_numero2.Text + '4';
  end;
end;

procedure Tfrm_calculadora.btn_5Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_numero1.Text := lb_numero1.Text + '5';
  end
  else
  begin
    lb_numero2.Text := lb_numero2.Text + '5';
  end;
end;

procedure Tfrm_calculadora.btn_6Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_numero1.Text := lb_numero1.Text + '6';
  end
  else
  begin
    lb_numero2.Text := lb_numero2.Text + '6';
  end;
end;

procedure Tfrm_calculadora.btn_7Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_numero1.Text := lb_numero1.Text + '7';
  end
  else
  begin
    lb_numero2.Text := lb_numero2.Text + '7';
  end;
end;

procedure Tfrm_calculadora.btn_8Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_numero1.Text := lb_numero1.Text + '8';
  end
  else
  begin
    lb_numero2.Text := lb_numero2.Text + '8';
  end;
end;

procedure Tfrm_calculadora.btn_9Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_numero1.Text := lb_numero1.Text + '9';
  end
  else
  begin
    lb_numero2.Text := lb_numero2.Text + '9';
  end;
end;

procedure Tfrm_calculadora.btn_apagarClick(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_numero1.Text := copy(lb_numero1.Text, 1, length(lb_numero1.Text) - 1);
  end
  else
  begin
    lb_numero2.Text := copy(lb_numero2.Text, 1, length(lb_numero2.Text) - 1);
  end;
end;

procedure Tfrm_calculadora.btn_cClick(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_numero1.Text := '';
  end
  else
  begin
    lb_numero2.Text := '';
  end;
end;

procedure Tfrm_calculadora.btn_dividirClick(Sender: TObject);
begin
  lb_operador.Text := '/';
  btn_somar.Enabled := true;
  btn_dividir.Enabled := false;
  btn_multiplicar.Enabled := true;
  btn_subtrair.Enabled := true;
end;

procedure Tfrm_calculadora.btn_porcentagemClick(Sender: TObject);
begin
  lb_operador.Text := '%';
  btn_somar.Enabled := true;
  btn_dividir.Enabled := true;
  btn_multiplicar.Enabled := true;
  btn_subtrair.Enabled := true;
end;

procedure Tfrm_calculadora.btn_igualClick(Sender: TObject);
var
  n1, n2: Double;
begin
  n1 := StrToFloat(lb_numero1.Text);
  n2 := StrToFloat(lb_numero2.Text);

  // Efetuando o c�lculo
  if (lb_operador.Text = '+') then
  begin
    lb_resultado.Text := FloatToStr(n1 + n2);
  end
  else if (lb_operador.Text = '-') then
  begin
    lb_resultado.Text := FloatToStr(n1 - n2);
  end
  else if (lb_operador.Text = '*') then
  begin
    lb_resultado.Text := FloatToStr(n1 * n2);
  end
  else if (lb_operador.Text = '/') then
  begin
    if n2 <> 0 then
      lb_resultado.Text := FloatToStr(n1 / n2)
    else
      lb_resultado.Text := 'Erro: Divis�o por zero!';
  end
  else if (lb_operador.Text = '%') then
  begin
    lb_resultado.Text := FloatToStr(n1 * (n2 / 100));
  end
  else
  begin
    lb_resultado.Text := 'Operador inv�lido!';
  end;

  lb_operador.Text := '.'; // Resetando operador
  lb_numero1.Text := ''; // Resetando n�mero 1
  lb_numero2.Text := ''; // Resetando n�mero 2

  // Habilitando bot�es
  btn_somar.Enabled := true;
  btn_dividir.Enabled := true;
  btn_multiplicar.Enabled := true;
  btn_subtrair.Enabled := true;
end;

procedure Tfrm_calculadora.btn_limparClick(Sender: TObject);
begin
  lb_operador.Text := '.';
  lb_numero1.Text := '';
  lb_numero2.Text := '';
  lb_resultado.Text := '';

  btn_somar.Enabled := true;
  btn_dividir.Enabled := true;
  btn_multiplicar.Enabled := true;
  btn_subtrair.Enabled := true;
end;

procedure Tfrm_calculadora.btn_multiplicarClick(Sender: TObject);
begin
  lb_operador.Text := '*';
  btn_somar.Enabled := true;
  btn_dividir.Enabled := true;
  btn_multiplicar.Enabled := false;
  btn_subtrair.Enabled := true;
end;

procedure Tfrm_calculadora.btn_pontoClick(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_numero1.Text := lb_numero1.Text + ',';
  end
  else
  begin
    lb_numero2.Text := lb_numero2.Text + ',';
  end;
end;


procedure Tfrm_calculadora.btn_somarClick(Sender: TObject);
begin
  lb_operador.Text := '+';
  btn_somar.Enabled := false;
  btn_dividir.Enabled := true;
  btn_multiplicar.Enabled := true;
  btn_subtrair.Enabled := true;
end;

procedure Tfrm_calculadora.btn_subtrairClick(Sender: TObject);
begin
  lb_operador.Text := '-';
  btn_somar.Enabled := true;
  btn_dividir.Enabled := true;
  btn_multiplicar.Enabled := true;
  btn_subtrair.Enabled := false;
end;

end.
