unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls,TlHelp32, shellAPI,
   Spin, Grids, ValEdit,IniFiles, Vcl.Buttons, Vcl.Menus;

type
  TBOT = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    FindLineAge: TButton;
    LineAgeList: TListBox;
    LineAgeListLabel: TLabel;
    SelectPID: TButton;
    GameInfo: TGroupBox;
    SelectedPIDLabelInfo: TLabel;
    SelectedPIDLabel: TLabel;
    SelectedHWNDLabelInfo: TLabel;
    SelectedHWNDLabel: TLabel;
    ModuleBaseAddressLabelInfo: TLabel;
    ModuleBaseAddressLabel: TLabel;
    GameControls: TGroupBox;
    HideGame: TButton;
    ShowGame: TButton;
    CharInfo: TGroupBox;
    MaxCPLabelInfo: TLabel;
    MaxCPLabel: TLabel;
    CurCPLabelInfo: TLabel;
    CurCPLabel: TLabel;
    MaxHPLabelInfo: TLabel;
    MaxHPLabel: TLabel;
    CurHPLabelInfo: TLabel;
    CurHPLabel: TLabel;
    MaxMPLabelInfo: TLabel;
    MaxMPLabel: TLabel;
    CurMPLabelInfo: TLabel;
    CurMPLabel: TLabel;
    StatsTimer: TTimer;
    TabSheet2: TTabSheet;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    FarmBotStart: TButton;
    FarmBotStop: TButton;
    Skill1Panel: TPanel;
    Skill1IsUse: TCheckBox;
    Skill1KeyEdit: THotKey;
    Skill1KeyLabelInfo: TLabel;
    ScrollBox1: TScrollBox;
    Skill1CDLabelInfo: TLabel;
    Skill1CDEdit: TEdit;
    Skill1IF: TCheckBox;
    Skill1IFHPLabelInfo: TLabel;
    Skill1IFHPMore: TRadioButton;
    Skill1IFHPLow: TRadioButton;
    Skill1IFHPEdit: TEdit;
    Skill1IFMPEdit: TEdit;
    Skill1IFMPLow: TRadioButton;
    Skill1IFMPMore: TRadioButton;
    Skill1IFMPLabelInfo: TLabel;
    Skill1Timer: TTimer;
    SaveSettings: TBitBtn;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    OpenSettings: TBitBtn;
    Skill2Panel: TPanel;
    Skill2IsUse: TCheckBox;
    Skill2KeyLabelInfo: TLabel;
    Skill2KeyEdit: THotKey;
    Skill2CDLabelInfo: TLabel;
    Skill2CDEdit: TEdit;
    Skill2IF: TCheckBox;
    Skill2IFHPLabelInfo: TLabel;
    Skill2IFMPLabelInfo: TLabel;
    Skill2IFMPMore: TRadioButton;
    Skill2IFHPMore: TRadioButton;
    Skill2IFHPLow: TRadioButton;
    Skill2IFMPLow: TRadioButton;
    Skill2IFMPEdit: TEdit;
    Skill2IFHPEdit: TEdit;
    Skill2Timer: TTimer;
    Skill3Panel: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Skill3IsUse: TCheckBox;
    Skill3KeyLabelInfo: TLabel;
    Skill3KeyEdit: THotKey;
    Skill3CDLabelInfo: TLabel;
    Skill3CDEdit: TEdit;
    Skill3IF: TCheckBox;
    Skill3IFHPLabelInfo: TLabel;
    Skill3MPLabelInfo: TLabel;
    Skill3IFMPMore: TRadioButton;
    Skill3IFHPMore: TRadioButton;
    Skill3IFHPEdit: TEdit;
    Skill3IFMPEdit: TEdit;
    Skill3IFMPLow: TRadioButton;
    Skill3IFHPLow: TRadioButton;
    Skill3Timer: TTimer;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Skill4IsUse: TCheckBox;
    Skill4KeyLabelInfo: TLabel;
    Skill4KeyEdit: THotKey;
    Skill4CDLabelInfo: TLabel;
    Skill4CDEdit: TEdit;
    Skill4IF: TCheckBox;
    Skill4IFHPLabelInfo: TLabel;
    Skill4IFMPLabelInfo: TLabel;
    Skill4IFMPMore: TRadioButton;
    Skill4IFHPMore: TRadioButton;
    Skill4IFHPLow: TRadioButton;
    Skill4IFMPLow: TRadioButton;
    Skill4IFMPEdit: TEdit;
    Skill4IFHPEdit: TEdit;
    Skill4Timer: TTimer;
    Skill5Timer: TTimer;
    Skill5IsUse: TCheckBox;
    Skill5KeyLabelinfo: TLabel;
    Skill5KeyEdit: THotKey;
    Skill5CDLabelInfo: TLabel;
    Skill5CDEdit: TEdit;
    Skill5IF: TCheckBox;
    Skill5IFHPLabelInfo: TLabel;
    Skill5IFMPLabelInfo: TLabel;
    Skill5IFMPMore: TRadioButton;
    Skill5IFHPMore: TRadioButton;
    Skill5IFHPLow: TRadioButton;
    Skill5IFMPLow: TRadioButton;
    Skill5IFMPEdit: TEdit;
    Skill5IFHPEdit: TEdit;
    Skill6Timer: TTimer;
    Skill6IsUse: TCheckBox;
    Skill6KeyLabelInfo: TLabel;
    Skill6KeyEdit: THotKey;
    Skill6CDLabelInfo: TLabel;
    Skill6CDEdit: TEdit;
    Skill6IF: TCheckBox;
    Skill6IFHPLabelInfo: TLabel;
    Skill6IFMPLabelInfo: TLabel;
    Skill6IFMPMore: TRadioButton;
    Skill6IFHPMore: TRadioButton;
    Skill6IFHPLow: TRadioButton;
    Skill6IFMPLow: TRadioButton;
    Skill6IFMPEdit: TEdit;
    Skill6IFHPEdit: TEdit;
    Skill7Timer: TTimer;
    Skill7IsUse: TCheckBox;
    Skill7KeyLabelInfo: TLabel;
    Skill7KeyEdit: THotKey;
    Skill7CDEdit: TEdit;
    Skill7IF: TCheckBox;
    Skill7IFHPLabelInfo: TLabel;
    Skill7IFMPLabelInfo: TLabel;
    Skill7IFMPMore: TRadioButton;
    Skill7IFHPMore: TRadioButton;
    Skill7IFHPLow: TRadioButton;
    Skill7IFMPLow: TRadioButton;
    Skill7IFMPEdit: TEdit;
    Skill7IFHPEdit: TEdit;
    Skill7CDLabelInfo: TLabel;
    Skill8Timer: TTimer;
    Skill8IsUse: TCheckBox;
    Skill8KeyLabelInfo: TLabel;
    Skill8KeyEdit: THotKey;
    Skill8CDLabelInfo: TLabel;
    Skill8CDEdit: TEdit;
    Skill8IF: TCheckBox;
    Skill8IFHPLabelInfo: TLabel;
    Skill8IFMPLabelInfo: TLabel;
    Skill8IFMPMore: TRadioButton;
    Skill8IFHPMore: TRadioButton;
    Skill8IFHPLow: TRadioButton;
    Skill8IFMPLow: TRadioButton;
    Skill8IFMPEdit: TEdit;
    Skill8IFHPEdit: TEdit;
    Skill9Timer: TTimer;
    Skill9IsUse: TCheckBox;
    Skill9KeyLabelInfo: TLabel;
    Skill9KeyEdit: THotKey;
    Skill9CDLabelInfo: TLabel;
    Skill9CDEdit: TEdit;
    Skill9IF: TCheckBox;
    Skill9IFHPLabelInfo: TLabel;
    Skill9IFMPLabelInfo: TLabel;
    Skill9IFMPMore: TRadioButton;
    Skill9IFHPMore: TRadioButton;
    Skill9IFHPLow: TRadioButton;
    Skill9IFMPLow: TRadioButton;
    Skill9IFMPEdit: TEdit;
    Skill9IFHPEdit: TEdit;
    Skill10Timer: TTimer;
    Skill10IsUse: TCheckBox;
    Skill10KeyLabelInfo: TLabel;
    Skill10KeyEdit: THotKey;
    Skill10CDLabelInfo: TLabel;
    Skill10CDEdit: TEdit;
    Skill10IF: TCheckBox;
    Skill10IFHPLabelInfo: TLabel;
    Skill10IFMPLabelInfo: TLabel;
    Skill10IFMPMore: TRadioButton;
    Skill10IFHPMore: TRadioButton;
    Skill10IFHPLow: TRadioButton;
    Skill10IFMPLow: TRadioButton;
    Skill10IFMPEdit: TEdit;
    Skill10IFHPEdit: TEdit;
    Skill11Timer: TTimer;
    Skill11IsUse: TCheckBox;
    Skill11KeyLabelInfo: TLabel;
    Skill11KeyEdit: THotKey;
    Skill11CDLabelInfo: TLabel;
    Skill11CDEdit: TEdit;
    Skill11IF: TCheckBox;
    Skill11IFHPLabelInfo: TLabel;
    Skill11IFMPLabelInfo: TLabel;
    Skill11IFMPMore: TRadioButton;
    Skill11IFHPMore: TRadioButton;
    Skill11IFHPLow: TRadioButton;
    Skill11IFMPLow: TRadioButton;
    Skill11IFMPEdit: TEdit;
    Skill11IFHPEdit: TEdit;
    Skill12Timer: TTimer;
    Skill12IsUse: TCheckBox;
    Skill12KeyLabelInfo: TLabel;
    Skill12KeyEdit: THotKey;
    Skill12CDLabelInfo: TLabel;
    Skill12CDEdit: TEdit;
    Skill12IF: TCheckBox;
    Skill12IFHPLabelInfo: TLabel;
    Skill12IFMPLabelInfo: TLabel;
    Skill12IFMPMore: TRadioButton;
    Skill12IFHPMore: TRadioButton;
    Skill12IFHPLow: TRadioButton;
    Skill12IFMPLow: TRadioButton;
    Skill12IFMPEdit: TEdit;
    Skill12IFHPEdit: TEdit;
    IsTargetLabelInfo: TLabel;
    IsTargetLabel: TLabel;
    TargetHPLabelInfo: TLabel;
    TargetHPLabel: TLabel;
    CPBar: TProgressBar;
    HPBar: TProgressBar;
    MPBar: TProgressBar;
    RebuffGroup: TGroupBox;
    RebuffTimeLabelInfo: TLabel;
    NeedRebuff: TCheckBox;
    RebuffTimeEdit: TEdit;
    RebuffClickAdd: TButton;
    RebuffClicksClear: TButton;
    RebuffClicksX: TListBox;
    RebuffClicksY: TListBox;
    CursorCoord: TTimer;
    CursorX: TEdit;
    CursorY: TEdit;
    RebuffTimer: TTimer;
    TabSheet5: TTabSheet;
    GroupBox1: TGroupBox;
    CPPot1Panel: TPanel;
    CPPot1IsUse: TCheckBox;
    CPPot1KeyLabel: TLabel;
    CPPot1KeyEdit: THotKey;
    CPPot1IFCPLabel: TLabel;
    CPPot1IFCPEdit: TEdit;
    CPPot1CDLabel: TLabel;
    CPPot1CDEdit: TEdit;
    CPPot1Timer: TTimer;
    ACPStop: TButton;
    ACPstart: TButton;
    CPPot2Panel: TPanel;
    CPPot2IsUse: TCheckBox;
    CPPot2KeyEdit: THotKey;
    CPPot2KeyLabel: TLabel;
    CPPot2IFCPLabel: TLabel;
    CPPot2IFCPEdit: TEdit;
    CPPot2CDLabel: TLabel;
    CPPot2CDEdit: TEdit;
    CPPot2Timer: TTimer;
    CPPot3Panel: TPanel;
    CPPot3IsUse: TCheckBox;
    CPPot3KeyLabel: TLabel;
    CPPot3KeyEdit: THotKey;
    CPPot3IFCPLabel: TLabel;
    CPPot3IFCPEdit: TEdit;
    CPPot3CDLabel: TLabel;
    CPPot3CDEdit: TEdit;
    CPPot3Timer: TTimer;
    ShutDownGroup: TGroupBox;
    ShutDownInfoLabel: TLabel;
    IsShutDown: TCheckBox;
    IsShutDownOFF: TRadioButton;
    IsShutDownRESTART: TRadioButton;
    IsShutDownWAIT: TRadioButton;
    TrayIcon1: TTrayIcon;
    BOTInformationTips: TGroupBox;
    InfoTipIsAttack: TCheckBox;
    InfoTipIsLowHp: TCheckBox;
    InfoTipIsDie: TCheckBox;
    Skill1IsUseLast: TCheckBox;
    Skill2IsUseLast: TCheckBox;
    Skill3IsUseLast: TCheckBox;
    Skill4IsUseLast: TCheckBox;
    Skill5IsUseLast: TCheckBox;
    Skill6IsUseLast: TCheckBox;
    Skill7IsUseLast: TCheckBox;
    Skill8IsUseLast: TCheckBox;
    Skill9IsUseLast: TCheckBox;
    Skill10IsUseLast: TCheckBox;
    Skill11IsUseLast: TCheckBox;
    Skill12IsUseLast: TCheckBox;
    FindLA2: TButton;
    FindByName: TGroupBox;
    FindByDrop: TGroupBox;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    FAQ1: TMenuItem;
    StatusBar1: TStatusBar;
    N6: TMenuItem;
    procedure ENABLESKILLS;
    procedure DISABLESKILLS;
    procedure FindHandle;
    procedure ShutDown;
    procedure LASTMOBEnable;
    procedure LASTMOBDisable;
    Function GetModuleBase(WorkPID: Cardinal; moduleName: PChar): dword;
    procedure FindLineAgeClick(Sender: TObject);
    procedure SelectPIDClick(Sender: TObject);
    procedure HideGameClick(Sender: TObject);
    procedure ShowGameClick(Sender: TObject);
    procedure StatsTimerTimer(Sender: TObject);
    procedure FarmBotStartClick(Sender: TObject);
    procedure FarmBotStopClick(Sender: TObject);
    procedure Skill1TimerTimer(Sender: TObject);
    procedure SaveSettingsClick(Sender: TObject);
    procedure OpenSettingsClick(Sender: TObject);
    procedure Skill2TimerTimer(Sender: TObject);
    procedure Skill3TimerTimer(Sender: TObject);
    procedure Skill4TimerTimer(Sender: TObject);
    procedure Skill5TimerTimer(Sender: TObject);
    procedure Skill7TimerTimer(Sender: TObject);
    procedure Skill6TimerTimer(Sender: TObject);
    procedure Skill8TimerTimer(Sender: TObject);
    procedure Skill9TimerTimer(Sender: TObject);
    procedure Skill10TimerTimer(Sender: TObject);
    procedure Skill11TimerTimer(Sender: TObject);
    procedure Skill12TimerTimer(Sender: TObject);
    procedure RebuffClickAddClick(Sender: TObject);
    procedure RebuffClicksClearClick(Sender: TObject);
    procedure CursorCoordTimer(Sender: TObject);
    procedure RebuffClickAddKeyPress(Sender: TObject; var Key: Char);
    procedure RebuffTimerTimer(Sender: TObject);
    procedure ACPStopClick(Sender: TObject);
    procedure CPPot1TimerTimer(Sender: TObject);
    procedure ACPstartClick(Sender: TObject);
    procedure CPPot2TimerTimer(Sender: TObject);
    procedure CPPot3TimerTimer(Sender: TObject);
    procedure LastMobTimerTimer(Sender: TObject);
    procedure FindLA2EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);

  private
    { Private declarations }
  public
    BaseAddress:Cardinal;
    WorkPID: DWORD;
    WorkWND: HWND;
     {�������� ������ ��� ������ ����}
    CurHP, {������� ��}
    MaxHP, {������������ ��}
    CurMP, {������� ��}
    MaxMP, {������������ ��}
    CurCP, {������� ��}
    MaxCP, {������������ ��}
    TargetHP {�� ����} :integer;

    IsTarget: boolean;
  end;

  {TCur�P - ������� �� ���������}
  TCurCP = class(TThread)
  private
    { Private declarations }
    h,TWND: HWND;
    address,
    buf,Tresult,TPID,TBaseAddress:DWORD;
    outbytes,inbytes: SIZE_T;
  protected
    procedure Execute; override;
    procedure Result;
    procedure getINF;
  end;

  {TMax�P - ������������ �� ���������}
  TMaxCP = class(TThread)
  private
    { Private declarations }
    h,TWND: HWND;
    address,
    buf,Tresult,TPID,TBaseAddress:DWORD;
    outbytes,inbytes: SIZE_T;
  protected
    procedure Execute; override;
    procedure Result;
    procedure getINF;
  end;

  {TCurHP - ������� �� ���������}
  TCurHP = class(TThread)
  private
    { Private declarations }
    h,TWND: HWND;
    address,
    buf,Tresult,TPID,TBaseAddress:DWORD;
    outbytes,inbytes: SIZE_T;
  protected
    procedure Execute; override;
    procedure Result;
    procedure getINF;
  end;

  {TMaxHP - ������������ �� ���������}
  TMaxHP = class(TThread)
  private
    { Private declarations }
    h,TWND: HWND;
    address,
    buf,Tresult,TPID,TBaseAddress:DWORD;
    outbytes,inbytes: SIZE_T;
  protected
    procedure Execute; override;
    procedure Result;
    procedure getINF;
  end;

  {TCurMP - ������� �� ���������}
  TCurMP = class(TThread)
  private
    { Private declarations }
    h,TWND: HWND;
    address,
    buf,Tresult,TPID,TBaseAddress:DWORD;
    outbytes,inbytes: SIZE_T;
  protected
    procedure Execute; override;
    procedure Result;
    procedure getINF;
  end;

  {TMaxHP - ������������ �� ���������}
  TMaxMP = class(TThread)
  private
    { Private declarations }
    h,TWND: HWND;
    address,
    buf,Tresult,TPID,TBaseAddress:DWORD;
    outbytes,inbytes: SIZE_T;
  protected
    procedure Execute; override;
    procedure Result;
    procedure getINF;
  end;

  {TTargetCheck - ������� �������}
  TTargetCheck = class(TThread)
  private
    { Private declarations }
    h,TWND: HWND;
    address,
    buf,Tresult,TPID,TBaseAddress:DWORD;
    outbytes,inbytes: SIZE_T;
  protected
    procedure Execute; override;
    procedure Result;
    procedure getINF;
  end;

  {TTargetHP - �� ����}
  TTargetHP = class(TThread)
  private
    { Private declarations }
    h,TWND: HWND;
    address,
    buf,Tresult,TPID,TBaseAddress:DWORD;
    outbytes,inbytes: SIZE_T;
    IsAgain:boolean;
  protected
    procedure Execute; override;
    procedure Result;
    procedure getINF;
  end;

  {TLastMob - ��������� �����}
  TLastMob = class(TThread)
  private
    { Private declarations }
    h,TWND: HWND;
    address,
    buf,Tresult,TPID,TBaseAddress:DWORD;
    outbytes,inbytes: SIZE_T;
  protected
    procedure Execute; override;
    procedure getINF;
  end;

  {TRebuff - ������}
  TRebuff = class(TThread)
  private
    { Private declarations }
    h,TWND: HWND;
    address,
    buf,Tresult,TPID,TBaseAddress:DWORD;
    outbytes,inbytes: SIZE_T;
  protected
    procedure Execute; override;
    procedure Result;
    procedure getINF;
  end;

  {TSkill1 - ������ 1}
  TSkill1 = class(TThread)
  private
    { Private declarations }
    TWND: HWND;
    CurHPinhandle,IFHPinHandle,
    CurMPinHandle,IFMPinHandle: integer;
  protected
    procedure Execute; override;
    procedure getINF;
  end;

  {TSkill2 - ������ 2}
  TSkill2 = class(TThread)
  private
    { Private declarations }
    TWND: HWND;
    CurHPinhandle,IFHPinHandle,
    CurMPinHandle,IFMPinHandle: integer;
  protected
    procedure Execute; override;
    procedure getINF;
  end;

  {TSkill3 - ������ 3}
  TSkill3 = class(TThread)
  private
    { Private declarations }
    TWND: HWND;
    CurHPinhandle,IFHPinHandle,
    CurMPinHandle,IFMPinHandle: integer;
  protected
    procedure Execute; override;
    procedure getINF;
  end;

  {TSkill4 - ������ 4}
  TSkill4 = class(TThread)
  private
    { Private declarations }
    TWND: HWND;
    CurHPinhandle,IFHPinHandle,
    CurMPinHandle,IFMPinHandle: integer;
  protected
    procedure Execute; override;
    procedure getINF;
  end;

  {TSkill5 - ������ 5}
  TSkill5 = class(TThread)
  private
    { Private declarations }
    TWND: HWND;
    CurHPinhandle,IFHPinHandle,
    CurMPinHandle,IFMPinHandle: integer;
  protected
    procedure Execute; override;
    procedure getINF;
  end;

  {TSkill6 - ������ 6}
  TSkill6 = class(TThread)
  private
    { Private declarations }
    TWND: HWND;
    CurHPinhandle,IFHPinHandle,
    CurMPinHandle,IFMPinHandle: integer;
  protected
    procedure Execute; override;
    procedure getINF;
  end;

  {TSkill7 - ������ 7}
  TSkill7 = class(TThread)
  private
    { Private declarations }
    TWND: HWND;
    CurHPinhandle,IFHPinHandle,
    CurMPinHandle,IFMPinHandle: integer;
  protected
    procedure Execute; override;
    procedure getINF;
  end;

  {TSkill8 - ������ 8}
  TSkill8 = class(TThread)
  private
    { Private declarations }
    TWND: HWND;
    CurHPinhandle,IFHPinHandle,
    CurMPinHandle,IFMPinHandle: integer;
  protected
    procedure Execute; override;
    procedure getINF;
  end;

  {TSkill9 - ������ 9}
  TSkill9 = class(TThread)
  private
    { Private declarations }
    TWND: HWND;
    CurHPinhandle,IFHPinHandle,
    CurMPinHandle,IFMPinHandle: integer;
  protected
    procedure Execute; override;
    procedure getINF;
  end;

  {TSkill10 - ������ 10}
  TSkill10 = class(TThread)
  private
    { Private declarations }
    TWND: HWND;
    CurHPinhandle,IFHPinHandle,
    CurMPinHandle,IFMPinHandle: integer;
  protected
    procedure Execute; override;
    procedure getINF;
  end;

  {TSkill11 - ������ 11}
  TSkill11 = class(TThread)
  private
    { Private declarations }
    TWND: HWND;
    CurHPinhandle,IFHPinHandle,
    CurMPinHandle,IFMPinHandle: integer;
  protected
    procedure Execute; override;
    procedure getINF;
  end;

  {TSkill12 - ������ 12}
  TSkill12 = class(TThread)
  private
    { Private declarations }
    TWND: HWND;
    CurHPinhandle,IFHPinHandle,
    CurMPinHandle,IFMPinHandle: integer;
  protected
    procedure Execute; override;
    procedure getINF;
  end;

  {TACPcp1 - CP1}
  TACPcp1 = class(TThread)
  private
    { Private declarations }
    TWND: HWND;
    CurHPinhandle,IFHPinHandle,
    CurMPinHandle,IFMPinHandle: integer;
  protected
    procedure Execute; override;
    procedure getINF;
  end;

  {TACPcp2 - CP2}
  TACPcp2 = class(TThread)
  private
    { Private declarations }
    TWND: HWND;
    CurHPinhandle,IFHPinHandle,
    CurMPinHandle,IFMPinHandle: integer;
  protected
    procedure Execute; override;
    procedure getINF;
  end;

  {TACPcp3 - CP3}
  TACPcp3 = class(TThread)
  private
    { Private declarations }
    TWND: HWND;
    CurHPinhandle,IFHPinHandle,
    CurMPinHandle,IFMPinHandle: integer;
  protected
    procedure Execute; override;
    procedure getINF;
  end;

