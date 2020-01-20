unit uMenu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Controls.Presentation,
  FMX.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.Layouts, FMX.Objects, FMX.ListBox, System.ImageList, FMX.ImgList, FMX.Edit, FMX.SearchBox, FMX.TabControl;

type
  TCadastro = class

    constructor Create(aDados: TFdMemTable);
    {Shift + Ctrl + C}
    function Validar: Boolean;

    procedure Novo;
    procedure Salvar;
    procedure Abrir;

    procedure First;
    procedure Prior;
    procedure Next;
    procedure Last;
  private
    fDados: TFdMemtable;
  end;

  TCadPessoa = class (TCadastro)

    Codigo: Integer;
    Nome:   String;
    CPF:    String;
    Cidade: String;
  end;

  TfrmCadastro = class(TForm)
    Circle1: TCircle;
    Header: TToolBar;
    Rectangle2: TRectangle;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    ToolCat: TToolBar;
    Rectangle1: TRectangle;
    SpeedButton5: TSpeedButton;
    Label6: TLabel;
    SpeedButton4: TSpeedButton;
    Label5: TLabel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    Toolbuttons: TToolBar;
    Rectangle3: TRectangle;
    SpeedButton17: TSpeedButton;
    Label18: TLabel;
    SpeedButton18: TSpeedButton;
    Label19: TLabel;
    SpeedButton19: TSpeedButton;
    Label20: TLabel;
    SpeedButton20: TSpeedButton;
    Label21: TLabel;
    SpeedButton21: TSpeedButton;
    Label22: TLabel;
    SpeedButton22: TSpeedButton;
    Label23: TLabel;
    SpeedButton23: TSpeedButton;
    Label24: TLabel;
    SpeedButton24: TSpeedButton;
    Label25: TLabel;
    Toolbar: TToolBar;
    Rectangle6: TRectangle;
    Label7: TLabel;
    SpeedButton6: TSpeedButton;
    Label8: TLabel;
    Images: TImageList;
    Label17: TLabel;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    ToolMoreButtons: TToolBar;
    Rectangle4: TRectangle;
    SpeedButton25: TSpeedButton;
    Label26: TLabel;
    SpeedButton26: TSpeedButton;
    Label27: TLabel;
    SpeedButton27: TSpeedButton;
    Label28: TLabel;
    SpeedButton28: TSpeedButton;
    Label29: TLabel;
    SpeedButton29: TSpeedButton;
    Label30: TLabel;
    SpeedButton30: TSpeedButton;
    Label31: TLabel;
    SpeedButton31: TSpeedButton;
    Label32: TLabel;
    SpeedButton32: TSpeedButton;
    Label33: TLabel;
    ToolOptions: TToolBar;
    Rectangle5: TRectangle;
    SpeedButton9: TSpeedButton;
    Label10: TLabel;
    SpeedButton10: TSpeedButton;
    Label11: TLabel;
    SpeedButton11: TSpeedButton;
    Label12: TLabel;
    SpeedButton12: TSpeedButton;
    Label13: TLabel;
    SpeedButton13: TSpeedButton;
    Label14: TLabel;
    ListBox1: TListBox;
    Ü: TListBoxItem;
    Circle2: TCircle;
    Circle3: TCircle;
    Label1: TLabel;
    Circle4: TCircle;
    Label9: TLabel;
    Circle5: TCircle;
    Label15: TLabel;
    Circle6: TCircle;
    Label16: TLabel;
    Circle7: TCircle;
    Label34: TLabel;
    ListBoxItem1: TListBoxItem;
    Circle8: TCircle;
    Circle9: TCircle;
    Label35: TLabel;
    Circle10: TCircle;
    Label36: TLabel;
    Circle11: TCircle;
    Label37: TLabel;
    Circle12: TCircle;
    Label38: TLabel;
    Circle13: TCircle;
    Label39: TLabel;
    ListBoxItem2: TListBoxItem;
    Circle14: TCircle;
    Circle15: TCircle;
    Label40: TLabel;
    Circle16: TCircle;
    Label41: TLabel;
    Circle17: TCircle;
    Label42: TLabel;
    Circle18: TCircle;
    Label43: TLabel;
    Circle19: TCircle;
    Label44: TLabel;
    ListBoxItem3: TListBoxItem;
    Circle20: TCircle;
    Circle21: TCircle;
    Label45: TLabel;
    Circle22: TCircle;
    Label46: TLabel;
    Circle23: TCircle;
    Label47: TLabel;
    Circle24: TCircle;
    Label48: TLabel;
    Circle25: TCircle;
    Label49: TLabel;
    ListBoxItem4: TListBoxItem;
    Circle26: TCircle;
    Circle27: TCircle;
    Label50: TLabel;
    Circle28: TCircle;
    Label51: TLabel;
    Circle29: TCircle;
    Label52: TLabel;
    Circle30: TCircle;
    Label53: TLabel;
    Circle31: TCircle;
    Label54: TLabel;
    ListBoxItem5: TListBoxItem;
    Circle32: TCircle;
    Circle33: TCircle;
    Label55: TLabel;
    Circle34: TCircle;
    Label56: TLabel;
    Circle35: TCircle;
    Label57: TLabel;
    Circle36: TCircle;
    Label58: TLabel;
    Circle37: TCircle;
    Label59: TLabel;
    ListBoxItem6: TListBoxItem;
    Circle38: TCircle;
    Circle39: TCircle;
    Label60: TLabel;
    Circle40: TCircle;
    Label61: TLabel;
    Circle41: TCircle;
    Label62: TLabel;
    Circle42: TCircle;
    Label63: TLabel;
    Circle43: TCircle;
    Label64: TLabel;
    ListBoxItem7: TListBoxItem;
    Circle44: TCircle;
    Circle45: TCircle;
    Label65: TLabel;
    Circle46: TCircle;
    Label66: TLabel;
    Circle47: TCircle;
    Label67: TLabel;
    Circle48: TCircle;
    Label68: TLabel;
    Circle49: TCircle;
    Label69: TLabel;
    ListBoxItem8: TListBoxItem;
    Circle50: TCircle;
    Circle51: TCircle;
    Label70: TLabel;
    Circle52: TCircle;
    Label71: TLabel;
    Circle53: TCircle;
    Label72: TLabel;
    Circle54: TCircle;
    Label73: TLabel;
    Circle55: TCircle;
    Label74: TLabel;
    SearchBox1: TSearchBox;
    TabHome: TTabItem;
    procedure FormCreate(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    Pessoa: TCadastro;
    Cliente: TCadastro;
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.fmx}

