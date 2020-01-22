unit UPaiCadastro;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  FireDAC.Stan.StorageBin;

type

  TCadastro = class
    Codigo: Integer;
  private

  public
    fDados: tfdmemtable;
    constructor create(aDados: tfdmemtable); virtual;
    procedure novo; virtual; abstract;

    /// <remarks>
    ///   Agora o código não é mais obrigatório
    /// </remarks>
   procedure abrir(aCodigo: integer = 0); virtual;

   procedure salvar; virtual;
  end;

implementation

uses
  System.SysUtils;

procedure TCadastro.abrir(aCodigo: integer);
begin

{Foi definida a seguinte regra. Se aCODIGO = 0, entao
não mexe no cursor da tabela, abre o registro que estiver posicionado

Se aCodigo > 0, então move o cursor da tabela ate encontrar o registro que o codigo esta satisfeito
Se nao encontrar nenhum dá um erro para o usuário
}

  if aCodigo > 0 then
  begin
    if not fDados.Locate('Codigo', aCodigo, []) then
      raise Exception.CreateFmt('Registro %d não encontrado! ', [aCodigo]);
  end;

  Codigo := fDados.fieldbyname('Codigo').AsInteger;
  {os demais campos abrir nas classes filhas}

end;

constructor TCadastro.create(aDados: tfdmemtable);
begin
  fDados := aDados;
end;

procedure TCadastro.salvar;
begin
  if not(fDados.State in [dsedit, dsinsert]) then
  begin
    if fDados.Locate('Codigo', Codigo, []) then
      fDados.Edit
    else
      fDados.Insert; //Append
  end;
end;

end.