var
  BOT: TBOT;
  CurCPhandle: TCurCP;
  MaxCPHandle: TMaxCP;
  CurHPhandle: TCurHP;
  MaxHPHandle: TMaxHP;
  CurMPhandle: TCurMP;
  MaxMPhandle: TMaxMP;
  TargetCheck: TTargetCheck;
  TargetHPHandle: TTargetHP;
  LastMobHandle: TLastMob;
  RebuffHandle: TRebuff;
  Skill1Handle: TSkill1;
  Skill2Handle: TSkill2;
  Skill3Handle: TSkill3;
  Skill4Handle: TSkill4;
  Skill5Handle: TSkill5;
  Skill6Handle: TSkill6;
  Skill7Handle: TSkill7;
  Skill8Handle: TSkill8;
  Skill9Handle: TSkill9;
  Skill10Handle: TSkill10;
  Skill11Handle: TSkill11;
  Skill12Handle: TSkill12;
  ACPcp1Handle: TACPcp1;
  ACPcp2Handle: TACPcp2;
  ACPcp3Handle: TACPcp3;

  address, address2, address3, address4, address5, address6,buf:DWORD;
  BaseAddress:Cardinal;
  PID, PIDs,
  WorkPID{��������� PID �������������}:DWORD;
  wnd, WorkWND,{WORK - � ����� �������� ��� �� PID}
  HandleWindow :HWND;
  HandleW: THandle;

  {�������� ������ ��� ������ ����}
  CurHP, {������� ��}
  MaxHP, {������������ ��}
  CurMP, {������� ��}
  MaxMP, {������������ ��}
  CurCP, {������� ��}
  MaxCP, {������������ ��}
  TargetHP {�� ����} :integer;

  IsTarget,IsBotWork:Boolean;

implementation

{$R *.dfm}

{���������� ��������}
procedure TBOT.SaveSettingsClick(Sender: TObject);
var
  Ini: Tinifile;
  RebuffClicks: integer;
