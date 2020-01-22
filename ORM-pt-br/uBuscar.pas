unit uBuscar;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.Objects, FMX.Layouts, FMX.ListView, uDados, FMX.TabControl, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.ImageList,
  FMX.ImgList, Data.Bind.Components, Data.Bind.DBScope;

const BUSCAPESSOA = 0;
const BUSCAPRODUTO = 1;

type
  TfrmBuscar = class(TForm)
    LHeader: TLayout;
    Rectangle1: TRectangle;
    LbTitulo: TLabel;
    Tab: TTabControl;
    TabPessoa: TTabItem;
    TabProduto: TTabItem;
    ListViewPessoa: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkFillControlToField2: TLinkFillControlToField;
    ImageList1: TImageList;
    ListView1: TListView;
    LinkFillControlToField3: TLinkFillControlToField;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ListView1ItemClickEx(const Sender: TObject; ItemIndex: Integer; const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscar: TfrmBuscar;

implementation

{$R *.fmx}

procedure TfrmBuscar.Button1Click(Sender: TObject);
begin
  close; //SHOWMODAL
end;

procedure TfrmBuscar.ListView1ItemClickEx(const Sender: TObject; ItemIndex: Integer; const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
begin
  CLOSE; //SHOWMODAL
end;

end.
