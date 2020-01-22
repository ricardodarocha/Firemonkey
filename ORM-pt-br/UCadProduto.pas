unit UCadProduto;

interface

uses UPaiCadastro, uCadPessoa, FireDAC.Comp.Client, uDados;

type
  TCadProduto = Class(TCadastro)

    Nome: String;
    CodBarras: String;
    Pessoa: TCadPessoa;

    constructor Create(fTabelaProduto, fTabelaPessoa: TFdMemtable); reintroduce;

    /// <remarks>
    ///   Agora o código não é mais obrigatório
    /// </remarks>
    procedure abrir(aCodigo: integer = 0); override;
    procedure salvar; override;
  private
    procedure novo;
  end;

implementation

uses
  System.SysUtils;

procedure TCadProduto.abrir(aCodigo: integer);

begin
  inherited; {veja o código que eu criei no PaiCadastro}

  Nome := fDados.fieldbyname('Nome').AsString;
  CodBarras := fDados.fieldbyname('CodBarras').AsString;

end;

constructor TCadProduto.Create(fTabelaProduto, fTabelaPessoa: TFdMemtable);
begin
  inherited Create(fTabelaProduto);
  Pessoa := TCadPessoa.create(fTabelaPessoa);
end;

procedure TCadProduto.novo;
begin
  inherited;
  Codigo := 0;
  CodBarras := '';
  Nome := '';
end;

procedure TCadProduto.salvar;
begin
  inherited;
  fDados.fieldbyname('Nome').AsString := Nome;
  fDados.fieldbyname('Codigo').AsInteger := Codigo;
  fDados.fieldbyname('CPF').AsString := CodBarras;

end;

end.