begin
  if SaveDialog1.Execute then
  with TInifile.Create(SaveDialog1.FileName) Do
    begin
      WriteBool('������','������ 1 ���', Skill1IsUse.Checked);
      WriteBool('������','������ 1 ���������', Skill1IsUseLast.Checked);
      WriteInteger('������','������ 1 ������', Skill1KeyEdit.HotKey);
      WriteString('������','������ 1 �����', Skill1CDEdit.Text);
      WriteBool('������','������ 1 ����', Skill1IF.Checked);
      WriteString('������','������ 1 ���� ��', Skill1IFHPEdit.Text);
      WriteString('������','������ 1 ���� ��', Skill1IFMPEdit.Text);
      WriteBool('������','������ 1 ���� �� �', Skill1IFHPMore.Checked);
      WriteBool('������','������ 1 ���� �� �', Skill1IFHPLow.Checked);
      WriteBool('������','������ 1 ���� �� �', Skill1IFMPMore.Checked);
      WriteBool('������','������ 1 ���� �� �', Skill1IFMPLow.Checked);

      WriteBool('������','������ 2 ���', Skill2IsUse.Checked);
      WriteBool('������','������ 2 ���������', Skill2IsUseLast.Checked);
      WriteInteger('������','������ 2 ������', Skill2KeyEdit.HotKey);
      WriteString('������','������ 2 �����', Skill2CDEdit.Text);
      WriteBool('������','������ 2 ����', Skill2IF.Checked);
      WriteString('������','������ 2 ���� ��', Skill2IFHPEdit.Text);
      WriteString('������','������ 2 ���� ��', Skill2IFMPEdit.Text);
      WriteBool('������','������ 2 ���� �� �', Skill2IFHPMore.Checked);
      WriteBool('������','������ 2 ���� �� �', Skill2IFHPLow.Checked);
      WriteBool('������','������ 2 ���� �� �', Skill2IFMPMore.Checked);
      WriteBool('������','������ 2 ���� �� �', Skill2IFMPLow.Checked);

      WriteBool('������','������ 3 ���', Skill3IsUse.Checked);
      WriteBool('������','������ 3 ���������', Skill3IsUseLast.Checked);
      WriteInteger('������','������ 3 ������', Skill3KeyEdit.HotKey);
      WriteString('������','������ 3 �����', Skill3CDEdit.Text);
      WriteBool('������','������ 3 ����', Skill3IF.Checked);
      WriteString('������','������ 3 ���� ��', Skill3IFHPEdit.Text);
      WriteString('������','������ 3 ���� ��', Skill3IFMPEdit.Text);
      WriteBool('������','������ 3 ���� �� �', Skill3IFHPMore.Checked);
      WriteBool('������','������ 3 ���� �� �', Skill3IFHPLow.Checked);
      WriteBool('������','������ 3 ���� �� �', Skill3IFMPMore.Checked);
      WriteBool('������','������ 3 ���� �� �', Skill3IFMPLow.Checked);

      WriteBool('������','������ 4 ���', Skill4IsUse.Checked);
      WriteBool('������','������ 4 ���������', Skill4IsUseLast.Checked);
      WriteInteger('������','������ 4 ������', Skill4KeyEdit.HotKey);
      WriteString('������','������ 4 �����', Skill4CDEdit.Text);
      WriteBool('������','������ 4 ����', Skill4IF.Checked);
      WriteString('������','������ 4 ���� ��', Skill4IFHPEdit.Text);
      WriteString('������','������ 4 ���� ��', Skill4IFMPEdit.Text);
      WriteBool('������','������ 4 ���� �� �', Skill4IFHPMore.Checked);
      WriteBool('������','������ 4 ���� �� �', Skill4IFHPLow.Checked);
      WriteBool('������','������ 4 ���� �� �', Skill4IFMPMore.Checked);
      WriteBool('������','������ 4 ���� �� �', Skill4IFMPLow.Checked);

      WriteBool('������','������ 5 ���', Skill5IsUse.Checked);
      WriteBool('������','������ 5 ���������', Skill5IsUseLast.Checked);
      WriteInteger('������','������ 5 ������', Skill5KeyEdit.HotKey);
      WriteString('������','������ 5 �����', Skill5CDEdit.Text);
      WriteBool('������','������ 5 ����', Skill5IF.Checked);
      WriteString('������','������ 5 ���� ��', Skill5IFHPEdit.Text);
      WriteString('������','������ 5 ���� ��', Skill5IFMPEdit.Text);
      WriteBool('������','������ 5 ���� �� �', Skill5IFHPMore.Checked);
      WriteBool('������','������ 5 ���� �� �', Skill5IFHPLow.Checked);
      WriteBool('������','������ 5 ���� �� �', Skill5IFMPMore.Checked);
      WriteBool('������','������ 5 ���� �� �', Skill5IFMPLow.Checked);

      WriteBool('������','������ 6 ���', Skill6IsUse.Checked);
      WriteBool('������','������ 6 ���������', Skill6IsUseLast.Checked);
      WriteInteger('������','������ 6 ������', Skill6KeyEdit.HotKey);
      WriteString('������','������ 6 �����', Skill6CDEdit.Text);
      WriteBool('������','������ 6 ����', Skill6IF.Checked);
      WriteString('������','������ 6 ���� ��', Skill6IFHPEdit.Text);
      WriteString('������','������ 6 ���� ��', Skill6IFMPEdit.Text);
      WriteBool('������','������ 6 ���� �� �', Skill6IFHPMore.Checked);
      WriteBool('������','������ 6 ���� �� �', Skill6IFHPLow.Checked);
      WriteBool('������','������ 6 ���� �� �', Skill6IFMPMore.Checked);
      WriteBool('������','������ 6 ���� �� �', Skill6IFMPLow.Checked);

      WriteBool('������','������ 7 ���', Skill7IsUse.Checked);
      WriteBool('������','������ 7 ���������', Skill7IsUseLast.Checked);
      WriteInteger('������','������ 7 ������', Skill7KeyEdit.HotKey);
      WriteString('������','������ 7 �����', Skill7CDEdit.Text);
      WriteBool('������','������ 7 ����', Skill7IF.Checked);
      WriteString('������','������ 7 ���� ��', Skill7IFHPEdit.Text);
      WriteString('������','������ 7 ���� ��', Skill7IFMPEdit.Text);
      WriteBool('������','������ 7 ���� �� �', Skill7IFHPMore.Checked);
      WriteBool('������','������ 7 ���� �� �', Skill7IFHPLow.Checked);
      WriteBool('������','������ 7 ���� �� �', Skill7IFMPMore.Checked);
      WriteBool('������','������ 7 ���� �� �', Skill7IFMPLow.Checked);

      WriteBool('������','������ 8 ���', Skill8IsUse.Checked);
      WriteBool('������','������ 8 ���������', Skill8IsUseLast.Checked);
      WriteInteger('������','������ 8 ������', Skill8KeyEdit.HotKey);
      WriteString('������','������ 8 �����', Skill8CDEdit.Text);
      WriteBool('������','������ 8 ����', Skill8IF.Checked);
      WriteString('������','������ 8 ���� ��', Skill8IFHPEdit.Text);
      WriteString('������','������ 8 ���� ��', Skill8IFMPEdit.Text);
      WriteBool('������','������ 8 ���� �� �', Skill8IFHPMore.Checked);
      WriteBool('������','������ 8 ���� �� �', Skill8IFHPLow.Checked);
      WriteBool('������','������ 8 ���� �� �', Skill8IFMPMore.Checked);
      WriteBool('������','������ 8 ���� �� �', Skill8IFMPLow.Checked);

      WriteBool('������','������ 9 ���', Skill9IsUse.Checked);
      WriteBool('������','������ 9 ���������', Skill9IsUseLast.Checked);
      WriteInteger('������','������ 9 ������', Skill9KeyEdit.HotKey);
      WriteString('������','������ 9 �����', Skill9CDEdit.Text);
      WriteBool('������','������ 9 ����', Skill9IF.Checked);
      WriteString('������','������ 9 ���� ��', Skill9IFHPEdit.Text);
      WriteString('������','������ 9 ���� ��', Skill9IFMPEdit.Text);
      WriteBool('������','������ 9 ���� �� �', Skill9IFHPMore.Checked);
      WriteBool('������','������ 9 ���� �� �', Skill9IFHPLow.Checked);
      WriteBool('������','������ 9 ���� �� �', Skill9IFMPMore.Checked);
      WriteBool('������','������ 9 ���� �� �', Skill9IFMPLow.Checked);

      WriteBool('������','������ 10 ���', Skill10IsUse.Checked);
      WriteBool('������','������ 10 ���������', Skill10IsUseLast.Checked);
      WriteInteger('������','������ 10 ������', Skill10KeyEdit.HotKey);
      WriteString('������','������ 10 �����', Skill10CDEdit.Text);
      WriteBool('������','������ 10 ����', Skill10IF.Checked);
      WriteString('������','������ 10 ���� ��', Skill10IFHPEdit.Text);
      WriteString('������','������ 10 ���� ��', Skill10IFMPEdit.Text);
      WriteBool('������','������ 10 ���� �� �', Skill10IFHPMore.Checked);
      WriteBool('������','������ 10 ���� �� �', Skill10IFHPLow.Checked);
      WriteBool('������','������ 10 ���� �� �', Skill10IFMPMore.Checked);
      WriteBool('������','������ 10 ���� �� �', Skill10IFMPLow.Checked);

      WriteBool('������','������ 11 ���', Skill11IsUse.Checked);
      WriteBool('������','������ 11 ���������', Skill11IsUseLast.Checked);
      WriteInteger('������','������ 11 ������', Skill11KeyEdit.HotKey);
      WriteString('������','������ 11 �����', Skill11CDEdit.Text);
      WriteBool('������','������ 11 ����', Skill11IF.Checked);
      WriteString('������','������ 11 ���� ��', Skill11IFHPEdit.Text);
      WriteString('������','������ 11 ���� ��', Skill11IFMPEdit.Text);
      WriteBool('������','������ 11 ���� �� �', Skill11IFHPMore.Checked);
      WriteBool('������','������ 11 ���� �� �', Skill11IFHPLow.Checked);
      WriteBool('������','������ 11 ���� �� �', Skill11IFMPMore.Checked);
      WriteBool('������','������ 11 ���� �� �', Skill11IFMPLow.Checked);

      WriteBool('������','������ 12 ���', Skill12IsUse.Checked);
      WriteBool('������','������ 12 ���������', Skill12IsUseLast.Checked);
      WriteInteger('������','������ 12 ������', Skill12KeyEdit.HotKey);
      WriteString('������','������ 12 �����', Skill12CDEdit.Text);
      WriteBool('������','������ 12 ����', Skill12IF.Checked);
      WriteString('������','������ 12 ���� ��', Skill12IFHPEdit.Text);
      WriteString('������','������ 12 ���� ��', Skill12IFMPEdit.Text);
      WriteBool('������','������ 12 ���� �� �', Skill12IFHPMore.Checked);
      WriteBool('������','������ 12 ���� �� �', Skill12IFHPLow.Checked);
      WriteBool('������','������ 12 ���� �� �', Skill12IFMPMore.Checked);
      WriteBool('������','������ 12 ���� �� �', Skill12IFMPLow.Checked);

      if RebuffClicksX.Count>0 then
      begin
        WriteString('������','���������� ������', inttostr(RebuffClicksX.Count));
        for RebuffClicks:=0 to RebuffClicksX.Count-1 do
          begin
            WriteString('������','���������� X['+inttostr(RebuffClicks)+']', RebuffClicksX.Items.Strings[RebuffClicks]);
            WriteString('������','���������� Y['+inttostr(RebuffClicks)+']', RebuffClicksY.Items.Strings[RebuffClicks]);
        end;
       end;
    end;
end;


{�������� ��������}
procedure TBOT.OpenSettingsClick(Sender: TObject);
var
  Ini: Tinifile;
  RebuffClicks,i: integer;
