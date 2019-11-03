unit PCT_driver;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Registry, jpeg, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    ComboBox1: TComboBox;
    Button2: TButton;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    ComboBox13: TComboBox;
    ComboBox14: TComboBox;
    ComboBox15: TComboBox;
    Image1: TImage;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    CheckBox1: TCheckBox;
    Bevel1: TBevel;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);
    procedure read_registry(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure warn_me(Sender: TObject);
    procedure clear_form(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Form1.close;
end;

procedure process_change_function (number: String; code: String);
var Reg: TRegistry;
begin
Reg := TRegistry.Create(KEY_WRITE);
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;

    if Reg.OpenKey('\SOFTWARE\WayTech\Versato\System', True) then begin
        Reg.WriteString('button' + number, code);
    end;
    finally
    Reg.Free;
  end;
end;

procedure prirad_cislu_fci(cislo: String; fce: Integer);
var fce_x : String;
var fce_code: String;
begin
      fce_x := IntToStr(fce);
      if (fce_x = '0') then fce_code := '0000000B';
      if (fce_x = '1') then fce_code := '00000001';
      if (fce_x = '2') then fce_code := '00000002';
      if (fce_x = '3') then fce_code := '00000004';
      if (fce_x = '4') then fce_code := '00000009';
      if (fce_x = '5') then fce_code := '00000000';
      if (fce_x = '6') then fce_code := '00000006';
      if (fce_x = '7') then fce_code := '00000005';
      if (fce_x = '8') then fce_code := '0000000A';
      if (fce_x = '9') then fce_code := '00000003';
      if (fce_x = '10') then fce_code := '00000007';
      if (fce_x = '11') then fce_code := '00000008';
      if (fce_x = '12') then fce_code := '00000100';
      if (fce_x = '13') then fce_code := '00000220';
      if (fce_x = '14') then fce_code := '00001012';
      if (fce_x = '15') then fce_code := '00001013';
      if (fce_x = '16') then fce_code := '0000100C';
      if (fce_x = '17') then fce_code := '0000101A';
      if (fce_x = '18') then fce_code := '00001017';
      if (fce_x = '19') then fce_code := '00001002';
      if (fce_x = '20') then fce_code := '00001008';
      if (fce_x = '21') then fce_code := '00001010';
      if (fce_x = '22') then fce_code := '00001011';
      if (fce_x = '23') then fce_code := '00001000';
      if (fce_x = '24') then fce_code := '00001001';
      if (fce_x = '25') then fce_code := '0000100F';
      if (fce_x = '26') then fce_code := '0000100B';
      if (fce_x = '27') then fce_code := '0000100A';
      if (fce_x = '28') then fce_code := '00001007';
      if (fce_x = '29') then fce_code := '00001009';
      if (fce_x = '30') then fce_code := '00001018';
      if (fce_x = '31') then fce_code := '00002000';
      if (fce_x = '32') then fce_code := '00002007';
      if (fce_x = '33') then fce_code := '00002008';
      if (fce_x = '34') then fce_code := '00002002';
      if (fce_x = '35') then fce_code := '0000200C';
      if (fce_x = '36') then fce_code := '0000200A';
      if (fce_x = '37') then fce_code := '00002005';
      if (fce_x = '38') then fce_code := '00002009';
      if (fce_x = '39') then fce_code := '00003005';
      if (fce_x = '40') then fce_code := '00003000';
      if (fce_x = '41') then fce_code := '00003001';
      if (fce_x = '42') then fce_code := '00003002';
      if (fce_x = '43') then fce_code := '00003003';
      if (fce_x = '44') then fce_code := '00003004';
      if (fce_x = '45') then fce_code := '00003006';
      if (fce_x = '46') then fce_code := '00003007';
      if (fce_x = '47') then fce_code := '00003008';
      if (fce_x = '48') then fce_code := '00003009';
      if (fce_x = '49') then fce_code := '0000300a';
      if (fce_x = '50') then fce_code := '0000300b';
      if (fce_x = '51') then fce_code := '0000300c';
      if (fce_x = '52') then fce_code := '00005001';
      if (fce_x = '53') then fce_code := '00005002';
      if (fce_x = '54') then fce_code := '00005003';
      if (fce_x = '55') then fce_code := '00005004';
      if (fce_x = '56') then fce_code := '00005005';
      if (fce_x = '57') then fce_code := '00005006';
      if (fce_x = '58') then fce_code := '00005007';
      if (fce_x = '59') then fce_code := '00005008';
      if (fce_x = '60') then fce_code := '00005009';
      if (fce_x = '61') then fce_code := '0000500a';
      if (fce_x = '62') then fce_code := '0000500b';
      if (fce_x = '63') then fce_code := '0000500c';
      if (fce_x = '64') then fce_code := '0000500d';
      if (fce_x = '65') then fce_code := '0000500e';
      if (fce_x = '66') then fce_code := '0000500f';
      if (fce_x = '67') then fce_code := '00005010';
      if (fce_x = '68') then fce_code := '00005011';
      if (fce_x = '69') then fce_code := '00005012';
      if (fce_x = '70') then fce_code := '00005013';
      if (fce_x = '71') then fce_code := '00005014';
      if (fce_x = '72') then fce_code := '00005015';
      if (fce_x = '73') then fce_code := '00005016';
      if (fce_x = '74') then fce_code := '00005017';
      if (fce_x = '75') then fce_code := '00005018';
      if (fce_x = '76') then fce_code := '00005019';
      if (fce_x = '77') then fce_code := '0000501a';
      if (fce_x = '78') then fce_code := '0000501b';
      if (fce_x = '79') then fce_code := '0000501c';
      if (fce_x = '80') then fce_code := '0000501d';
      if (fce_x = '81') then fce_code := '0000501e';
      if (fce_x = '82') then fce_code := '0000501f';
      if (fce_x = '83') then fce_code := '00005024';

      process_change_function(cislo,fce_code);
      if (cislo = '3') then process_change_function('19',fce_code);
      if (cislo = '4') then process_change_function('20',fce_code);
      if (cislo = '16') then process_change_function('0',fce_code);
      if (cislo = '17') then process_change_function('1',fce_code);

end;


procedure TForm1.read_registry(Sender: TObject);
      var Reg: TRegistry;
      var Regs: TRegistry;
      var Regi: TRegistry;
      var Regis: TRegistry;
      var butt0: String;
      var butt1: String;
      var butt2: String;
      var butt3: String;
      var butt4: String;
      var butt5: String;
      var butt6: String;
      var butt7: String;
      var butt8: String;
      var butt9: String;
      var butt10: String;
      var butt11: String;
      var butt12: String;
      var butt13: String;
      var butt14: String;
      var butt0_text: String;
      var butt1_text: String;
      var butt2_text: String;
      var butt3_text: String;
      var butt4_text: String;
      var butt5_text: String;
      var butt6_text: String;
      var butt7_text: String;
      var butt8_text: String;
      var butt9_text: String;
      var butt10_text: String;
      var butt11_text: String;
      var butt12_text: String;
      var butt13_text: String;
      var butt14_text: String;
begin
  Reg := TRegistry.Create(KEY_READ);
  Regs:= TRegistry.Create(KEY_READ);
  Regi:= TRegistry.Create(KEY_READ);
  Regis:= TRegistry.Create(KEY_READ);
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    Regs.RootKey := HKEY_LOCAL_MACHINE;
    Regi.RootKey := HKEY_LOCAL_MACHINE;
    Regis.RootKey := HKEY_LOCAL_MACHINE;
    if Regis.OpenKey('SOFTWARE\WayTech\Versato\Environment', False)then begin
        if Regis.ReadInteger('Show UI Startup') = 1 then CheckBox1.Checked := True;
    end;
    if Reg.OpenKey('SOFTWARE\WayTech\Versato\System', False) then begin
     if Regs.OpenKey('SOFTWARE\WayTech\Versato\Function Table', False) then begin
     if Regi.OpenKey('SOFTWARE\WayTech\Versato\String Table', False)then begin

      butt0 := Reg.ReadString('button3');
       butt0_text := Regs.ReadString(butt0);
       Label19.Caption := butt0_text;
       Edit1.Text := Reg.ReadString('UI19');

      butt1 := Reg.ReadString('button4');
       butt1_text := Regs.ReadString(butt1);
       Label20.Caption := butt1_text;
       Edit2.Text := Reg.ReadString('UI4');

      butt2 := Reg.ReadString('button9');
       butt2_text := Regs.ReadString(butt2);
       Label21.Caption := butt2_text;
       Edit3.Text := Reg.ReadString('UI9');

      butt3 := Reg.ReadString('button10');
       butt3_text := Regs.ReadString(butt3);
       Label22.Caption := butt3_text;
       Edit4.Text := Reg.ReadString('UI10');

      butt4 := Reg.ReadString('button14');
       butt4_text := Regs.ReadString(butt4);
       Label23.Caption := butt4_text;
       Edit5.Text := Reg.ReadString('UI14');

      butt5 := Reg.ReadString('button12');
       butt5_text := Regs.ReadString(butt5);
       Label24.Caption := butt5_text;
       Edit6.Text := Reg.ReadString('UI12');

      butt6 := Reg.ReadString('button13');
       butt6_text := Regs.ReadString(butt6);
       Label25.Caption := butt6_text;
       Edit7.Text := Reg.ReadString('UI13');

      butt7 := Reg.ReadString('button11');
       butt7_text := Regs.ReadString(butt7);
       Label26.Caption := butt7_text;
       Edit8.Text := Reg.ReadString('UI11');

      butt8 := Reg.ReadString('button2');
       butt8_text := Regs.ReadString(butt8);
       Label27.Caption := butt8_text;
       Edit9.Text := Regi.ReadString('0001200A');
       Edit10.Text := Regi.ReadString('0002200A');

      butt9 := Reg.ReadString('button16');
       butt9_text := Regs.ReadString(butt9);
       Label28.Caption := butt9_text;
       Edit11.Text := Regi.ReadString('0000200D');

      butt10 := Reg.ReadString('button17');
       butt10_text := Regs.ReadString(butt10);
       Label29.Caption := butt10_text;
       Edit12.Text := Regi.ReadString('0000200E');

      butt11 := Reg.ReadString('button8');
       butt11_text := Regs.ReadString(butt11);
       Label30.Caption := butt11_text;
       Edit13.Text := Reg.ReadString('UI8');

      butt12 := Reg.ReadString('button7');
       butt12_text := Regs.ReadString(butt12);
       Label31.Caption := butt12_text;
       Edit14.Text := Reg.ReadString('UI7');

      butt13 := Reg.ReadString('button6');
       butt13_text := Regs.ReadString(butt13);
       Label32.Caption := butt13_text;
       Edit15.Text := Reg.ReadString('UI6');

      butt14 := Reg.ReadString('button15');
       butt14_text := Regs.ReadString(butt14);
       Label33.Caption := butt14_text;
       Edit16.Text := Reg.ReadString('UI15');

      end;
     end;
    end;

    finally
    Reg.Free;
    Regs.Free;
    Regi.Free;
  end;
end;


procedure TForm1.Button2Click(Sender: TObject);
var Reg: TRegistry;
var Regi: TRegistry;
var Regs: TRegistry;
begin
  Reg := TRegistry.Create(KEY_WRITE);
  Regi := TRegistry.Create(KEY_WRITE);
  Regs := TRegistry.Create(KEY_WRITE);
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    Regi.RootKey := HKEY_LOCAL_MACHINE;
    Regs.RootKey := HKEY_LOCAL_MACHINE;

    if Reg.OpenKey('\SOFTWARE\WayTech\Versato\System', True) then begin
    if Regi.OpenKey('\SOFTWARE\WayTech\Versato\String Table', True) then begin
    if Regs.OpenKey('\SOFTWARE\WayTech\Versato\Environment', True) then begin
      Reg.WriteString('UI19', Edit1.Text);
      Reg.WriteString('UI20', Edit2.Text);
      Reg.WriteString('UI9', Edit3.Text);
      Reg.WriteString('UI10', Edit4.Text);
      Reg.WriteString('UI14', Edit5.Text);
      Reg.WriteString('UI12', Edit6.Text);
      Reg.WriteString('UI13', Edit7.Text);
      Reg.WriteString('UI11', Edit8.Text);
      Regi.WriteString('0001200A', Edit9.Text);
      Regi.WriteString('0002200A', Edit10.Text);
      Regi.WriteString('0000200D', Edit11.Text);
      Regi.WriteString('0000200E', Edit12.Text);
      Reg.WriteString('UI8', Edit13.Text);
      Reg.WriteString('UI7', Edit14.Text);
      Reg.WriteString('UI6', Edit15.Text);
      Reg.WriteString('UI15', Edit16.Text);

      prirad_cislu_fci('19',ComboBOX1.ItemIndex);
      prirad_cislu_fci('20',ComboBOX2.ItemIndex);
      prirad_cislu_fci('9',ComboBOX3.ItemIndex);
      prirad_cislu_fci('10',ComboBOX4.ItemIndex);
      prirad_cislu_fci('14',ComboBOX5.ItemIndex);
      prirad_cislu_fci('12',ComboBOX6.ItemIndex);
      prirad_cislu_fci('13',ComboBOX7.ItemIndex);
      prirad_cislu_fci('11',ComboBOX8.ItemIndex);
      prirad_cislu_fci('2',ComboBOX9.ItemIndex);
      prirad_cislu_fci('16',ComboBOX10.ItemIndex);
      prirad_cislu_fci('17',ComboBOX11.ItemIndex);
      prirad_cislu_fci('8',ComboBOX12.ItemIndex);
      prirad_cislu_fci('7',ComboBOX13.ItemIndex);
      prirad_cislu_fci('6',ComboBOX14.ItemIndex);
      prirad_cislu_fci('15',ComboBOX15.ItemIndex);

      if (CheckBox1.Checked = False) then Regs.WriteInteger('Show UI Startup', 0);
      if (CheckBox1.Checked = True) then Regs.WriteInteger('Show UI Startup', 1);
      end;

      StatusBar1.Panels[0].Text := 'Zm�ny byly ulo�eny do registru.';
      read_registry(Form1);
      clear_form(Form1);
    end;
    end;

    finally
    Reg.Free;
    Regi.Free;
    Regs.Free;
  end;
end;

procedure Tform1.clear_form(Sender: TObject);
begin
    Button2.Visible := False;
    StatusBar1.Panels[0].Text := 'V�tejte v programu Key Changer (c) Teuzz 2005';
end;


procedure TForm1.warn_me(Sender: TObject);
begin
     Button2.Visible := True;
     StatusBar1.Panels[0].Text := 'P�ed ukon�en�m programu nezapome�te ulo�it proveden� zm�ny!';
end;

end.
