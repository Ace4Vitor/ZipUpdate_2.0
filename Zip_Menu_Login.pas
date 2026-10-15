unit Zip_Menu_Login;

interface

Uses
  Zip_Config, Registry, 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, 
  Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  JvFormTransparent, JvComponentBase, JvComputerInfoEx, cxTextEdit, cxLabel, Vcl.ExtCtrls, dxGDIPlusClasses;

type
  TTela_Zip_Menu_Login = class(TForm)
    InfoPC: TJvComputerInfoEx;
    Shape1: TShape;
    lblNomeApp: TcxLabel;
    ImageBackground: TImage;
    JvTransparentForm: TJvTransparentForm;
    edtUsuario: TcxTextEdit;
    edtSenha: TcxTextEdit;
    lblSenha: TcxLabel;
    lblUsuario: TcxLabel;
    lblEntrar: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure lblEntrarClick(Sender: TObject);
  private
    { Private declarations }
    nErro  : Integer;

    sUserDbo,     sSenha,     sServidor,    sDatabase,    sPorta    : String;
    sUserDboTst,  sSenhaTst,  sServidorTst, sDatabaseTst, sPortaTst : String;
    sUserDboSup,  sSenhaSup,  sServidorSup, sDatabaseSup, sPortaSup : String;
    function GetRegistroWin(Chave: String): String;
    procedure SetRegistroWin(Chave, Valor: String);

  public
    { Public declarations }
  end;

var
  Tela_Zip_Menu_Login: TTela_Zip_Menu_Login;

implementation

uses Zip_Menu;

{$R *.DFM}

procedure TTela_Zip_Menu_Login.FormCreate(Sender: TObject);
begin
    Shape1.Visible   := False;

    edtUsuario.Properties.MaxLength := 10;
end;

procedure TTela_Zip_Menu_Login.FormShow(Sender: TObject);
begin
    sUserDbo  := Criptografia('D',LeIni(InfoPadrao.ArqIni,'CONFIG_DBDES','USUARIO' ));
    sSenha    := Criptografia('D',LeIni(InfoPadrao.ArqIni,'CONFIG_DBDES','SENHA' ));
    sServidor := LeIni(InfoPadrao.ArqIni,'CONFIG_DBDES','SERVIDOR' );
    sDatabase := LeIni(InfoPadrao.ArqIni,'CONFIG_DBDES','DATABASE' );
    sPorta    := LeIni(InfoPadrao.ArqIni,'CONFIG_DBDES','PORTA' );

    try
        StrToInt(sPorta);
    except
        showmessage('Porta não configurada no ".ini" na seção CONFIG_DBDES ' );
        Halt;
    end;

    if ( InfoPadrao.Projeto = 'ACE4' )  then
    begin
        sUserDboTst  := Criptografia('D',LeIni(InfoPadrao.ArqIni,'CONFIG_DBTST','USUARIO' ));
        sSenhaTst    := Criptografia('D',LeIni(InfoPadrao.ArqIni,'CONFIG_DBTST','SENHA' ));
        sServidorTst := LeIni(InfoPadrao.ArqIni,'CONFIG_DBTST','SERVIDOR' );
        sDatabaseTst := LeIni(InfoPadrao.ArqIni,'CONFIG_DBTST','DATABASE' );
        sPortaTst    := LeIni(InfoPadrao.ArqIni,'CONFIG_DBTST','PORTA' );

        try
            StrToInt(sPortaTst);
        except
            showmessage('Porta não configurada no ".ini" na seção CONFIG_DBTST ' );
            Halt;
        end;

        sUserDboSup  := Criptografia('D',LeIni(InfoPadrao.ArqIni,'CONFIG_DBSIS','USUARIO' ));
        sSenhaSup    := Criptografia('D',LeIni(InfoPadrao.ArqIni,'CONFIG_DBSIS','SENHA' ));
        sServidorSup := LeIni(InfoPadrao.ArqIni,'CONFIG_DBSIS','SERVIDOR' );
        sDatabaseSup := LeIni(InfoPadrao.ArqIni,'CONFIG_DBSIS','DATABASE' );
        sPortaSup    := LeIni(InfoPadrao.ArqIni,'CONFIG_DBSIS','PORTA' );

        try
            StrToInt(sPortasUP);
        except
            showmessage('Porta não configurada no ".ini" na seção CONFIG_DBSIS ' );
            Halt;
        end;
    end;

    InfoPadrao.NomeExe := ExtractFileName(paramstr(0));

    if InfoPadrao.Projeto = 'ACE4' then
    begin
          if UpperCase(sDatabase) <> 'ACE4_DES' then
          begin
              showmessage('O Banco ( '+ sDatabase + ' ) configurado, não é válido para esta aplicação!');
              halt;
          end;

          if UpperCase(sDatabaseTst) <> 'ACE4_ZIPUPDATE_PRO' then
          begin
              showmessage('O Banco de Teste ( '+ sDatabaseTst + ' ) configurado, não é válido para esta aplicação!');
              halt;
          end;

          if UpperCase(sDatabaseSup) <> 'ACE4_SIS_PRO' then
          begin
              showmessage('O Banco de Suporte ( '+ sDatabaseSup + ' ) configurado, não é válido para esta aplicação!');
              halt;
          end;
    end;

    if InfoPadrao.Projeto = 'ACE4_LOJAWEB' then
    begin
          if UpperCase(sDatabase) <> 'ACE4_LOJAWEB_DES' then
          begin
              showmessage('O Banco ( '+ sDatabase + ' ) configurado, não é válido para esta aplicação!');
              halt;
          end;

          if UpperCase(sDatabaseTst) <> 'ACE4_LOJAWEB_ZIPUPDATE' then
          begin
              showmessage('O Banco de Teste ( '+ sDatabaseTst + ' ) configurado, não é válido para esta aplicação!');
              halt;
          end;
    end;

    JvTransparentForm.Active := True;
    Shape1.Visible   := True;

    edtUsuario.Text := GetRegistroWin('Usuario');
    if edtUsuario.Text <> ' ' then
       edtUsuario.Text := Criptografia('D',edtUsuario.Text);

    if (trim(edtUsuario.Text) = '') and ( edtUsuario.CanFocus )then
        edtUsuario.SetFocus
    else
    if edtSenha.CanFocus then
       edtSenha.SetFocus;