begin
  if OpenDialog1.Execute then
  with TInifile.Create(OpenDialog1.FileName) Do
    begin
      Skill1IsUse.Checked:=ReadBool('������','������ 1 ���',Skill1IsUse.Checked);
      Skill1IsUseLast.Checked:=ReadBool('������','������ 1 ���������',Skill1IsUseLast.Checked);
      Skill1KeyEdit.HotKey:=ReadInteger('������','������ 1 ������', Skill1KeyEdit.HotKey);
      Skill1CDEdit.Text:=ReadString('������','������ 1 �����', Skill1CDEdit.Text);
      Skill1IF.Checked:=ReadBool('������','������ 1 ����',Skill1IF.Checked);
      Skill1IFHPEdit.Text:=ReadString('������','������ 1 ���� ��', Skill1IFHPEdit.Text);
      Skill1IFMPEdit.Text:=ReadString('������','������ 1 ���� ��', Skill1IFMPEdit.Text);
      Skill1CDEdit.Text:=ReadString('������','������ 1 �����', Skill1CDEdit.Text);
      Skill1IFHPMore.Checked:=ReadBool('������','������ 1 ���� �� �',Skill1IFHPMore.Checked);
      Skill1IFHPLow.Checked:=ReadBool('������','������ 1 ���� �� �',Skill1IFHPLow.Checked);
      Skill1IFMPMore.Checked:=ReadBool('������','������ 1 ���� �� �',Skill1IFMPMore.Checked);
      Skill1IFMPLow.Checked:=ReadBool('������','������ 1 ���� �� �',Skill1IFMPLow.Checked);

      Skill2IsUse.Checked:=ReadBool('������','������ 2 ���',Skill2IsUse.Checked);
      Skill2IsUseLast.Checked:=ReadBool('������','������ 2 ���������',Skill2IsUseLast.Checked);
      Skill2KeyEdit.HotKey:=ReadInteger('������','������ 2 ������', Skill2KeyEdit.HotKey);
      Skill2CDEdit.Text:=ReadString('������','������ 2 �����', Skill2CDEdit.Text);
      Skill2IF.Checked:=ReadBool('������','������ 2 ����',Skill2IF.Checked);
      Skill2IFHPEdit.Text:=ReadString('������','������ 2 ���� ��', Skill2IFHPEdit.Text);
      Skill2IFMPEdit.Text:=ReadString('������','������ 2 ���� ��', Skill2IFMPEdit.Text);
      Skill2CDEdit.Text:=ReadString('������','������ 2 �����', Skill2CDEdit.Text);
      Skill2IFHPMore.Checked:=ReadBool('������','������ 2 ���� �� �',Skill2IFHPMore.Checked);
      Skill2IFHPLow.Checked:=ReadBool('������','������ 2 ���� �� �',Skill2IFHPLow.Checked);
      Skill2IFMPMore.Checked:=ReadBool('������','������ 2 ���� �� �',Skill2IFMPMore.Checked);
      Skill2IFMPLow.Checked:=ReadBool('������','������ 2 ���� �� �',Skill2IFMPLow.Checked);

      Skill3IsUse.Checked:=ReadBool('������','������ 3 ���',Skill3IsUse.Checked);
      Skill3IsUseLast.Checked:=ReadBool('������','������ 3 ���������',Skill3IsUseLast.Checked);
      Skill3KeyEdit.HotKey:=ReadInteger('������','������ 3 ������', Skill3KeyEdit.HotKey);
      Skill3CDEdit.Text:=ReadString('������','������ 3 �����', Skill3CDEdit.Text);
      Skill3IF.Checked:=ReadBool('������','������ 3 ����',Skill3IF.Checked);
      Skill3IFHPEdit.Text:=ReadString('������','������ 3 ���� ��', Skill3IFHPEdit.Text);
      Skill3IFMPEdit.Text:=ReadString('������','������ 3 ���� ��', Skill3IFMPEdit.Text);
      Skill3CDEdit.Text:=ReadString('������','������ 3 �����', Skill3CDEdit.Text);
      Skill3IFHPMore.Checked:=ReadBool('������','������ 3 ���� �� �',Skill3IFHPMore.Checked);
      Skill3IFHPLow.Checked:=ReadBool('������','������ 3 ���� �� �',Skill3IFHPLow.Checked);
      Skill3IFMPMore.Checked:=ReadBool('������','������ 3 ���� �� �',Skill3IFMPMore.Checked);
      Skill3IFMPLow.Checked:=ReadBool('������','������ 3 ���� �� �',Skill3IFMPLow.Checked);

      Skill4IsUse.Checked:=ReadBool('������','������ 4 ���',Skill4IsUse.Checked);
      Skill4IsUseLast.Checked:=ReadBool('������','������ 4 ���������',Skill4IsUseLast.Checked);
      Skill4KeyEdit.HotKey:=ReadInteger('������','������ 4 ������', Skill4KeyEdit.HotKey);
      Skill4CDEdit.Text:=ReadString('������','������ 4 �����', Skill4CDEdit.Text);
      Skill4IF.Checked:=ReadBool('������','������ 4 ����',Skill4IF.Checked);
      Skill4IFHPEdit.Text:=ReadString('������','������ 4 ���� ��', Skill4IFHPEdit.Text);
      Skill4IFMPEdit.Text:=ReadString('������','������ 4 ���� ��', Skill4IFMPEdit.Text);
      Skill4CDEdit.Text:=ReadString('������','������ 4 �����', Skill4CDEdit.Text);
      Skill4IFHPMore.Checked:=ReadBool('������','������ 4 ���� �� �',Skill4IFHPMore.Checked);
      Skill4IFHPLow.Checked:=ReadBool('������','������ 4 ���� �� �',Skill4IFHPLow.Checked);
      Skill4IFMPMore.Checked:=ReadBool('������','������ 4 ���� �� �',Skill4IFMPMore.Checked);
      Skill4IFMPLow.Checked:=ReadBool('������','������ 4 ���� �� �',Skill4IFMPLow.Checked);

      Skill5IsUse.Checked:=ReadBool('������','������ 5 ���',Skill5IsUse.Checked);
      Skill5IsUseLast.Checked:=ReadBool('������','������ 5 ���������',Skill5IsUseLast.Checked);
      Skill5KeyEdit.HotKey:=ReadInteger('������','������ 5 ������', Skill5KeyEdit.HotKey);
      Skill5CDEdit.Text:=ReadString('������','������ 5 �����', Skill5CDEdit.Text);
      Skill5IF.Checked:=ReadBool('������','������ 5 ����',Skill5IF.Checked);
      Skill5IFHPEdit.Text:=ReadString('������','������ 5 ���� ��', Skill5IFHPEdit.Text);
      Skill5IFMPEdit.Text:=ReadString('������','������ 5 ���� ��', Skill5IFMPEdit.Text);
      Skill5CDEdit.Text:=ReadString('������','������ 5 �����', Skill5CDEdit.Text);
      Skill5IFHPMore.Checked:=ReadBool('������','������ 5 ���� �� �',Skill5IFHPMore.Checked);
      Skill5IFHPLow.Checked:=ReadBool('������','������ 5 ���� �� �',Skill5IFHPLow.Checked);
      Skill5IFMPMore.Checked:=ReadBool('������','������ 5 ���� �� �',Skill5IFMPMore.Checked);
      Skill5IFMPLow.Checked:=ReadBool('������','������ 5 ���� �� �',Skill5IFMPLow.Checked);

      Skill6IsUse.Checked:=ReadBool('������','������ 6 ���',Skill6IsUse.Checked);
      Skill6IsUseLast.Checked:=ReadBool('������','������ 6 ���������',Skill6IsUseLast.Checked);
      Skill6KeyEdit.HotKey:=ReadInteger('������','������ 6 ������', Skill6KeyEdit.HotKey);
      Skill6CDEdit.Text:=ReadString('������','������ 6 �����', Skill6CDEdit.Text);
      Skill6IF.Checked:=ReadBool('������','������ 6 ����',Skill6IF.Checked);
      Skill6IFHPEdit.Text:=ReadString('������','������ 6 ���� ��', Skill6IFHPEdit.Text);
      Skill6IFMPEdit.Text:=ReadString('������','������ 6 ���� ��', Skill6IFMPEdit.Text);
      Skill6CDEdit.Text:=ReadString('������','������ 6 �����', Skill6CDEdit.Text);
      Skill6IFHPMore.Checked:=ReadBool('������','������ 6 ���� �� �',Skill6IFHPMore.Checked);
      Skill6IFHPLow.Checked:=ReadBool('������','������ 6 ���� �� �',Skill6IFHPLow.Checked);
      Skill6IFMPMore.Checked:=ReadBool('������','������ 6 ���� �� �',Skill6IFMPMore.Checked);
      Skill6IFMPLow.Checked:=ReadBool('������','������ 6 ���� �� �',Skill6IFMPLow.Checked);

      Skill7IsUse.Checked:=ReadBool('������','������ 7 ���',Skill7IsUse.Checked);
      Skill7IsUseLast.Checked:=ReadBool('������','������ 7 ���������',Skill7IsUseLast.Checked);
      Skill7KeyEdit.HotKey:=ReadInteger('������','������ 7 ������', Skill7KeyEdit.HotKey);
      Skill7CDEdit.Text:=ReadString('������','������ 7 �����', Skill7CDEdit.Text);
      Skill7IF.Checked:=ReadBool('������','������ 7 ����',Skill7IF.Checked);
      Skill7IFHPEdit.Text:=ReadString('������','������ 7 ���� ��', Skill7IFHPEdit.Text);
      Skill7IFMPEdit.Text:=ReadString('������','������ 7 ���� ��', Skill7IFMPEdit.Text);
      Skill7CDEdit.Text:=ReadString('������','������ 7 �����', Skill7CDEdit.Text);
      Skill7IFHPMore.Checked:=ReadBool('������','������ 7 ���� �� �',Skill7IFHPMore.Checked);
      Skill7IFHPLow.Checked:=ReadBool('������','������ 7 ���� �� �',Skill7IFHPLow.Checked);
      Skill7IFMPMore.Checked:=ReadBool('������','������ 7 ���� �� �',Skill7IFMPMore.Checked);
      Skill7IFMPLow.Checked:=ReadBool('������','������ 7 ���� �� �',Skill7IFMPLow.Checked);

      Skill8IsUse.Checked:=ReadBool('������','������ 8 ���',Skill8IsUse.Checked);
      Skill8IsUseLast.Checked:=ReadBool('������','������ 8 ���������',Skill8IsUseLast.Checked);
      Skill8KeyEdit.HotKey:=ReadInteger('������','������ 8 ������', Skill8KeyEdit.HotKey);
      Skill8CDEdit.Text:=ReadString('������','������ 8 �����', Skill8CDEdit.Text);
      Skill8IF.Checked:=ReadBool('������','������ 8 ����',Skill8IF.Checked);
      Skill8IFHPEdit.Text:=ReadString('������','������ 8 ���� ��', Skill8IFHPEdit.Text);
      Skill8IFMPEdit.Text:=ReadString('������','������ 8 ���� ��', Skill8IFMPEdit.Text);
      Skill8CDEdit.Text:=ReadString('������','������ 8 �����', Skill8CDEdit.Text);
      Skill8IFHPMore.Checked:=ReadBool('������','������ 8 ���� �� �',Skill8IFHPMore.Checked);
      Skill8IFHPLow.Checked:=ReadBool('������','������ 8 ���� �� �',Skill8IFHPLow.Checked);
      Skill8IFMPMore.Checked:=ReadBool('������','������ 8 ���� �� �',Skill8IFMPMore.Checked);
      Skill8IFMPLow.Checked:=ReadBool('������','������ 8 ���� �� �',Skill8IFMPLow.Checked);

      Skill9IsUse.Checked:=ReadBool('������','������ 9 ���',Skill9IsUse.Checked);
      Skill9IsUseLast.Checked:=ReadBool('������','������ 9 ���������',Skill9IsUseLast.Checked);
      Skill9KeyEdit.HotKey:=ReadInteger('������','������ 9 ������', Skill9KeyEdit.HotKey);
      Skill9CDEdit.Text:=ReadString('������','������ 9 �����', Skill9CDEdit.Text);
      Skill9IF.Checked:=ReadBool('������','������ 9 ����',Skill9IF.Checked);
      Skill9IFHPEdit.Text:=ReadString('������','������ 9 ���� ��', Skill9IFHPEdit.Text);
      Skill9IFMPEdit.Text:=ReadString('������','������ 9 ���� ��', Skill9IFMPEdit.Text);
      Skill9CDEdit.Text:=ReadString('������','������ 9 �����', Skill9CDEdit.Text);
      Skill9IFHPMore.Checked:=ReadBool('������','������ 9 ���� �� �',Skill9IFHPMore.Checked);
      Skill9IFHPLow.Checked:=ReadBool('������','������ 9 ���� �� �',Skill9IFHPLow.Checked);
      Skill9IFMPMore.Checked:=ReadBool('������','������ 9 ���� �� �',Skill9IFMPMore.Checked);
      Skill9IFMPLow.Checked:=ReadBool('������','������ 9 ���� �� �',Skill9IFMPLow.Checked);

      Skill10IsUse.Checked:=ReadBool('������','������ 10 ���',Skill10IsUse.Checked);
      Skill10IsUseLast.Checked:=ReadBool('������','������ 10 ���������',Skill10IsUseLast.Checked);
      Skill10KeyEdit.HotKey:=ReadInteger('������','������ 10 ������', Skill10KeyEdit.HotKey);
      Skill10CDEdit.Text:=ReadString('������','������ 10 �����', Skill10CDEdit.Text);
      Skill10IF.Checked:=ReadBool('������','������ 10 ����',Skill10IF.Checked);
      Skill10IFHPEdit.Text:=ReadString('������','������ 10 ���� ��', Skill10IFHPEdit.Text);
      Skill10IFMPEdit.Text:=ReadString('������','������ 10 ���� ��', Skill10IFMPEdit.Text);
      Skill10CDEdit.Text:=ReadString('������','������ 10 �����', Skill10CDEdit.Text);
      Skill10IFHPMore.Checked:=ReadBool('������','������ 10 ���� �� �',Skill10IFHPMore.Checked);
      Skill10IFHPLow.Checked:=ReadBool('������','������ 10 ���� �� �',Skill10IFHPLow.Checked);
      Skill10IFMPMore.Checked:=ReadBool('������','������ 10 ���� �� �',Skill10IFMPMore.Checked);
      Skill10IFMPLow.Checked:=ReadBool('������','������ 10 ���� �� �',Skill10IFMPLow.Checked);

      Skill11IsUse.Checked:=ReadBool('������','������ 11 ���',Skill11IsUse.Checked);
      Skill11IsUseLast.Checked:=ReadBool('������','������ 11 ���������',Skill11IsUseLast.Checked);
      Skill11KeyEdit.HotKey:=ReadInteger('������','������ 11 ������', Skill11KeyEdit.HotKey);
      Skill11CDEdit.Text:=ReadString('������','������ 11 �����', Skill11CDEdit.Text);
      Skill11IF.Checked:=ReadBool('������','������ 11 ����',Skill11IF.Checked);
      Skill11IFHPEdit.Text:=ReadString('������','������ 11 ���� ��', Skill11IFHPEdit.Text);
      Skill11IFMPEdit.Text:=ReadString('������','������ 11 ���� ��', Skill11IFMPEdit.Text);
      Skill11CDEdit.Text:=ReadString('������','������ 11 �����', Skill11CDEdit.Text);
      Skill11IFHPMore.Checked:=ReadBool('������','������ 11 ���� �� �',Skill11IFHPMore.Checked);
      Skill11IFHPLow.Checked:=ReadBool('������','������ 11 ���� �� �',Skill11IFHPLow.Checked);
      Skill11IFMPMore.Checked:=ReadBool('������','������ 11 ���� �� �',Skill11IFMPMore.Checked);
      Skill11IFMPLow.Checked:=ReadBool('������','������ 11 ���� �� �',Skill11IFMPLow.Checked);

      Skill12IsUse.Checked:=ReadBool('������','������ 12 ���',Skill12IsUse.Checked);
      Skill12IsUseLast.Checked:=ReadBool('������','������ 1 ���������',Skill12IsUseLast.Checked);
      Skill12KeyEdit.HotKey:=ReadInteger('������','������ 12 ������', Skill12KeyEdit.HotKey);
      Skill12CDEdit.Text:=ReadString('������','������ 12 �����', Skill12CDEdit.Text);
      Skill12IF.Checked:=ReadBool('������','������ 12 ����',Skill12IF.Checked);
      Skill12IFHPEdit.Text:=ReadString('������','������ 12 ���� ��', Skill12IFHPEdit.Text);
      Skill12IFMPEdit.Text:=ReadString('������','������ 12 ���� ��', Skill12IFMPEdit.Text);
      Skill12CDEdit.Text:=ReadString('������','������ 12 �����', Skill12CDEdit.Text);
      Skill12IFHPMore.Checked:=ReadBool('������','������ 12 ���� �� �',Skill12IFHPMore.Checked);
      Skill12IFHPLow.Checked:=ReadBool('������','������ 12 ���� �� �',Skill12IFHPLow.Checked);
      Skill12IFMPMore.Checked:=ReadBool('������','������ 12 ���� �� �',Skill12IFMPMore.Checked);
      Skill12IFMPLow.Checked:=ReadBool('������','������ 12 ���� �� �',Skill12IFMPLow.Checked);

      RebuffClicks:=ReadInteger('������','���������� ������', RebuffClicks);
      if RebuffClicks>0 then
      begin
        for i:=0 to RebuffClicks-1 do
          begin
            RebuffClicksX.Items.Add(ReadString('������','���������� X['+inttostr(i)+']', '0'));
            RebuffClicksY.Items.Add(ReadString('������','���������� Y['+inttostr(i)+']', '0'));
        end;
       end;
    end;
