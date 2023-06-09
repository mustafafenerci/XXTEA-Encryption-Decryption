﻿unit main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  IdGlobal,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Menus,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, FMX.Objects,
  FMX.Memo.Types, FMX.ScrollBox, FMX.Memo, XXTEA, Base64;

type
  TFormMain = class(TForm)
    R_header: TRectangle;
    R_footer: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    top_msg: TLabel;
    R_decryption: TRectangle;
    R_encryption: TRectangle;
    Label4: TLabel;
    encrption_key: TEdit;
    encryption_text: TMemo;
    encryption_encrypted: TMemo;
    encryption_clear: TButton;
    encrypt: TButton;
    version: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    decryption_key: TEdit;
    decryption_text: TMemo;
    decryption_decrypted: TMemo;
    decryption_clear: TButton;
    decrypt: TButton;
    company: TLabel;
    author: TLabel;
    encryption_encrypted_copy: TButton;
    decryption_decrypted_copy: TButton;
    encryption_text_copy: TButton;
    encrption_key_copy: TButton;
    decryption_text_copy: TButton;
    decryption_key_copy: TButton;
    encrption_key_paste: TButton;
    encryption_text_paste: TButton;
    encryption_encrypted_paste: TButton;
    decryption_key_paste: TButton;
    decryption_text_paste: TButton;
    decryption_decrypted_paste: TButton;
    procedure encryption_clearClick(Sender: TObject);
    procedure encryptClick(Sender: TObject);
    procedure decryptClick(Sender: TObject);
    procedure encryption_text_copyClick(Sender: TObject);
    procedure encrption_key_copyClick(Sender: TObject);
    procedure encryption_encrypted_copyClick(Sender: TObject);
    procedure encryption_encryptedClick(Sender: TObject);
    procedure encryption_textClick(Sender: TObject);
    procedure decryption_key_copyClick(Sender: TObject);
    procedure decryption_text_copyClick(Sender: TObject);
    procedure decryption_textClick(Sender: TObject);
    procedure decryption_decryptedClick(Sender: TObject);
    procedure decryption_decrypted_copyClick(Sender: TObject);
    procedure decryption_clearClick(Sender: TObject);
    procedure encrption_key_pasteClick(Sender: TObject);
    procedure encryption_text_pasteClick(Sender: TObject);
    procedure encryption_encrypted_pasteClick(Sender: TObject);
    procedure decryption_key_pasteClick(Sender: TObject);
    procedure decryption_text_pasteClick(Sender: TObject);
    procedure decryption_decrypted_pasteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

const

  xtea_local_send_key = 'NURMustafa34063';
  xtea_local_receive_key = 'NURMustafa34064';

implementation

{$R *.fmx}


procedure TFormMain.encryption_textClick(Sender: TObject);
begin
  encryption_text.SelectAll;
end;

procedure TFormMain.encryption_text_copyClick(Sender: TObject);
begin
  encryption_text.SelectAll;
  encryption_text.CopyToClipboard();
end;

procedure TFormMain.encryption_text_pasteClick(Sender: TObject);
begin
  encryption_text.SelectAll;
  encryption_text.PasteFromClipboard();
end;

procedure TFormMain.decryptClick(Sender: TObject);
var
   K, DD: TBytes;
begin
  DD := Base64.Decode(decryption_text.Text);
  K := BytesOf(decryption_key.Text);
  DD := XXTEA.decrypt(DD, K);
  decryption_decrypted.Text := TEncoding.UTF8.GetString(DD);
end;

procedure TFormMain.decryption_clearClick(Sender: TObject);
begin
  decryption_key.Text := '';
  decryption_text.Text := '';
  decryption_decrypted.Text := '';
end;

procedure TFormMain.decryption_decryptedClick(Sender: TObject);
begin
  decryption_decrypted.SelectAll;
end;

procedure TFormMain.decryption_decrypted_copyClick(Sender: TObject);
begin
  decryption_decrypted.SelectAll;
  decryption_decrypted.CopyToClipboard;
end;

procedure TFormMain.decryption_decrypted_pasteClick(Sender: TObject);
begin
  decryption_decrypted.SelectAll;
  decryption_decrypted.PasteFromClipboard;
end;

procedure TFormMain.decryption_key_copyClick(Sender: TObject);
begin
  decryption_key.SelectAll;
  decryption_key.CopyToClipboard;
end;

procedure TFormMain.decryption_key_pasteClick(Sender: TObject);
begin
  decryption_key.SelectAll;
  decryption_key.PasteFromClipboard;
end;

procedure TFormMain.decryption_textClick(Sender: TObject);
begin
  decryption_text.SelectAll;
end;

procedure TFormMain.decryption_text_copyClick(Sender: TObject);
begin
  decryption_text.SelectAll;
  decryption_text.CopyToClipboard;
end;

procedure TFormMain.decryption_text_pasteClick(Sender: TObject);
begin
  decryption_text.SelectAll;
  decryption_text.PasteFromClipboard;
end;

procedure TFormMain.encrption_key_copyClick(Sender: TObject);
begin
  encrption_key.SelectAll;
  encrption_key.CopyToClipboard();
end;

procedure TFormMain.encrption_key_pasteClick(Sender: TObject);
begin
  encrption_key.SelectAll;
  encrption_key.PasteFromClipboard;
end;

procedure TFormMain.encryptClick(Sender: TObject);
var
  S, K, ED: TBytes;
begin
   S := BytesOf(UTF8String(encryption_text.Text));
   K := BytesOf(encrption_key.Text);
   ED := XXTEA.Encrypt(S, K);
   encryption_encrypted.Text := Base64.Encode(ED);
end;

procedure TFormMain.encryption_clearClick(Sender: TObject);
begin
  encrption_key.Text := '';
  encryption_text.Text := '';
  encryption_encrypted.Text := '';
end;

procedure TFormMain.encryption_encryptedClick(Sender: TObject);
begin
  encryption_encrypted.SelectAll;
end;

procedure TFormMain.encryption_encrypted_copyClick(Sender: TObject);
begin
  encryption_encrypted.SelectAll;
  encryption_encrypted.CopyToClipboard();
end;

procedure TFormMain.encryption_encrypted_pasteClick(Sender: TObject);
begin
  encryption_encrypted.SelectAll;
  encryption_encrypted.PasteFromClipboard();
end;

end.
