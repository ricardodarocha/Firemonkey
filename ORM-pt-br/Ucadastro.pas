unit Ucadastro;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FMX.ScrollBox, FMX.Memo, FMX.Layouts, FireDAC.Stan.StorageBin, System.Rtti,
  System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  UCadPessoa, UCadProduto, FireDAC.Stan.StorageJSON;

type

  TfrmCadastro = class(TForm)
    LToolbar: TLayout;
    BtmSalvar: TButton;
    BtmAbrir: TButton;
    LHeader: TLayout;
    LbTitulo: TLabel;
    LFooter: TLayout;
    ScrollBox1: TScrollBox;
    LBody: TLayout;
    CPF: TLabel;
    Nome: TLabel;
    ECpf: TEdit;
    ENome: TEdit;
    Memo1: TMemo;
    Codigo: TLabel;
    ECodigo: TEdit;
    TabPessoa: TFDMemTable;
    TabPessoaCodigo: TIntegerField;
    TabPessoaNome: TStringField;
    TabPessoaCPF: TStringField;
    EdiCodigo: TEdit;
    TabProduto: TFDMemTable;
    TabProdutoCodigo: TIntegerField;
    TabProdutoNome: TStringField;
    TabProdutoCodBarras: TStringField;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    btnNovo: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BtmSalvarClick(Sender: TObject);
    procedure BtmAbrirClick(Sender: TObject);
    procedure EdiCodigoChange(Sender: TObject);
    procedure Mostrar;
    procedure Atribuir;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    Pessoa: TCadPessoa;
  public
  
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.fmx}
{ TCadastro }

procedure TfrmCadastro.Atribuir;
begin

  Pessoa.CPF := ECpf.Text;
  Pessoa.Nome := ENome.Text;
  Pessoa.Codigo := StrtoInt(ECodigo.Text);

end;

procedure TfrmCadastro.BtmAbrirClick(Sender: TObject);
begin
  Pessoa.abrir(StrToIntDef(EdiCodigo.Text, 0));
  Mostrar;
end;

procedure TfrmCadastro.BtmSalvarClick(Sender: TObject);

begin
  Atribuir;
  Pessoa.salvar;

end;

procedure TfrmCadastro.btnNovoClick(Sender: TObject);
begin
  Pessoa.Novo;
  Mostrar;
end;

procedure TfrmCadastro.EdiCodigoChange(Sender: TObject);
begin
  BtmAbrirClick(Sender);
end;

procedure TfrmCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TabPessoa.SaveToFile('Registros.JSON',sfJSON);
end;

procedure TfrmCadastro.FormCreate(Sender: TObject);
begin
  Pessoa := TCadPessoa.create(TabPessoa);
  Pessoa.Codigo := 0;
  Pessoa.Nome := '';
  Pessoa.CPF := '';
end;

procedure TfrmCadastro.FormShow(Sender: TObject);
begin
  if FileExists('Registros.JSON') then

   TabPessoa.LoadFromFile('Registros.JSON',sfJSON);
end;

procedure TfrmCadastro.Mostrar;
begin

  ECodigo.Text := IntToStr(Pessoa.Codigo);
  ENome.Text := Pessoa.Nome;
  ECpf.Text := Pessoa.CPF;

end;

end.