end;

//* ============================== ������ =======================*//
//====== ����� =======//
{ TCur�P }
procedure TCurCP.Execute;
begin
  synchronize(getINF);
  Address:=TBaseAddress+$0077CDF8;
  GetWindowThreadProcessId(TWND ,TPID);
  h:=OpenProcess(PROCESS_ALL_ACCESS,False,TPID);   {�������� ������ � ��������}
      ReadProcessMemory(h, Pointer(address), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$3A4), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$BC), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$360), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$34), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$240), @buf, SIZE_T(4), outbytes);  {������ ������}
      TResult:=buf;
      synchronize(Result);
  closehandle(h);
  {�������������� � ������� �� ���}
  if BOT.InfoTipIsAttack.Checked=True then
  begin
    if TResult<BOT.MaxCP then
    begin
      BOT.TrayIcon1.BalloonTitle:='������ �� ���';
      BOT.TrayIcon1.BalloonHint:='��� ������� ����������� �� �� ��������. �������� ��� �������� �������� �� ���.';
      BOT.TrayIcon1.ShowBalloonHint;
    end;
  end;
end;
procedure TCurCP.getINF;
begin
  TPID:=BOT.WorkPID;
  TBaseAddress:=BOT.BaseAddress;
  TWND:=Bot.WorkWND;
end;
procedure TCurCP.result;
begin
  BOT.CurCPLabel.Caption:=inttostr(TResult);
  CurCP:=TResult;
  BOT.CPBar.Position:=TResult;
end;

{ TMax�P }
procedure TMaxCP.Execute;
begin
  synchronize(getINF);
  Address:=TBaseAddress+$0077CDF8;
  GetWindowThreadProcessId(TWND ,TPID);
  h:=OpenProcess(PROCESS_ALL_ACCESS,False,TPID);   {�������� ������ � ��������}
      ReadProcessMemory(h, Pointer(address), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$3A4), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$BC), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$360), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$34), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$238), @buf, SIZE_T(4), outbytes);  {������ ������}
      TResult:=buf;
      synchronize(Result);
  closehandle(h);
end;
procedure TMaxCP.getINF;
begin
  TPID:=BOT.WorkPID;
  TBaseAddress:=BOT.BaseAddress;
  TWND:=Bot.WorkWND;
end;
procedure TMaxCP.result;
begin
  BOT.MaxCPLabel.Caption:=inttostr(TResult);
  MaxCP:=TResult;
  BOT.CPBar.Max:=TResult;
end;

{ TCurHP }
procedure TCurHP.Execute;
begin
  synchronize(getINF);
  Address:=TBaseAddress+$0077CDF8;
  GetWindowThreadProcessId(TWND ,TPID);
  h:=OpenProcess(PROCESS_ALL_ACCESS,False,TPID);   {�������� ������ � ��������}
      ReadProcessMemory(h, Pointer(address), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$3A4), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$BC), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$364), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$34), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$240), @buf, SIZE_T(4), outbytes);  {������ ������}
      TResult:=buf;
      synchronize(Result);
  closehandle(h);
  if TResult=0 then BOT.ShutDown; {���� �� 0, �� ��������� ���������}
  {�������������� � ����� ������ ��������}
  if BOT.InfoTipIsLowHp.Checked=True then
  begin
    if TResult<1000 then
    begin
      BOT.TrayIcon1.BalloonTitle:='����� ����� ��������';
      BOT.TrayIcon1.BalloonHint:='� ������ ��������� ����� ��������� ����� ��������.';
      BOT.TrayIcon1.ShowBalloonHint;
    end;
  end;
  {�������������� � ����� ������ ��������}
  if BOT.InfoTipIsDie.Checked=True then
  begin
    if TResult<=0 then
    begin
      BOT.TrayIcon1.BalloonTitle:='�������� ����';
      BOT.TrayIcon1.BalloonHint:='��� �������� �����.';
      BOT.TrayIcon1.ShowBalloonHint;
    end;
  end;
end;
procedure TCurHP.getINF;
begin
  TPID:=BOT.WorkPID;
  TBaseAddress:=BOT.BaseAddress;
  TWND:=Bot.WorkWND;
end;
procedure TCurHP.result;
begin
  BOT.CurHPLabel.Caption:=inttostr(TResult);
  CurHP:=TResult;
  BOT.HPBar.Position:=TResult;
end;

{ TMaxHP }
procedure TMaxHP.Execute;
begin
  synchronize(getINF);
  Address:=TBaseAddress+$0077CDF8;
  GetWindowThreadProcessId(TWND ,TPID);
  h:=OpenProcess(PROCESS_ALL_ACCESS,False,TPID);   {�������� ������ � ��������}
      ReadProcessMemory(h, Pointer(address), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$3A4), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$BC), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$364), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$34), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$238), @buf, SIZE_T(4), outbytes);  {������ ������}
      TResult:=buf;
      synchronize(Result);
  closehandle(h);
end;
procedure TMaxHP.getINF;
begin
  TPID:=BOT.WorkPID;
  TBaseAddress:=BOT.BaseAddress;
  TWND:=Bot.WorkWND;
end;
procedure TMaxHP.result;
begin
  BOT.MaxHPLabel.Caption:=inttostr(TResult);
  MaxHP:=TResult;
  BOT.HPBar.Max:=TResult;
end;

{ TMaxMP }
procedure TMaxMP.Execute;
begin
  synchronize(getINF);
  Address:=TBaseAddress+$0077CDF8;
  GetWindowThreadProcessId(TWND ,TPID);
  h:=OpenProcess(PROCESS_ALL_ACCESS,False,TPID);   {�������� ������ � ��������}
      ReadProcessMemory(h, Pointer(address), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$3A4), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$BC), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$368), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$34), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$238), @buf, SIZE_T(4), outbytes);  {������ ������}
      TResult:=buf;
      synchronize(Result);
  closehandle(h);
end;
procedure TMaxMP.getINF;
begin
  TPID:=BOT.WorkPID;
  TBaseAddress:=BOT.BaseAddress;
  TWND:=Bot.WorkWND;
end;
procedure TMaxMP.result;
begin
  BOT.MaxMPLabel.Caption:=inttostr(TResult);
  MaxMP:=TResult;
  BOT.MPBar.Max:=TResult;
end;

{ TCurMP }
procedure TCurMP.Execute;
begin
  synchronize(getINF);
  Address:=TBaseAddress+$0077CDF8;
  GetWindowThreadProcessId(TWND ,TPID);
  h:=OpenProcess(PROCESS_ALL_ACCESS,False,TPID);   {�������� ������ � ��������}
      ReadProcessMemory(h, Pointer(address), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$3A4), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$BC), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$368), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$34), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$240), @buf, SIZE_T(4), outbytes);  {������ ������}
      TResult:=buf;
      synchronize(Result);
  closehandle(h);
end;
procedure TCurMP.getINF;
begin
  TPID:=BOT.WorkPID;
  TBaseAddress:=BOT.BaseAddress;
  TWND:=Bot.WorkWND;
end;
procedure TCurMP.result;
begin
  BOT.CurMPLabel.Caption:=inttostr(TResult);
  CurMP:=TResult;
  BOT.MPBar.Position:=TResult;
end;

{ TTargetCheck }
procedure TTargetCheck.Execute;
begin
  synchronize(getINF);
  Address:=TBaseAddress+$0077CDF8;
  GetWindowThreadProcessId(TWND ,TPID);
  h:=OpenProcess(PROCESS_ALL_ACCESS,False,TPID);   {�������� ������ � ��������}
      ReadProcessMemory(h, Pointer(address), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$3A4), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$BC), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$188), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$C), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$78), @buf, SIZE_T(4), outbytes);  {������ ������}
      TResult:=buf;
      synchronize(Result);
  closehandle(h);
end;
procedure TTargetCheck.getINF;
begin
  TPID:=BOT.WorkPID;
  TBaseAddress:=BOT.BaseAddress;
  TWND:=Bot.WorkWND;
end;
procedure TTargetCheck.result;
begin
  if TResult=2 then
  begin
    BOT.IsTargetLabel.Caption:='True';
    BOT.IsTarget:=True;
  end
  else
  begin
    BOT.IsTargetLabel.Caption:='False';
    BOT.IsTarget:=False;
  end;
end;

{ TTargetHP }
procedure TTargetHP.Execute;
begin
  synchronize(getINF);
  Address:=TBaseAddress+$0077CDF8;
  GetWindowThreadProcessId(TWND ,TPID);
  h:=OpenProcess(PROCESS_ALL_ACCESS,False,TPID);   {�������� ������ � ��������}
      ReadProcessMemory(h, Pointer(address), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$3A4), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$BC), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$2B4), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$34), @buf, SIZE_T(4), outbytes);  {������ ������}
      ReadProcessMemory(h, Pointer(buf+$204), @buf, SIZE_T(4), outbytes);  {������ ������}
      TResult:=buf;
      synchronize(Result);
  closehandle(h);
end;
procedure TTargetHP.getINF;
begin
  TPID:=BOT.WorkPID;
  TBaseAddress:=BOT.BaseAddress;
  TWND:=Bot.WorkWND;
end;
procedure TTargetHP.result;
begin
  BOT.TargetHP:=TResult;
  BOT.TargetHPLabel.Caption:=inttostr(TResult);
end;

{ TLastMob }
procedure TLastMob.Execute;
var
  i:integer;
  IsCombo, IsAgain{����� ������}:boolean;
begin
  BOT.TrayIcon1.BalloonTitle:='���������';
  BOT.TrayIcon1.BalloonHint:='��� �������� ���������������� � �������.';
  BOT.TrayIcon1.ShowBalloonHint;
  synchronize(getINF);
  IsCombo:=true;
  while IsCombo=True and not terminated do
    begin
      IsAgain:=False;
      // ����� ��� ���������
      BOT.LASTMOBEnable;
      // ����� ��� ���������
      SendMessage(TWND,WM_KEYDOWN,StrToInt('$31'),0);
      TLastMob.Sleep(500);
      if BOT.TargetHP=0 then  SendMessage(TWND,WM_KEYDOWN,StrToInt('$1B'),0);
      TLastMob.Sleep(1000);
      if BOT.istarget=false then
        begin
        BOT.LASTMOBDisable;
          for i:=0 to 150 do
            begin
              TLastMob.Sleep(100);
              if BOT.istarget=true then
                begin
                 IsAgain:=True;
                 break;
                end;
            end;
          if IsAgain=true then Continue;
          isCombo:=False;
          {��������� ����� �� �������� �����}
          BOT.TrayIcon1.BalloonTitle:='������ �������';
          BOT.TrayIcon1.BalloonHint:='��� ������ ����������� ����� 5 ������. ����������, �� ��������� ������� �������.';
          BOT.TrayIcon1.ShowBalloonHint;
          {���� ����� 5 ��� ����� ����������}
          TLastMob.Sleep(5000);
          RebuffHandle:=TRebuff.Create(true);
          RebuffHandle.FreeOnTerminate:=true;
          RebuffHandle.Priority:=tpLower;
          RebuffHandle.Resume;
        end;
    end;

end;

procedure TLastMob.getINF;
begin
  TPID:=BOT.WorkPID;
  TBaseAddress:=BOT.BaseAddress;
  TWND:=Bot.WorkWND;
end;

{ TRebuff }
procedure TRebuff.Execute;
var
  i,X,Y:integer;
begin
  synchronize(getINF);
  SetWindowPos(TWND, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE); {������ ���� ����}
  SetForegroundWindow(TWND);
  TRebuff.sleep(3000);
  ShowWindow(TWND,SW_RESTORE);
  TRebuff.sleep(3000);
  SendMessage(TWND,WM_KEYDOWN,StrToInt('$42'),0);
  for i:=0 to (BOT.RebuffClicksX.Count)-1 do
    begin
      X:=strtoint(BOT.RebuffClicksX.Items.Strings[i]);
      Y:=strtoint(BOT.RebuffClicksY.Items.Strings[i]);
      SetCursorPos(x, y);
      TRebuff.sleep(2000);
      Mouse_Event(MOUSEEVENTF_LEFTDOWN, x, y, 0, 0);
      Mouse_Event(MOUSEEVENTF_LEFTUP, x, y, 0, 0);
    end;
  SendMessage(TWND,WM_KEYDOWN,StrToInt('$42'),0);
  TRebuff.Sleep(2000);
  X:=strtoint(BOT.RebuffClicksX.Items.Strings[0]);
  Y:=strtoint(BOT.RebuffClicksY.Items.Strings[0]);
  Mouse_Event(MOUSEEVENTF_LEFTDOWN, x, y, 0, 0);
  Mouse_Event(MOUSEEVENTF_LEFTUP, x, y, 0, 0);
  SetWindowPos(TWND, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE); {���������� ������ ���� ����}
  ShowWindow(TWND,SW_MINIMIZE);
  BOT.ENABLESKILLS;
  synchronize(result);
  BOT.TrayIcon1.BalloonTitle:='������ ��������';
  BOT.TrayIcon1.BalloonHint:='��� �����������, ����� ������ ���� ������.';
  BOT.TrayIcon1.ShowBalloonHint;
