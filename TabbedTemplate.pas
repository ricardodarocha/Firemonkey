unit TabbedTemplate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Gestures, FMX.Controls.Presentation, FMX.Objects, FMX.Edit, FMX.SearchBox, FMX.ListBox, FMX.Layouts;

type
  TTabbedForm = class(TForm)
    HeaderToolBar: TToolBar;
    ToolBarLabel: TLabel;
    TabControl1: TTabControl;
    TabHome: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    GestureManager1: TGestureManager;
    ToolBar: TToolBar;
    Rectangle1: TRectangle;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    ListBoxItem3: TListBoxItem;
    Circle20: TCircle;
    Circle21: TCircle;
    Label45: TLabel;
    Circle22: TCircle;
    Label46: TLabel;
    Circle23: TCircle;
    Label47: TLabel;
    Circle25: TCircle;
    Label49: TLabel;
    ListBoxItem4: TListBoxItem;
    Circle27: TCircle;
    Label50: TLabel;
    Circle29: TCircle;
    Label52: TLabel;
    Circle31: TCircle;
    Label54: TLabel;
    SearchBox1: TSearchBox;
    ListBox2: TListBox;
    ListBoxItem9: TListBoxItem;
    Circle1: TCircle;
    Circle56: TCircle;
    Label4: TLabel;
    Circle57: TCircle;
    Label5: TLabel;
    Circle58: TCircle;
    Label6: TLabel;
    Circle59: TCircle;
    Label7: TLabel;
    Circle60: TCircle;
    Label8: TLabel;
    ListBoxItem10: TListBoxItem;
    Circle61: TCircle;
    Circle62: TCircle;
    Label10: TLabel;
    Circle63: TCircle;
    Label11: TLabel;
    Circle65: TCircle;
    Label13: TLabel;
    Circle66: TCircle;
    Label14: TLabel;
    ListBoxItem11: TListBoxItem;
    Circle67: TCircle;
    Circle68: TCircle;
    Label17: TLabel;
    Circle69: TCircle;
    Label18: TLabel;
    Circle70: TCircle;
    Label19: TLabel;
    Circle71: TCircle;
    Label20: TLabel;
    Circle72: TCircle;
    Label21: TLabel;
    ListBoxItem12: TListBoxItem;
    Circle73: TCircle;
    Circle74: TCircle;
    Label22: TLabel;
    Circle75: TCircle;
    Label23: TLabel;
    Circle76: TCircle;
    Label24: TLabel;
    Circle77: TCircle;
    Label25: TLabel;
    Circle78: TCircle;
    Label26: TLabel;
    ListBoxItem13: TListBoxItem;
    Circle79: TCircle;
    Circle80: TCircle;
    Label27: TLabel;
    Circle81: TCircle;
    Label28: TLabel;
    Circle82: TCircle;
    Label29: TLabel;
    Circle83: TCircle;
    Label30: TLabel;
    Circle84: TCircle;
    Label31: TLabel;
    ListBoxItem14: TListBoxItem;
    Circle85: TCircle;
    Circle86: TCircle;
    Label32: TLabel;
    Circle87: TCircle;
    Label33: TLabel;
    Circle88: TCircle;
    Label75: TLabel;
    Circle89: TCircle;
    Label76: TLabel;
    Circle90: TCircle;
    Label77: TLabel;
    ListBoxItem15: TListBoxItem;
    Circle91: TCircle;
    Circle92: TCircle;
    Label78: TLabel;
    Circle93: TCircle;
    Label79: TLabel;
    Circle94: TCircle;
    Label80: TLabel;
    Circle95: TCircle;
    Label81: TLabel;
    Circle96: TCircle;
    Label82: TLabel;
    ListBoxItem16: TListBoxItem;
    Circle97: TCircle;
    Circle98: TCircle;
    Label83: TLabel;
    Circle99: TCircle;
    Label84: TLabel;
    Circle100: TCircle;
    Label85: TLabel;
    Circle101: TCircle;
    Label86: TLabel;
    Circle102: TCircle;
    Label87: TLabel;
    ListBoxItem17: TListBoxItem;
    Circle103: TCircle;
    Circle104: TCircle;
    Label88: TLabel;
    Circle105: TCircle;
    Label89: TLabel;
    Circle106: TCircle;
    Label90: TLabel;
    Circle107: TCircle;
    Label91: TLabel;
    Circle108: TCircle;
    Label92: TLabel;
    SearchBox2: TSearchBox;
    ProgressBar1: TProgressBar;
    ListBoxItem1: TListBoxItem;
    Circle2: TCircle;
    Label3: TLabel;
    Circle3: TCircle;
    Label9: TLabel;
    Circle4: TCircle;
    Label12: TLabel;
    ProgressBar2: TProgressBar;
    ListBoxItem2: TListBoxItem;
    Circle5: TCircle;
    Label15: TLabel;
    Circle6: TCircle;
    Label16: TLabel;
    Circle7: TCircle;
    Label34: TLabel;
    ProgressBar3: TProgressBar;
    ListBox3: TListBox;
    ListBoxItem5: TListBoxItem;
    Circle8: TCircle;
    Circle9: TCircle;
    Label35: TLabel;
    Circle10: TCircle;
    Label36: TLabel;
    Circle11: TCircle;
    Label37: TLabel;
    Circle12: TCircle;
    Label38: TLabel;
    ListBoxItem6: TListBoxItem;
    Circle13: TCircle;
    ProgressBar4: TProgressBar;
    SearchBox3: TSearchBox;
    Label39: TLabel;
    SpeedButton4: TSpeedButton;
    Label55: TLabel;
    Circle14: TCircle;
    Label58: TLabel;
    SpeedButton2: TSpeedButton;
    Label40: TLabel;
    SpeedButton3: TSpeedButton;
    Label41: TLabel;
    SpeedButton5: TSpeedButton;
    Label56: TLabel;
    SpeedButton6: TSpeedButton;
    Label57: TLabel;
    Circle15: TCircle;
    Label59: TLabel;
    ListBoxItem18: TListBoxItem;
    Circle28: TCircle;
    Label60: TLabel;
    Circle30: TCircle;
    Label61: TLabel;
    Circle32: TCircle;
    Label62: TLabel;
    ProgressBar7: TProgressBar;
    ToolBar1: TToolBar;
    Circle33: TCircle;
    Circle34: TCircle;
    Label63: TLabel;
    Circle35: TCircle;
    Label64: TLabel;
    Circle36: TCircle;
    Label65: TLabel;
    Circle37: TCircle;
    Label66: TLabel;
    ListBoxItem7: TListBoxItem;
    Circle16: TCircle;
    Label42: TLabel;
    ProgressBar5: TProgressBar;
    SpeedButton7: TSpeedButton;
    Label43: TLabel;
    Circle17: TCircle;
    Label44: TLabel;
    SpeedButton8: TSpeedButton;
    Label48: TLabel;
    SpeedButton9: TSpeedButton;
    Label51: TLabel;
    SpeedButton10: TSpeedButton;
    Label53: TLabel;
    SpeedButton11: TSpeedButton;
    Label67: TLabel;
    ListBoxItem8: TListBoxItem;
    Circle18: TCircle;
    ProgressBar6: TProgressBar;
    SpeedButton12: TSpeedButton;
    Circle19: TCircle;
    Label70: TLabel;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    Label72: TLabel;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    Label68: TLabel;
    SpeedButton17: TSpeedButton;
    ListBoxItem19: TListBoxItem;
    Circle24: TCircle;
    Circle26: TCircle;
    Label69: TLabel;
    Circle38: TCircle;
    Label71: TLabel;
    Circle39: TCircle;
    Label73: TLabel;
    Circle40: TCircle;
    Label74: TLabel;
    Circle41: TCircle;
    Label93: TLabel;
    ListBoxItem20: TListBoxItem;
    Circle42: TCircle;
    Circle43: TCircle;
    Label94: TLabel;
    Circle44: TCircle;
    Label95: TLabel;
    Circle45: TCircle;
    Label96: TLabel;
    Circle46: TCircle;
    Label97: TLabel;
    Circle47: TCircle;
    Label98: TLabel;
    ListBoxItem21: TListBoxItem;
    Circle48: TCircle;
    Circle49: TCircle;
    Label99: TLabel;
    Circle50: TCircle;
    Label100: TLabel;
    Circle51: TCircle;
    Label101: TLabel;
    Circle52: TCircle;
    Label102: TLabel;
    Circle53: TCircle;
    Label103: TLabel;
    ListBoxItem22: TListBoxItem;
    Circle54: TCircle;
    Circle55: TCircle;
    Label104: TLabel;
    Circle64: TCircle;
    Label105: TLabel;
    Circle109: TCircle;
    Label106: TLabel;
    Circle110: TCircle;
    Label107: TLabel;
    Circle111: TCircle;
    Label108: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure TabControl1Change(Sender: TObject);
    procedure ListBox1ViewportPositionChange(Sender: TObject; const OldViewportPosition, NewViewportPosition: TPointF; const ContentSizeChanged: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TabbedForm: TTabbedForm;

implementation

{$R *.fmx}

procedure TTabbedForm.FormCreate(Sender: TObject);
begin
  { This defines the default active tab at runtime }
  TabControl1.ActiveTab := TabHome;
end;

procedure TTabbedForm.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
{$IFDEF ANDROID}
  case EventInfo.GestureID of
    sgiLeft:
    begin
      if TabControl1.ActiveTab <> TabControl1.Tabs[TabControl1.TabCount-1] then
        TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex+1];
      Handled := True;
    end;

    sgiRight:
    begin
      if TabControl1.ActiveTab <> TabControl1.Tabs[0] then
        TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex-1];
      Handled := True;
    end;
  end;
{$ENDIF}
end;

procedure TTabbedForm.ListBox1ViewportPositionChange(Sender: TObject;
const OldViewportPosition,
    NewViewportPosition: TPointF; const ContentSizeChanged: Boolean);
begin
  ;
end;

procedure TTabbedForm.TabControl1Change(Sender: TObject);
begin
Toolbar.visible := tabControl1.TabIndex > 0;
end;

end.
