unit UCadPessoa;

interface

uses UPaiCadastro;

type
  TCadPessoa = Class(TCadastro)
    Nome: String;
    CPF: String;

  public
    procedure Novo; override;

    /// <remarks>
    ///   Agora o código não é mais obrigatório
    /// </remarks>
    procedure abrir(aCodigo: integer = 0); override;
   procedure salvar; override;
  end;

implementation

procedure TCadPessoa.abrir(aCodigo: integer);
begin
  inherited; {veja o código que eu criei no PaiCadastro}

  Nome := fDados.fieldbyname('Nome').AsString;
  CPF := fDados.fieldbyname('CPF').AsString;

end;

procedure TCadPessoa.Novo;
begin
  Codigo := 0;
  CPF := '';
  Nome := '';
end;

procedure TCadPessoa.salvar;
begin
  inherited;
  fDados.fieldbyname('Nome').AsString := Nome;
  fDados.fieldbyname('Codigo').AsInteger := Codigo;
  fDados.fieldbyname('CPF').AsString := CPF;

end;

end.