end;
procedure TRebuff.getINF;
begin
  TPID:=BOT.WorkPID;
  TBaseAddress:=BOT.BaseAddress;
  TWND:=Bot.WorkWND;
end;
procedure TRebuff.result;
begin
  BOT.ENABLESKILLS;
end;

//====== ����� =======//
{ TSkill1 }
procedure TSkill1.Execute;
begin
  synchronize(getINF);
  if Bot.Skill1IF.Checked then
    begin
      if BOT.Skill1IFHPMore.Checked then
         if CurHPinhandle>=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill1KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill1KeyEdit.HotKey,0);
          end;
      if BOT.Skill1IFHPLow.Checked then
         if CurHPinhandle<=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill1KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill1KeyEdit.HotKey,0);
          end;
      if BOT.Skill1IFMPMore.Checked then
         if CurMPinhandle>=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill1KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill1KeyEdit.HotKey,0);
          end;
      if BOT.Skill1IFMPLow.Checked then
         if CurMPinhandle<=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill1KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill1KeyEdit.HotKey,0);
          end;
    end
    else
      SendMessage(TWND,WM_KEYDOWN,BOT.Skill1KeyEdit.HotKey,0);
      SendMessage(TWND,WM_KEYUP,BOT.Skill1KeyEdit.HotKey,0);

end;
procedure TSkill1.getINF;
begin
  TWND:=Bot.WorkWND;
  CurHPinhandle:=strtoint(BOT.CurHPLabel.Caption);
  IFHPinHandle:=strtoint(BOT.Skill1IFHPEdit.Text);
  CurMPinhandle:=strtoint(BOT.CurMPLabel.Caption);
  IFMPinHandle:=strtoint(BOT.Skill1IFMPEdit.Text);
end;

{ TSkill2 }
procedure TSkill2.Execute;
begin
  synchronize(getINF);
  if Bot.Skill2IF.Checked then
    begin
      if BOT.Skill2IFHPMore.Checked then
         if CurHPinhandle>=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill2KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill2KeyEdit.HotKey,0);
          end;
      if BOT.Skill2IFHPLow.Checked then
         if CurHPinhandle<=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill2KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill2KeyEdit.HotKey,0);
          end;
      if BOT.Skill2IFMPMore.Checked then
         if CurMPinhandle>=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill2KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill2KeyEdit.HotKey,0);
          end;
      if BOT.Skill2IFMPLow.Checked then
         if CurMPinhandle<=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill2KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill2KeyEdit.HotKey,0);
          end;
    end
    else
      SendMessage(TWND,WM_KEYDOWN,BOT.Skill2KeyEdit.HotKey,0);
      SendMessage(TWND,WM_KEYUP,BOT.Skill2KeyEdit.HotKey,0);

end;
procedure TSkill2.getINF;
begin
  TWND:=Bot.WorkWND;
  CurHPinhandle:=strtoint(BOT.CurHPLabel.Caption);
  IFHPinHandle:=strtoint(BOT.Skill2IFHPEdit.Text);
  CurMPinhandle:=strtoint(BOT.CurMPLabel.Caption);
  IFMPinHandle:=strtoint(BOT.Skill2IFMPEdit.Text);
end;

{ TSkill3 }
procedure TSkill3.Execute;
begin
  synchronize(getINF);
  if Bot.Skill3IF.Checked then
    begin
      if BOT.Skill3IFHPMore.Checked then
         if CurHPinhandle>=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill3KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill3KeyEdit.HotKey,0);
          end;
      if BOT.Skill3IFHPLow.Checked then
         if CurHPinhandle<=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill3KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill3KeyEdit.HotKey,0);
          end;
      if BOT.Skill3IFMPMore.Checked then
         if CurMPinhandle>=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill3KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill3KeyEdit.HotKey,0);
          end;
      if BOT.Skill3IFMPLow.Checked then
         if CurMPinhandle<=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill3KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill3KeyEdit.HotKey,0);
          end;
    end
    else
      SendMessage(TWND,WM_KEYDOWN,BOT.Skill3KeyEdit.HotKey,0);
      SendMessage(TWND,WM_KEYUP,BOT.Skill3KeyEdit.HotKey,0);

end;
procedure TSkill3.getINF;
begin
  TWND:=Bot.WorkWND;
  CurHPinhandle:=strtoint(BOT.CurHPLabel.Caption);
  IFHPinHandle:=strtoint(BOT.Skill3IFHPEdit.Text);
  CurMPinhandle:=strtoint(BOT.CurMPLabel.Caption);
  IFMPinHandle:=strtoint(BOT.Skill3IFMPEdit.Text);
end;

{ TSkill4 }
procedure TSkill4.Execute;
begin
  synchronize(getINF);
  if Bot.Skill4IF.Checked then
    begin
      if BOT.Skill4IFHPMore.Checked then
         if CurHPinhandle>=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill4KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill4KeyEdit.HotKey,0);
          end;
      if BOT.Skill4IFHPLow.Checked then
         if CurHPinhandle<=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill4KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill4KeyEdit.HotKey,0);
          end;
      if BOT.Skill4IFMPMore.Checked then
         if CurMPinhandle>=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill4KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill4KeyEdit.HotKey,0);
          end;
      if BOT.Skill4IFMPLow.Checked then
         if CurMPinhandle<=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill4KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill4KeyEdit.HotKey,0);
          end;
    end
    else
      SendMessage(TWND,WM_KEYDOWN,BOT.Skill4KeyEdit.HotKey,0);
      SendMessage(TWND,WM_KEYUP,BOT.Skill4KeyEdit.HotKey,0);

end;
procedure TSkill4.getINF;
begin
  TWND:=Bot.WorkWND;
  CurHPinhandle:=strtoint(BOT.CurHPLabel.Caption);
  IFHPinHandle:=strtoint(BOT.Skill4IFHPEdit.Text);
  CurMPinhandle:=strtoint(BOT.CurMPLabel.Caption);
  IFMPinHandle:=strtoint(BOT.Skill4IFMPEdit.Text);
end;

{ TSkill5 }
procedure TSkill5.Execute;
begin
  synchronize(getINF);
  if Bot.Skill5IF.Checked then
    begin
      if BOT.Skill5IFHPMore.Checked then
         if CurHPinhandle>=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill5KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill5KeyEdit.HotKey,0);
          end;
      if BOT.Skill5IFHPLow.Checked then
         if CurHPinhandle<=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill5KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill5KeyEdit.HotKey,0);
          end;
      if BOT.Skill5IFMPMore.Checked then
         if CurMPinhandle>=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill5KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill5KeyEdit.HotKey,0);
          end;
      if BOT.Skill5IFMPLow.Checked then
         if CurMPinhandle<=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill5KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill5KeyEdit.HotKey,0);
          end;
    end
    else
      SendMessage(TWND,WM_KEYDOWN,BOT.Skill5KeyEdit.HotKey,0);
      SendMessage(TWND,WM_KEYUP,BOT.Skill5KeyEdit.HotKey,0);

end;
procedure TSkill5.getINF;
begin
  TWND:=Bot.WorkWND;
  CurHPinhandle:=strtoint(BOT.CurHPLabel.Caption);
  IFHPinHandle:=strtoint(BOT.Skill5IFHPEdit.Text);
  CurMPinhandle:=strtoint(BOT.CurMPLabel.Caption);
  IFMPinHandle:=strtoint(BOT.Skill5IFMPEdit.Text);
end;

{ TSkill6 }
procedure TSkill6.Execute;
begin
  synchronize(getINF);
  if Bot.Skill6IF.Checked then
    begin
      if BOT.Skill6IFHPMore.Checked then
         if CurHPinhandle>=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill6KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill6KeyEdit.HotKey,0);
          end;
      if BOT.Skill6IFHPLow.Checked then
         if CurHPinhandle<=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill6KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill6KeyEdit.HotKey,0);
          end;
      if BOT.Skill6IFMPMore.Checked then
         if CurMPinhandle>=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill6KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill6KeyEdit.HotKey,0);
          end;
      if BOT.Skill6IFMPLow.Checked then
         if CurMPinhandle<=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill6KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill6KeyEdit.HotKey,0);
          end;
    end
    else
      SendMessage(TWND,WM_KEYDOWN,BOT.Skill6KeyEdit.HotKey,0);
      SendMessage(TWND,WM_KEYUP,BOT.Skill6KeyEdit.HotKey,0);

end;
procedure TSkill6.getINF;
begin
  TWND:=Bot.WorkWND;
  CurHPinhandle:=strtoint(BOT.CurHPLabel.Caption);
  IFHPinHandle:=strtoint(BOT.Skill6IFHPEdit.Text);
  CurMPinhandle:=strtoint(BOT.CurMPLabel.Caption);
  IFMPinHandle:=strtoint(BOT.Skill6IFMPEdit.Text);
end;

{ TSkill7 }
procedure TSkill7.Execute;
begin
  synchronize(getINF);
  if Bot.Skill7IF.Checked then
    begin
      if BOT.Skill7IFHPMore.Checked then
         if CurHPinhandle>=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill7KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill7KeyEdit.HotKey,0);
          end;
      if BOT.Skill7IFHPLow.Checked then
         if CurHPinhandle<=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill7KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill7KeyEdit.HotKey,0);
          end;
      if BOT.Skill7IFMPMore.Checked then
         if CurMPinhandle>=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill7KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill7KeyEdit.HotKey,0);
          end;
      if BOT.Skill7IFMPLow.Checked then
         if CurMPinhandle<=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill7KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill7KeyEdit.HotKey,0);
          end;
    end
    else
      SendMessage(TWND,WM_KEYDOWN,BOT.Skill7KeyEdit.HotKey,0);
      SendMessage(TWND,WM_KEYUP,BOT.Skill7KeyEdit.HotKey,0);

end;
procedure TSkill7.getINF;
begin
  TWND:=Bot.WorkWND;
  CurHPinhandle:=strtoint(BOT.CurHPLabel.Caption);
  IFHPinHandle:=strtoint(BOT.Skill7IFHPEdit.Text);
  CurMPinhandle:=strtoint(BOT.CurMPLabel.Caption);
  IFMPinHandle:=strtoint(BOT.Skill7IFMPEdit.Text);
end;

 { TSkill8 }
procedure TSkill8.Execute;
begin
  synchronize(getINF);
  if Bot.Skill8IF.Checked then
    begin
      if BOT.Skill8IFHPMore.Checked then
         if CurHPinhandle>=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill8KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill8KeyEdit.HotKey,0);
          end;
      if BOT.Skill8IFHPLow.Checked then
         if CurHPinhandle<=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill8KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill8KeyEdit.HotKey,0);
          end;
      if BOT.Skill8IFMPMore.Checked then
         if CurMPinhandle>=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill8KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill8KeyEdit.HotKey,0);
          end;
      if BOT.Skill8IFMPLow.Checked then
         if CurMPinhandle<=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill8KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill8KeyEdit.HotKey,0);
          end;
    end
    else
      SendMessage(TWND,WM_KEYDOWN,BOT.Skill8KeyEdit.HotKey,0);
      SendMessage(TWND,WM_KEYUP,BOT.Skill8KeyEdit.HotKey,0);

end;
procedure TSkill8.getINF;
begin
  TWND:=Bot.WorkWND;
  CurHPinhandle:=strtoint(BOT.CurHPLabel.Caption);
  IFHPinHandle:=strtoint(BOT.Skill8IFHPEdit.Text);
  CurMPinhandle:=strtoint(BOT.CurMPLabel.Caption);
  IFMPinHandle:=strtoint(BOT.Skill8IFMPEdit.Text);
end;

{ TSkill9 }
procedure TSkill9.Execute;
begin
  synchronize(getINF);
  if Bot.Skill9IF.Checked then
    begin
      if BOT.Skill9IFHPMore.Checked then
         if CurHPinhandle>=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill9KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill9KeyEdit.HotKey,0);
          end;
      if BOT.Skill9IFHPLow.Checked then
         if CurHPinhandle<=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill9KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill9KeyEdit.HotKey,0);
          end;
      if BOT.Skill9IFMPMore.Checked then
         if CurMPinhandle>=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill9KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill9KeyEdit.HotKey,0);
          end;
      if BOT.Skill9IFMPLow.Checked then
         if CurMPinhandle<=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill9KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill9KeyEdit.HotKey,0);
          end;
    end
    else
      SendMessage(TWND,WM_KEYDOWN,BOT.Skill9KeyEdit.HotKey,0);
      SendMessage(TWND,WM_KEYUP,BOT.Skill9KeyEdit.HotKey,0);

end;
procedure TSkill9.getINF;
begin
  TWND:=Bot.WorkWND;
  CurHPinhandle:=strtoint(BOT.CurHPLabel.Caption);
  IFHPinHandle:=strtoint(BOT.Skill9IFHPEdit.Text);
  CurMPinhandle:=strtoint(BOT.CurMPLabel.Caption);
  IFMPinHandle:=strtoint(BOT.Skill9IFMPEdit.Text);
end;

