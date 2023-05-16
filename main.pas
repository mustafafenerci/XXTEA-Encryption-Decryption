unit main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Menus,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, FMX.Objects,
  FMX.Memo.Types, FMX.ScrollBox, FMX.Memo;

type
  TFormMain = class(TForm)
    R_header: TRectangle;
    R_footer: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    top_msg: TLabel;
    R_decryption: TRectangle;
    R_encryption: TRectangle;
    Label4: TLabel;
    encrption_key: TEdit;
    encryption_text: TMemo;
    Memo3: TMemo;
    encryption_encrypted: TMemo;
    encryption_clear: TButton;
    encrypt: TButton;
    version: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    decryption_key: TEdit;
    decryption_text: TMemo;
    Memo5: TMemo;
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
    procedure encryption_encryptedClick(Sender: TObject);
    procedure encryption_encrypted_copyClick(Sender: TObject);
    procedure encrption_keyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses
  FMX.Clipboard;

procedure TFormMain.encryption_encrypted_copyClick(Sender: TObject);
begin
  encryption_encrypted.SelectAll;
  encryption_encrypted.CopyToClipboard();
end;

procedure TFormMain.encrption_keyClick(Sender: TObject);
begin
  encrption_key.SelectAll;
end;

procedure TFormMain.encryption_encryptedClick(Sender: TObject);
begin
  encryption_encrypted.SelectAll;

end;

end.
