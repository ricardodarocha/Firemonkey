unit uDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, FireDAC.Stan.StorageJSON, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDados = class(TDataModule)
    TabPessoa: TFDMemTable;
    TabPessoaCodigo: TIntegerField;
    TabPessoaNome: TStringField;
    TabPessoaCPF: TStringField;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    TabProduto: TFDMemTable;
    TabProdutoCodigo: TIntegerField;
    TabProdutoNome: TStringField;
    TabProdutoCodBarras: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dados: TDados;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