{ TSkill10 }
procedure TSkill10.Execute;
begin
  synchronize(getINF);
  if Bot.Skill10IF.Checked then
    begin
      if BOT.Skill10IFHPMore.Checked then
         if CurHPinhandle>=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill10KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill10KeyEdit.HotKey,0);
          end;
      if BOT.Skill10IFHPLow.Checked then
         if CurHPinhandle<=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill10KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill10KeyEdit.HotKey,0);
          end;
      if BOT.Skill10IFMPMore.Checked then
         if CurMPinhandle>=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill10KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill10KeyEdit.HotKey,0);
          end;
      if BOT.Skill10IFMPLow.Checked then
         if CurMPinhandle<=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill10KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill10KeyEdit.HotKey,0);
          end;
    end
    else
      SendMessage(TWND,WM_KEYDOWN,BOT.Skill10KeyEdit.HotKey,0);
      SendMessage(TWND,WM_KEYUP,BOT.Skill10KeyEdit.HotKey,0);

end;
procedure TSkill10.getINF;
begin
  TWND:=Bot.WorkWND;
  CurHPinhandle:=strtoint(BOT.CurHPLabel.Caption);
  IFHPinHandle:=strtoint(BOT.Skill10IFHPEdit.Text);
  CurMPinhandle:=strtoint(BOT.CurMPLabel.Caption);
  IFMPinHandle:=strtoint(BOT.Skill10IFMPEdit.Text);
end;

{ TSkill11 }
procedure TSkill11.Execute;
begin
  synchronize(getINF);
  if Bot.Skill11IF.Checked then
    begin
      if BOT.Skill11IFHPMore.Checked then
         if CurHPinhandle>=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill11KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill11KeyEdit.HotKey,0);
          end;
      if BOT.Skill11IFHPLow.Checked then
         if CurHPinhandle<=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill11KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill11KeyEdit.HotKey,0);
          end;
      if BOT.Skill11IFMPMore.Checked then
         if CurMPinhandle>=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill11KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill11KeyEdit.HotKey,0);
          end;
      if BOT.Skill11IFMPLow.Checked then
         if CurMPinhandle<=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill11KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill11KeyEdit.HotKey,0);
          end;
    end
    else
      SendMessage(TWND,WM_KEYDOWN,BOT.Skill11KeyEdit.HotKey,0);
      SendMessage(TWND,WM_KEYUP,BOT.Skill11KeyEdit.HotKey,0);

end;
procedure TSkill11.getINF;
begin
  TWND:=Bot.WorkWND;
  CurHPinhandle:=strtoint(BOT.CurHPLabel.Caption);
  IFHPinHandle:=strtoint(BOT.Skill11IFHPEdit.Text);
  CurMPinhandle:=strtoint(BOT.CurMPLabel.Caption);
  IFMPinHandle:=strtoint(BOT.Skill11IFMPEdit.Text);
end;

{ TSkill12 }
procedure TSkill12.Execute;
begin
  synchronize(getINF);
  if Bot.Skill12IF.Checked then
    begin
      if BOT.Skill12IFHPMore.Checked then
         if CurHPinhandle>=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill12KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill12KeyEdit.HotKey,0);
          end;
      if BOT.Skill12IFHPLow.Checked then
         if CurHPinhandle<=IFHPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill12KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill12KeyEdit.HotKey,0);
          end;
      if BOT.Skill12IFMPMore.Checked then
         if CurMPinhandle>=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill12KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill12KeyEdit.HotKey,0);
          end;
      if BOT.Skill12IFMPLow.Checked then
         if CurMPinhandle<=IFMPinHandle
         then
          begin
            SendMessage(TWND,WM_KEYDOWN,BOT.Skill12KeyEdit.HotKey,0);
            SendMessage(TWND,WM_KEYUP,BOT.Skill12KeyEdit.HotKey,0);
          end;
    end
    else
      SendMessage(TWND,WM_KEYDOWN,BOT.Skill12KeyEdit.HotKey,0);
      SendMessage(TWND,WM_KEYUP,BOT.Skill12KeyEdit.HotKey,0);

end;
procedure TSkill12.getINF;
begin
  TWND:=Bot.WorkWND;
  CurHPinhandle:=strtoint(BOT.CurHPLabel.Caption);
  IFHPinHandle:=strtoint(BOT.Skill12IFHPEdit.Text);
  CurMPinhandle:=strtoint(BOT.CurMPLabel.Caption);
  IFMPinHandle:=strtoint(BOT.Skill12IFMPEdit.Text);
end;

{ TACPcp1 }
procedure TACPcp1.Execute;
begin
  synchronize(getINF);
  if strtoint(BOT.CurCPLabel.Caption)<=strtoint(BOT.CPPot1IFCPEdit.Text) then
    SendMessage(TWND,WM_KEYDOWN,BOT.CPPot1KeyEdit.HotKey,0);
end;
procedure TACPcp1.getINF;
begin
  TWND:=Bot.WorkWND;
end;

{ TACPcp2 }
procedure TACPcp2.Execute;
begin
  synchronize(getINF);
  if strtoint(BOT.CurCPLabel.Caption)<=strtoint(BOT.CPPot2IFCPEdit.Text) then
    SendMessage(TWND,WM_KEYDOWN,BOT.CPPot2KeyEdit.HotKey,0);
end;
procedure TACPcp2.getINF;
begin
  TWND:=Bot.WorkWND;
end;

{ TACPcp3 }
procedure TACPcp3.Execute;
begin
  synchronize(getINF);
  if strtoint(BOT.CurCPLabel.Caption)<=strtoint(BOT.CPPot2IFCPEdit.Text) then
    SendMessage(TWND,WM_KEYDOWN,BOT.CPPot2KeyEdit.HotKey,0);
end;
procedure TACPcp3.getINF;
begin
  TWND:=Bot.WorkWND;
end;

//* ============================== ������ =======================*//

{FindLineAge - ������� ��� ���� LineAge}
procedure TBOT.FindLA2EndDrag(Sender, Target: TObject; X, Y: Integer);
var
  rPos: TPoint;
  Wnd: THandle;
  aName: array [0..255] of Char;
begin
 if Boolean(GetCursorPos(rPos)) then
 begin
    Wnd := WindowFromPoint(rPos);
    SelectedHWNDLabel.Caption :=IntToStr(Wnd);
    WorkWND:=wnd;
    WorkPID:=GetWindowThreadProcessId(Application.Handle, WorkPID);
    SelectedPIDLabel.Caption:=inttostr(WorkPID);
    BaseAddress:=GetModuleBase(WorkPID,'Engine.dll');
    ModuleBaseAddressLabel.Caption:=inttostr(BaseAddress);
    StatsTimer.Enabled:=True;
 end;
end;

{������ ����� � List BOX - ��������}
procedure TBot.FindLineAgeClick(Sender: TObject);
var
  Wnd: HWND;
  buff: array [0..127] of Char;
begin
  LineAgeList.Items.Clear; // ������� ������ ��������� � �����
  Wnd := GetWindow(Handle, GW_HWNDFIRST);
  while Wnd <> 0 do
  begin
    // ��������� ���� ���������� �������
    if (Wnd <> Application.Handle) and // ����������� ����
      (GetWindowText(Wnd, buff, SizeOf(buff)) <> 0) // ���� ��� ����������
      then
    begin
      GetWindowText(Wnd, buff, SizeOf(buff));
      if StrPas(buff)='Lineage�II:�Overworld �' then
      begin
        LineAgeList.Items.Add(inttostr(GetWindowThreadProcessId(Wnd ,@PID))); // ���������� ������ � ������
      end;
    end;
    Wnd:=GetWindow(Wnd, GW_HWNDNEXT);
  end;
end;

{����� ������� PID �������������}
procedure TBOT.SelectPIDClick(Sender: TObject);
begin
  WorkPID:=strtoint(LineAgeList.Items.Strings[LineAgeList.ItemIndex]);
  SelectedPIDLabel.Caption:=inttostr(WorkPID);
  FindHandle;
  BaseAddress:=GetModuleBase(WorkPID,'Engine.dll');
  ModuleBaseAddressLabel.Caption:=inttostr(BaseAddress);
  StatsTimer.Enabled:=True;
  {ShowMessage(SysErrorMessage(GetLastError)); }
end;

{���� ����� ���� �� PID}
procedure TBOT.FindHandle;
var
  Wnd: HWND;
  buff: array [0..127] of Char;
begin
  Wnd := GetWindow(Handle, GW_HWNDFIRST);
  while Wnd <> 0 do
  begin
    // ��������� ���� ���������� �������
    if (Wnd <> Application.Handle) and // ����������� ����
      (GetWindowText(Wnd, buff, SizeOf(buff)) <> 0) // ���� ��� ����������
      then
    begin
      GetWindowText(Wnd, buff, SizeOf(buff));
      if StrPas(buff)='Lineage�II:�Overworld �' then
      begin
        if GetWindowThreadProcessId(Wnd ,@PID)=WorkPID then
          begin
            SelectedHWNDLabel.Caption:=inttostr(wnd);
            WorkWND:=wnd;
          end;
      end;
    end;
    Wnd := GetWindow(Wnd, GW_HWNDNEXT);
  end;
end;

{���� ����� ������ Engine.dll}
Function TBOT.GetModuleBase(WorkPID: Cardinal; moduleName: PChar): dword;
var
   snapshot: THandle;
   modules:TModuleEntry32;
begin
  result := 0;
  GetWindowThreadProcessId(WorkWND  ,@WorkPID);
  snapshot := CreateToolhelp32Snapshot(TH32CS_SNAPMODULE, WorkPID);
  modules.dwSize := sizeof(TModuleEntry32);
  if Module32First(snapshot, modules) then
    While Module32Next(snapshot, modules) do
    if (StrComp(moduleName, modules.szModule)=0) then
      begin
       CloseHandle(snapshot);
       result := dword(modules.modBaseAddr);
       exit;
      end;
   CloseHandle(snapshot);
end;

{������ ����}
procedure TBOT.HideGameClick(Sender: TObject);
begin
  ShowWindow(WorkWND, SW_HIDE);
end;

{������ ���������� ����� �������}
procedure TBOT.LastMobTimerTimer(Sender: TObject);
begin

end;

{������� ����}
procedure TBOT.ShowGameClick(Sender: TObject);
begin
  ShowWindow(WorkWND, SW_SHOW);
end;

{���������� ����������}
procedure TBOT.StatsTimerTimer(Sender: TObject);
begin
  CurCPhandle:=TCurCP.Create(true);
  CurCPhandle.FreeOnTerminate:=true;
  CurCPhandle.Priority:=tpLower;
  CurCPhandle.Resume;

  MaxCPhandle:=TMaxCP.Create(true);
  MaxCPhandle.FreeOnTerminate:=true;
  MaxCPhandle.Priority:=tpLower;
  MaxCPhandle.Resume;

  CurHPhandle:=TCurHP.Create(true);
  CurHPhandle.FreeOnTerminate:=true;
  CurHPhandle.Priority:=tpLower;
  CurHPhandle.Resume;

  MaxHPhandle:=TMaxHP.Create(true);
  MaxHPhandle.FreeOnTerminate:=true;
  MaxHPhandle.Priority:=tpLower;
  MaxHPhandle.Resume;

  CurMPhandle:=TCurMP.Create(true);
  CurMPhandle.FreeOnTerminate:=true;
  CurMPhandle.Priority:=tpLower;
  CurMPhandle.Resume;

  MaxMPhandle:=TMaxMP.Create(true);
  MaxMPhandle.FreeOnTerminate:=true;
  MaxMPhandle.Priority:=tpLower;
  MaxMPhandle.Resume;

  TargetCheck:=TTargetCheck.Create(true);
  TargetCheck.FreeOnTerminate:=true;
  TargetCheck.Priority:=tpLower;
  TargetCheck.Resume;

  TargetHPHandle:=TTargetHP.Create(true);
  TargetHPHandle.FreeOnTerminate:=true;
  TargetHPHandle.Priority:=tpLower;
  TargetHPHandle.Resume;
end;

{������ ��������}
procedure TBOT.ENABLESKILLS;
begin
  if Skill1IsUse.Checked=True then
    begin
      if strtoint(Skill1CDEdit.Text)>0 then
        Skill1Timer.Interval:=strtoint(Skill1CDedit.Text);
      Skill1Timer.Enabled:=True;
    end;
  if Skill2IsUse.Checked=True then
    begin
      if strtoint(Skill2CDEdit.Text)>0 then
        Skill2Timer.Interval:=strtoint(Skill2CDedit.Text);
      Skill2Timer.Enabled:=True;
    end;
  if Skill3IsUse.Checked=True then
    begin
      if strtoint(Skill3CDEdit.Text)>0 then
        Skill3Timer.Interval:=strtoint(Skill3CDedit.Text);
      Skill3Timer.Enabled:=True;
    end;
  if Skill4IsUse.Checked=True then
    begin
      if strtoint(Skill4CDEdit.Text)>0 then
        Skill4Timer.Interval:=strtoint(Skill4CDedit.Text);
      Skill4Timer.Enabled:=True;
    end;
  if Skill5IsUse.Checked=True then
    begin
      if strtoint(Skill5CDEdit.Text)>0 then
        Skill5Timer.Interval:=strtoint(Skill5CDedit.Text);
      Skill5Timer.Enabled:=True;
    end;
  if Skill6IsUse.Checked=True then
    begin
      if strtoint(Skill6CDEdit.Text)>0 then
        Skill6Timer.Interval:=strtoint(Skill6CDedit.Text);
      Skill6Timer.Enabled:=True;
    end;
  if Skill7IsUse.Checked=True then
    begin
      if strtoint(Skill7CDEdit.Text)>0 then
        Skill7Timer.Interval:=strtoint(Skill7CDedit.Text);
      Skill7Timer.Enabled:=True;
    end;
  if Skill8IsUse.Checked=True then
    begin
      if strtoint(Skill8CDEdit.Text)>0 then
        Skill8Timer.Interval:=strtoint(Skill8CDedit.Text);
      Skill8Timer.Enabled:=True;
    end;
  if Skill9IsUse.Checked=True then
    begin
      if strtoint(Skill9CDEdit.Text)>0 then
        Skill9Timer.Interval:=strtoint(Skill9CDedit.Text);
      Skill9Timer.Enabled:=True;
    end;
  if Skill10IsUse.Checked=True then
    begin
      if strtoint(Skill10CDEdit.Text)>0 then
        Skill10Timer.Interval:=strtoint(Skill10CDedit.Text);
      Skill10Timer.Enabled:=True;
    end;
  if Skill11IsUse.Checked=True then
    begin
      if strtoint(Skill11CDEdit.Text)>0 then
        Skill11Timer.Interval:=strtoint(Skill11CDedit.Text);
      Skill11Timer.Enabled:=True;
    end;
  if Skill12IsUse.Checked=True then
    begin
      if strtoint(Skill12CDEdit.Text)>0 then
        Skill12Timer.Interval:=strtoint(Skill12CDedit.Text);
      Skill12Timer.Enabled:=True;
    end;