end;

Procedure TTela_Zip_Menu_Login.SetRegistroWin(Chave, Valor : String);
Var ArqReg: TRegIniFile;
    cSecao: String;
begin
    Try
        Try
            cSecao := 'Ace4ZipUpdate';
            ArqReg := TRegIniFile.Create('RegistroDoAce4ZipUpdate');
            ArqReg.WriteString(cSecao, Chave, Valor);
        Except
            //
        end;
    Finally
        ArqReg.Free;
    End;
end;

Function TTela_Zip_Menu_Login.GetRegistroWin(Chave : String ):String;
Var ArqReg: TRegIniFile;
    cSecao: String;
begin
    Try
        Try
            Result := '';
            cSecao := 'Ace4ZipUpdate';
            ArqReg := TRegIniFile.Create('RegistroDoAce4ZipUpdate');
            Result := ArqReg.ReadString(cSecao, Chave, '');
        Except
        end;
    Finally
        ArqReg.Free;
    End;
end;

procedure TTela_Zip_Menu_Login.lblEntrarClick(Sender: TObject);
begin
    InfoPadrao.NomePc  := UpperCase(InfoPC.Identification.LocalComputerName);
    InfoPadrao.Usuario := trim(edtUsuario.Text);  //para remover possiveis espaços em branco
    edtSenha.Text := trim(edtSenha.Text);

    if InfoPadrao.Usuario = '' then
    begin
        ShowMessage('É necessário informar o usuário!');
        edtUsuario.SetFocus;
        exit;
    end;

    if trim(edtSenha.Text) = '' then
    begin
        ShowMessage('É necessário informar a senha!');
        edtSenha.SetFocus;
        exit;
    end;

    if ( ( InfoPadrao.Projeto = 'ACE4' ) )  and  ( (InfoPadrao.Usuario = 'SA') or (InfoPadrao.Usuario = 'ACE4')) then
    begin
        ShowMessage('Não é permitido logar com o usuário  ' + InfoPadrao.Usuario);
        exit;
    end;

    //CONECTANDO COMO ADMINISTRADOR
    try
        Tela_Zip_Menu.DBDes.Close;
        Tela_Zip_Menu.DBDes.Username := sUserDbo;
        Tela_Zip_Menu.DBDes.Password := sSenha;
        Tela_Zip_Menu.DBDes.Server   := sServidor;
        Tela_Zip_Menu.DBDes.Port     := StrToInt(sPorta);
        Tela_Zip_Menu.DBDes.Database := sDatabase;
        Tela_Zip_Menu.DBDes.ConnectionTimeout := 30;
        Tela_Zip_Menu.DBDes.Options.ApplicationName    := InfoPadrao.NomeExe;
        Tela_Zip_Menu.DBDes.Options.WorkstationID      := InfoPadrao.NomePc+'\'+InfoPadrao.Usuario;
        Tela_Zip_Menu.DBDes.Options.DefaultLockTimeout := 20000;
        Tela_Zip_Menu.DBDes.Open;
    except
    end;

    if ( not Tela_Zip_Menu.DBDes.Connected) then
    begin
        ShowMessage('Falha na conexão com o banco de dados ( ' +sDatabase+ ' )');
        halt;
    end;

    //FAZENDO A CONEXÃO COM O USUARIO DIGITADO
    try
        Tela_Zip_Menu.DBDes.Close;
        Tela_Zip_Menu.DBDes.Username := InfoPadrao.Usuario;
        Tela_Zip_Menu.DBDes.Password := edtSenha.Text;
        Tela_Zip_Menu.DBDes.Open;
    except
    begin
        ShowMessage('Usuário ou Senha inválido...  Banco de dados ( ' +Tela_Zip_Menu.DBDes.Database+ ' )');
        inc(nErro);
    end;
    end;

    if nErro > 3 then
    begin
        ModalResult := mrCancel;
        exit;
    end;

    if Tela_Zip_Menu.DBDes.Connected = False then
    begin
        exit;
    end;

    if ( InfoPadrao.Projeto = 'ACE4' )  then
    begin
        //CONECTANDO NA BASE DE TESTE
        try
            Tela_Zip_Menu.DBTst.Close;
            Tela_Zip_Menu.DBTst.Username := sUserDboTst;
            Tela_Zip_Menu.DBTst.Password := sSenhaTst;
            Tela_Zip_Menu.DBTst.Server   := sServidorTst;
            Tela_Zip_Menu.DBTst.Port     := StrToInt(sPortaTst);
            Tela_Zip_Menu.DBTst.Database := sDatabaseTst;
            Tela_Zip_Menu.DBTst.ConnectionTimeout := 30;
            Tela_Zip_Menu.DBTst.Options.ApplicationName    := InfoPadrao.NomeExe;
            Tela_Zip_Menu.DBTst.Options.WorkstationID      := InfoPadrao.NomePc+'\'+InfoPadrao.Usuario;
            Tela_Zip_Menu.DBTst.Options.DefaultLockTimeout := 20000;
            Tela_Zip_Menu.DBTst.Open;
        except
            showmessage(' Não foi possivel conectar na Base de Teste ' +sDatabaseTst +'.');
            halt;
        end;

        if ( not Tela_Zip_Menu.DBTst.Connected) then
        begin
            ShowMessage('Falha na conexão com o banco de dados ( ' +sDatabaseTst+ ' )');
            halt;
        end;

        //FAZENDO A CONEXÃO COM O USUARIO DIGITADO
        try
            Tela_Zip_Menu.DBTst.Close;
            Tela_Zip_Menu.DBTst.Username := InfoPadrao.Usuario;
            Tela_Zip_Menu.DBTst.Password := edtSenha.Text;
            Tela_Zip_Menu.DBTst.Open;
        except
        begin
            ShowMessage('Usuário ou Senha Invalido...  Banco de dados ( ' +sDatabaseTst+ ' )');
            ModalResult := mrCancel; //Pra encerrar definitivamente o sistema
            exit;
        end
        end;

        //CONECTANDO NA BASE DE SUPORTE
        Tela_Zip_Menu.DbSis.Close;
        Tela_Zip_Menu.DbSis.Username := sUserDboSup;
        Tela_Zip_Menu.DbSis.Password := sSenhaSup;
        Tela_Zip_Menu.DbSis.Server   := sServidorSup;
        Tela_Zip_Menu.DbSis.Port     := StrToInt(sPortaSup);
        Tela_Zip_Menu.DbSis.Database := sDatabaseSup;
        Tela_Zip_Menu.DbSis.ConnectionTimeout := 15;
        Tela_Zip_Menu.DbSis.Options.ApplicationName    := InfoPadrao.NomeExe;
        Tela_Zip_Menu.DbSis.Options.WorkstationID      := InfoPadrao.NomePc+'\'+InfoPadrao.Usuario;
        Tela_Zip_Menu.DbSis.Options.DefaultLockTimeout := 20000;
        try
            Tela_Zip_Menu.DbSis.Open;
        except
            showmessage(' Não foi possivel conectar na Base de Suporte ' + sDatabaseSup + '.');
            halt;
        end;

        if ( not Tela_Zip_Menu.DbSis.Connected) then
        begin
            ShowMessage('Falha na conexão com o banco de dados ( ' +sDatabaseSup+ ' )');
            halt;
        end;

        //FAZENDO A CONEXÃO COM O USUARIO DIGITADO
        try
            Tela_Zip_Menu.DbSis.Close;
            Tela_Zip_Menu.DbSis.Username := InfoPadrao.Usuario;
            Tela_Zip_Menu.DbSis.Password := edtSenha.Text;
            Tela_Zip_Menu.DbSis.Open;
        except
        begin
            ShowMessage('Usuário ou Senha Invalido...  Banco de dados ( ' +sDatabaseSup+ ' )');
            ModalResult := mrCancel; //Pra encerrar definitivamente o sistema
            exit;
        end
        end;
    end;

    InfoPadrao.NomePC    := InfoPC.Identification.LocalComputerName;
    InfoPadrao.PastaTemp := IncludeTrailingPathDelimiter(InfoPC.Folders.Temp);

    SetRegistroWin('Usuario', Criptografia('C',edtUsuario.Text));

    ModalResult := mrOK;
end;

procedure TTela_Zip_Menu_Login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action := caFree;
    self := nil;
end;

procedure TTela_Zip_Menu_Login.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if Key = VK_ESCAPE then
       Close;
end;

procedure TTela_Zip_Menu_Login.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 Then
       edtSenha.SetFocus;
end;

procedure TTela_Zip_Menu_Login.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 Then
       lblEntrar.onClick(self);
end;

procedure TTela_Zip_Menu_Login.Shape1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    halt;
end;

end.
