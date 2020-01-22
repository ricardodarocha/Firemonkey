unit UViewProduto;

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
   UCadProduto, FireDAC.Stan.StorageJSON, FMX.Objects, uDados, uBuscar;

type

  TfrmCadProduto = class(TForm)
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
    EdiCodigo: TEdit;
    btnNovo: TButton;
    Rectangle1: TRectangle;
    Image2: TImage;
    btnInfo: TButton;
    ePessoa: TEdit;
    Label1: TLabel;
    btnBuscarPessoa: TEditButton;
    eNomePessoa: TLabel;
    btnBuscar: TButton;
    ClearEditButton1: TClearEditButton;
    SearchEditButton1: TSearchEditButton;
    floatbuttom: TCircle;
    Label59: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtmSalvarClick(Sender: TObject);
    procedure BtmAbrirClick(Sender: TObject);
    procedure BuscarPeloCodigo(Sender: TObject);
    procedure Mostrar;
    procedure Atribuir;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BuscarAgora(Sender: TObject);
    procedure BuscarPessoa(Sender: TObject);
    procedure Info(Sender: TObject);
  private
    Produto: TCadProduto;
  public

  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

resourcestring
  NomeArquivo = 'Produtos.JSON';

{$R *.fmx}
{ TCadastro }

procedure TfrmCadProduto.Atribuir;
begin

  Produto.CodBarras := ECpf.Text;
  Produto.Nome := ENome.Text;
  Produto.Codigo := StrtoInt(ECodigo.Text);

end;

procedure TfrmCadProduto.BtmAbrirClick(Sender: TObject);
begin
  Produto.abrir(StrToIntDef(EdiCodigo.Text, 0));
  Mostrar;
end;

procedure TfrmCadProduto.BtmSalvarClick(Sender: TObject);

begin
  Atribuir;
  Produto.salvar;

end;

procedure TfrmCadProduto.BuscarAgora(Sender: TObject);
begin
  frmBuscar.Tab.TabIndex := BUSCAPRODUTO;
  frmBuscar.Showmodal;

  Produto.abrir; //Abre o registro que foi escolhido, sem passar o codigo
  Mostrar;
end;

procedure TfrmCadProduto.btnNovoClick(Sender: TObject);
begin
  Produto.Novo;
  Mostrar;
end;

procedure TfrmCadProduto.BuscarPessoa(Sender: TObject);
begin
  frmBuscar.Tab.TabIndex := BUSCAPESSOA;
  frmBuscar.Showmodal;

  Produto.Pessoa.abrir; //Abre o registro que foi escolhido, sem passar o codigo
  Mostrar;
end;

procedure TfrmCadProduto.BuscarPeloCodigo(Sender: TObject);
begin
  BtmAbrirClick(Sender);
end;

procedure TfrmCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dados.TabPessoa.SaveToFile(NomeArquivo,sfJSON);
end;

procedure TfrmCadProduto.FormCreate(Sender: TObject);
begin
  Produto := TCadProduto.create(Dados.TabProduto,Dados.TabPessoa);
  Produto.Codigo := 0;
  Produto.Nome := '';
  Produto.CodBarras := '';
end;

procedure TfrmCadProduto.FormShow(Sender: TObject);
begin
  if FileExists(NomeArquivo) then
   dados.TabPessoa.LoadFromFile(NomeArquivo,sfJSON);

  Produto.abrir;
  Mostrar;
end;

procedure TfrmCadProduto.Info(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add('Responsável pelo produto ' + Produto.Codigo.ToString + ' - ' + Produto.Nome);
  Memo1.Lines.Add(Produto.Pessoa.Codigo.ToString + ' - ' + Produto.Pessoa.Nome);
  Memo1.Lines.Add('CPF: ' + Produto.Pessoa.CPF);
end;

procedure TfrmCadProduto.Mostrar;
begin

  ECodigo.Text := IntToStr(Produto.Codigo);
  ENome.Text := Produto.Nome;
  ECpf.Text := Produto.CodBarras;

  ePessoa.Text := Produto.Pessoa.Codigo.ToString;
  eNomePessoa.Text := Produto.Pessoa.Nome;
end;

end.