end;

procedure TBOT.FarmBotStartClick(Sender: TObject);
begin
  if NeedRebuff.Checked then
    begin
      RebuffTimer.Interval:=strtoint(RebuffTimeEdit.Text)*60000;
      RebuffTimer.Enabled:=True;
    end;
  ENABLESKILLS;
  IsBotWork:=True;
  TrayIcon1.BalloonTitle:='������ ����';
  TrayIcon1.BalloonHint:='��� ������� �������.';
  TrayIcon1.ShowBalloonHint;
  StatusBar1.Panels[0].Text:='����-���: ���';
end;

{������������� ����}
procedure TBOT.DISABLESKILLS;
begin
  Skill1Timer.Enabled:=False;
  Skill2Timer.Enabled:=False;
  Skill3Timer.Enabled:=False;
  Skill4Timer.Enabled:=False;
  Skill5Timer.Enabled:=False;
  Skill6Timer.Enabled:=False;
  Skill7Timer.Enabled:=False;
  Skill8Timer.Enabled:=False;
  Skill9Timer.Enabled:=False;
  Skill10Timer.Enabled:=False;
  Skill11Timer.Enabled:=False;
  Skill12Timer.Enabled:=False;
end;

procedure TBOT.FarmBotStopClick(Sender: TObject);
begin
  DISABLESKILLS;
  IsBotWork:=False;
  TrayIcon1.BalloonTitle:='��������� ����';
  TrayIcon1.BalloonHint:='��� ������� ����������';
  TrayIcon1.ShowBalloonHint;
  StatusBar1.Panels[0].Text:='����-���: ����';
end;

//================================= ���� ������� ========= //
procedure TBOT.Skill1TimerTimer(Sender: TObject);
begin
  Skill1handle:=TSkill1.Create(true);
  Skill1handle.FreeOnTerminate:=true;
  Skill1handle.Priority:=tpLower;
  Skill1handle.Resume;
end;

procedure TBOT.Skill2TimerTimer(Sender: TObject);
begin
  Skill2handle:=TSkill2.Create(true);
  Skill2handle.FreeOnTerminate:=true;
  Skill2handle.Priority:=tpLower;
  Skill2handle.Resume;
end;

procedure TBOT.Skill3TimerTimer(Sender: TObject);
begin
  Skill3handle:=TSkill3.Create(true);
  Skill3handle.FreeOnTerminate:=true;
  Skill3handle.Priority:=tpLower;
  Skill3handle.Resume;
end;

procedure TBOT.Skill4TimerTimer(Sender: TObject);
begin
  Skill4handle:=TSkill4.Create(true);
  Skill4handle.FreeOnTerminate:=true;
  Skill4handle.Priority:=tpLower;
  Skill4handle.Resume;
end;

procedure TBOT.Skill5TimerTimer(Sender: TObject);
begin
  Skill5handle:=TSkill5.Create(true);
  Skill5handle.FreeOnTerminate:=true;
  Skill5handle.Priority:=tpLower;
  Skill5handle.Resume;
end;

procedure TBOT.Skill6TimerTimer(Sender: TObject);
begin
  Skill6handle:=TSkill6.Create(true);
  Skill6handle.FreeOnTerminate:=true;
  Skill6handle.Priority:=tpLower;
  Skill6handle.Resume;
end;

procedure TBOT.Skill7TimerTimer(Sender: TObject);
begin
  Skill7handle:=TSkill7.Create(true);
  Skill7handle.FreeOnTerminate:=true;
  Skill7handle.Priority:=tpLower;
  Skill7handle.Resume;
end;

procedure TBOT.Skill8TimerTimer(Sender: TObject);
begin
  Skill8handle:=TSkill8.Create(true);
  Skill8handle.FreeOnTerminate:=true;
  Skill8handle.Priority:=tpLower;
  Skill8handle.Resume;
end;

procedure TBOT.Skill9TimerTimer(Sender: TObject);
begin
  Skill9handle:=TSkill9.Create(true);
  Skill9handle.FreeOnTerminate:=true;
  Skill9handle.Priority:=tpLower;
  Skill9handle.Resume;
end;

procedure TBOT.Skill10TimerTimer(Sender: TObject);
begin
  Skill10handle:=TSkill10.Create(true);
  Skill10handle.FreeOnTerminate:=true;
  Skill10handle.Priority:=tpLower;
  Skill10handle.Resume;
end;

procedure TBOT.Skill11TimerTimer(Sender: TObject);
begin
  Skill11handle:=TSkill11.Create(true);
  Skill11handle.FreeOnTerminate:=true;
  Skill11handle.Priority:=tpLower;
  Skill11handle.Resume;
end;

procedure TBOT.Skill12TimerTimer(Sender: TObject);
begin
  Skill12handle:=TSkill12.Create(true);
  Skill12handle.FreeOnTerminate:=true;
  Skill12handle.Priority:=tpLower;
  Skill12handle.Resume;
end;

//================================= ���� ������� ========= //

{������ - �������� ����������}
procedure TBOT.RebuffClickAddClick(Sender: TObject);
begin
  if cursorcoord.Enabled=True then
    begin
      CursorCoord.Enabled:=False;
      RebuffClickAdd.Caption:='��������';
    end
    else
    begin
      CursorCoord.Enabled:=True;
      RebuffClickAdd.Caption:='����������';
    end;
end;

{������ - ��������� ���������� � ������ ��� ������� ����� ������}
procedure TBOT.RebuffClickAddKeyPress(Sender: TObject; var Key: Char);
begin
  RebuffClicksX.Items.Add(CursorX.Text);
  RebuffClicksY.Items.Add(CursorY.Text);
end;

{������ - �������� ����������}
procedure TBOT.RebuffClicksClearClick(Sender: TObject);
begin
  RebuffClicksX.Clear;
  RebuffClicksY.Clear;
end;

{������ - �������� ����������}
procedure TBOT.CursorCoordTimer(Sender: TObject);
begin
  CursorX.Text:=inttostr(mouse.CursorPos.x);
  CursorY.Text:=inttostr(mouse.CursorPos.y);
end;

{������ - ������ �������}
procedure TBOT.RebuffTimerTimer(Sender: TObject);
begin
  FarmBotStop.Click;{��������� ��� �����}
  LastMobHandle:=TLastMob.Create(true);
  LastMobHandle.FreeOnTerminate:=true;
  LastMobHandle.Priority:=tpLower;
  LastMobHandle.Resume;
end;

{��������� ���}
procedure TBOT.ACPstartClick(Sender: TObject);
begin
   if CPPot1IsUse.Checked then
    begin
      CPPot1Timer.Interval:=strtoint(CPPot1CDEdit.Text);
      CPPot1Timer.Enabled:=True;
    end;
   if CPPot2IsUse.Checked then
    begin
      CPPot2Timer.Interval:=strtoint(CPPot2CDEdit.Text);
      CPPot2Timer.Enabled:=True;
    end;
   if CPPot3IsUse.Checked then
    begin
      CPPot3Timer.Interval:=strtoint(CPPot3CDEdit.Text);
      CPPot3Timer.Enabled:=True;
    end;
end;

{���������� ���}
procedure TBOT.ACPStopClick(Sender: TObject);
begin
  CPPot1Timer.Enabled:=False;
  CPPot2Timer.Enabled:=False;
  CPPot3Timer.Enabled:=False;
end;

{�� ����� 1}
procedure TBOT.CPPot1TimerTimer(Sender: TObject);
begin
  ACPcp1Handle:=TACPcp1.Create(true);
  ACPcp1Handle.FreeOnTerminate:=true;
  ACPcp1Handle.Priority:=tpLower;
  ACPcp1Handle.Resume;
end;

{�� ����� 2}
procedure TBOT.CPPot2TimerTimer(Sender: TObject);
begin
  ACPcp2Handle:=TACPcp2.Create(true);
  ACPcp2Handle.FreeOnTerminate:=true;
  ACPcp2Handle.Priority:=tpLower;
  ACPcp2Handle.Resume;
end;

{�� ����� 3}
procedure TBOT.CPPot3TimerTimer(Sender: TObject);
begin
  ACPcp3Handle:=TACPcp3.Create(true);
  ACPcp3Handle.FreeOnTerminate:=true;
  ACPcp3Handle.Priority:=tpLower;
  ACPcp3Handle.Resume;
end;

{����������\������������\������ �����}
procedure TBOT.ShutDown;
var
  hToken: THandle;
  tkp: TTokenPrivileges;
  ReturnLength: Cardinal;
begin
  if CurHP=0 then
  begin
  if IsShutDown.Checked=True then
  begin
  if OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES or
  TOKEN_QUERY, hToken) then
  begin
    LookupPrivilegeValue(nil, 'SeShutdownPrivilege', tkp.Privileges[0].Luid);
    tkp.PrivilegeCount := 1;
    tkp.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;
    if AdjustTokenPrivileges(hToken, False, tkp, 0, nil, ReturnLength) then
    begin
      if IsShutDownOFF.Checked then ExitWindowsEx(EWX_ShutDown,0);// ����������
      if IsShutDownRESTART.Checked then ExitWindowsEx(EWX_Reboot,0); // ������������
      if IsShutDownWAIT.Checked then  SetSystemPowerState(true, true);   //��������� ���� � ������ �����
    end;
  end;
  end;
  end;
end;

procedure TBOT.LASTMOBEnable;
begin
  if Skill1IsUseLast.Checked=True then
    begin
      Skill1Timer.Enabled:=True;
    end;
    if Skill2IsUseLast.Checked=True then
    begin
      Skill2Timer.Enabled:=True;
    end;
    if Skill3IsUseLast.Checked=True then
    begin
      Skill3Timer.Enabled:=True;
    end;
    if Skill4IsUseLast.Checked=True then
    begin
      Skill4Timer.Enabled:=True;
    end;
    if Skill5IsUseLast.Checked=True then
    begin
      Skill5Timer.Enabled:=True;
    end;
    if Skill6IsUseLast.Checked=True then
    begin
      Skill6Timer.Enabled:=True;
    end;
    if Skill7IsUseLast.Checked=True then
    begin
      Skill7Timer.Enabled:=True;
    end;
    if Skill8IsUseLast.Checked=True then
    begin
      Skill8Timer.Enabled:=True;
    end;
    if Skill9IsUseLast.Checked=True then
    begin
      Skill9Timer.Enabled:=True;
    end;
    if Skill10IsUseLast.Checked=True then
    begin
      Skill10Timer.Enabled:=True;
    end;
    if Skill11IsUseLast.Checked=True then
    begin
      Skill11Timer.Enabled:=True;
    end;
    if Skill12IsUseLast.Checked=True then
    begin
      Skill12Timer.Enabled:=True;
    end;
end;

procedure TBOT.LASTMOBDisable;
begin
  if Skill1IsUseLast.Checked=True then
    begin
      Skill1Timer.Enabled:=False;
    end;
    if Skill2IsUseLast.Checked=True then
    begin
      Skill2Timer.Enabled:=False;
    end;
    if Skill3IsUseLast.Checked=True then
    begin
      Skill3Timer.Enabled:=False;
    end;
    if Skill4IsUseLast.Checked=True then
    begin
      Skill4Timer.Enabled:=False;
    end;
    if Skill5IsUseLast.Checked=True then
    begin
      Skill5Timer.Enabled:=False;
    end;
    if Skill6IsUseLast.Checked=True then
    begin
      Skill6Timer.Enabled:=False;
    end;
    if Skill7IsUseLast.Checked=True then
    begin
      Skill7Timer.Enabled:=False;
    end;
    if Skill8IsUseLast.Checked=True then
    begin
      Skill8Timer.Enabled:=False;
    end;
    if Skill9IsUseLast.Checked=True then
    begin
      Skill9Timer.Enabled:=False;
    end;
    if Skill10IsUseLast.Checked=True then
    begin
      Skill10Timer.Enabled:=False;
    end;
    if Skill11IsUseLast.Checked=True then
    begin
      Skill11Timer.Enabled:=False;
    end;
    if Skill12IsUseLast.Checked=True then
    begin
      Skill12Timer.Enabled:=False;
    end;
end;

{�������� ����}
procedure TBOT.N2Click(Sender: TObject);
begin
  BOT.Close;
end;

procedure TBOT.N4Click(Sender: TObject);
begin
  SaveSettings.Click;
end;

procedure TBOT.N5Click(Sender: TObject);
begin
  OpenSettings.Click;
end;

end.
