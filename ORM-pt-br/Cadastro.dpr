program Cadastro;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMenu in 'uMenu.pas' {frmMenu},
  UCadPessoa in 'UCadPessoa.pas',
  UViewProduto in 'UViewProduto.pas' {frmCadProduto},
  UCadProduto in 'UCadProduto.pas',
  UViewCliente in 'UViewCliente.pas' {frmCadastro},
  uBuscar in 'uBuscar.pas' {frmBuscar},
  uDados in 'uDados.pas' {Dados: TDataModule},
  UPaiCadastro in 'UPaiCadastro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDados, Dados);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmCadProduto, frmCadProduto);
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.CreateForm(TfrmBuscar, frmBuscar);
  Application.Run;
end.