{ TCadastro }

procedure TCadastro.Abrir();
begin
  Nome := aDados.FieldByName('Nome').asString;
  Codigo := aDados.FieldByName('Codigo').AsInteger;
  CPF := aDados.FieldbyName('CPF').AsString;
end;

constructor TCadastro.Create(aDados: TFdMemTable);
begin
   Self.fDados := aDados;
end;

procedure TCadastro.First;
begin

end;

procedure TCadastro.Last;
begin

end;

procedure TCadastro.Next;
begin

end;

procedure TCadastro.Novo;
begin
  Codigo := 0;
  Nome:='';
  CPF:='';
end;

procedure TCadastro.Prior;
begin

end;

procedure TCadastro.Salvar(aDados: TFdMemTable);
begin
;
end;

function TCadastro.Validar: Boolean;
begin

  if Length(CPF) = 14 then
    result := true
  else
    result := False

//  result := (length(CPF) = 14);
end;

procedure TfrmCadastro.FormCreate(Sender: TObject);
begin
    Pessoa := TCadastro.Create;
    Pessoa.Codigo := 1;
    Pessoa.Nome := 'JOSE';
    Pessoa.CPF := '2222';
end;

procedure TfrmCadastro.TabControl1Change(Sender: TObject);
begin
  toolbar.visible := TabControl1.TabIndex > 0;

end;

end.
