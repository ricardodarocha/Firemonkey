unit uMenu;

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
  UCadPessoa, UCadProduto, FireDAC.Stan.StorageJSON, FMX.Objects, FMX.ListBox, UViewProduto;

type

  TfrmMenu = class(TForm)
    LHeader: TLayout;
    LbTitulo: TLabel;
    LFooter: TLayout;
    ScrollBox1: TScrollBox;
    LBody: TLayout;
    Rectangle1: TRectangle;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    Image1: TImage;
    Label1: TLabel;
    ListBoxItem2: TListBoxItem;
    Image2: TImage;
    Label2: TLabel;
    lbInstrutor: TLabel;
    lbContato: TLabel;
    Image3: TImage;
    procedure AbrirCadastroPessoas(Sender: TObject);
    procedure AbrirCadastroProdutos(Sender: TObject);
  private
    Pessoa: TCadPessoa;
  public

  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.fmx}

uses UViewCliente;
{ TCadastro }

procedure TfrmMenu.AbrirCadastroPessoas(Sender: TObject);
begin
  frmCadastro.Showmodal;
end;

procedure TfrmMenu.AbrirCadastroProdutos(Sender: TObject);
begin
  frmCadProduto.ShowModal;
end;

end.
