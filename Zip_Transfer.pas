unit Zip_Transfer;

interface

Uses
  Zip_Config, ShellApi, IdHTTP, System.IOUtils,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxImageComboBox, cxDBLookupComboBox, System.ImageList, Vcl.ImgList,
  cxImageList, DBAccess, MSAccess, MemDS, Vcl.ComCtrls, cxCheckBox, Vcl.StdCtrls, Vcl.FileCtrl, JvDriveCtrls, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxDBEdit,
  cxTextEdit, cxMemo, cxButtons, cxGroupBox, cxPC;

type
  TTela_Zip_Transfer = class(TForm)
    PageControl1: TcxPageControl;
    TabListaDiretorio: TcxTabSheet;
    TabIncluiArquivos: TcxTabSheet;
    Lista2: TFileListBox;
    TabFinalizaPublicacao: TcxTabSheet;
    Panel3: TcxGroupBox;
    TabVersoes: TcxTabSheet;
    Panel4: TcxGroupBox;
    btProximo1: TcxButton;
    Panel5: TcxGroupBox;
    Panel1: TcxGroupBox;
    Tb_Script: TMSQuery;
    cbExeAuto: TcxCheckBox;
    btnSair: TcxButton;
    btAnterior2: TcxButton;
    btProximo2: TcxButton;
    btConcluir: TcxButton;
    Tb_Ver: TMSQuery;
    Ds_Ver: TDataSource;
    Tb_Proc4: TMSQuery;
    Tb_Proc4nm_maquina: TStringField;
    Tb_Proc4Nm_ObjectType: TStringField;
    Tb_Proc4Nm_Objeto: TStringField;
    sp_Log_Objeto: TMSStoredProc;
    Tb_Proc4data: TStringField;
    Tb_Proc4Flag: TStringField;
    Tb_VerId_Versao: TStringField;
    Tb_VerStatus: TStringField;
    Tb_VerData_Publicacao: TDateTimeField;
    Tb_VerNomepc: TStringField;
    Tb_VerUsuario: TStringField;
    Tb_VerDescricao: TMemoField;
    Tb_VerDesc_Tecnica: TMemoField;
    Tb_VerDesc_RotinasSql: TMemoField;
    Up_Ver: TMSUpdateSQL;
    pnlVersoes: TcxGroupBox;
    Label10: TcxLabel;
    Label11: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Id_Versao: TcxGridDBColumn;
    cxGrid1DBTableView1Status: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Versao: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    FileListBox1: TJvFileListBox;
    btnEditar: TcxButton;
    btnIncluir: TcxButton;
    edtVersao: TcxDBTextEdit;
    edtStatus: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    mmoDesc_RotinasSql: TcxDBMemo;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    edtUsuario: TcxDBTextEdit;
    edtNomePC: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    edtDataPubl: TcxDBTextEdit;
    sp_PublicaVersao: TMSStoredProc;
    sp_ExcluiArquivo: TMSStoredProc;
    sp_IncluiArquivo: TMSStoredProc;
    ListViewDiretorios: TListView;
    btTransfere: TcxButton;
    TabValidaArquivos: TcxTabSheet;
    Panel2: TcxGroupBox;
    btnValidaArquivo: TcxButton;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Tb_VerArq: TMSQuery;
    Up_VerArq: TMSUpdateSQL;
    Ds_VerArq: TDataSource;
    Tb_VerArqId_Versao: TStringField;
    Tb_VerArqDiretorio: TStringField;
    Tb_VerArqNomeArquivo: TStringField;
    Tb_VerArqId_TipoApp: TIntegerField;
    Tb_TipoApp: TMSQuery;
    Ds_TipoApp: TDataSource;
    Tb_TipoAppId_TipoApp: TIntegerField;
    Tb_TipoAppDesc_TipoApp: TStringField;
    cxGrid2DBTableView1Id_Versao: TcxGridDBColumn;
    cxGrid2DBTableView1Diretorio: TcxGridDBColumn;
    cxGrid2DBTableView1NomeArquivo: TcxGridDBColumn;
    cxGrid2DBTableView1Id_TipoApp: TcxGridDBColumn;
    Img_Tela: TcxImageList;
    sp_StatusPendente: TMSStoredProc;
    mmoDescricao: TcxMemo;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    procedure btTransfereClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btProximo1Click(Sender: TObject);
    procedure btProximo2Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure cbExeAutoClick(Sender: TObject);
    function  Processa_Script(cFile : String): Boolean;
    procedure FormShow(Sender: TObject);
    procedure btConcluirClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure Tb_VerAfterScroll(DataSet: TDataSet);
    procedure btnEditarClick(Sender: TObject);
    procedure btnValidaArquivoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btAnterior2Click(Sender: TObject);
    procedure Tb_VerArqBeforeOpen(DataSet: TDataSet);
    procedure pnlVersoesDblClick(Sender: TObject);
    procedure Tb_VerAfterOpen(DataSet: TDataSet);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
  private
    Function DescritivoAutomatico: String;
    procedure AtualizaProcedures;
    procedure MostraAlertaFinal;
    function MoveCopiaDiretorios(pOperacao: Integer; pOrigem, pDestino: string): Boolean;
    procedure ValidaSeTemPastaVazia(const RootDir: string);
    { Private declarations }
  public
    { Public declarations }
    cDirRaiz, cDirVersaoAtual : String;

  end;

var
  Tela_Zip_Transfer: TTela_Zip_Transfer;

implementation

{$R *.dfm}

uses Zip_Menu;

procedure TTela_Zip_Transfer.btProximo1Click(Sender: TObject);
var lista : TStrings;
    Item: TListItem;
    I : integer;
    cDir, cDirPub : String;
begin
    Try
        Try
            Rodape('Iniciando a publicação');

            Lista  := TStringList.Create;
                   {
            if cProjeto = 'SIGE' then
            begin
                if UpperCase(cNomePC) <> UpperCase(LeIni  ( ArqIni,'SIGE','MAQUINAPUBLICACAO'))  then
                begin
                    showmessage('Publicação só é permitida pelo computador '+ LeIni  ( ArqIni,'SIGE','MAQUINAPUBLICACAO'));
                    exit;
                end;
            end; }

            if InfoPadrao.Projeto = 'ACE4' then
            begin
                if InfoPadrao.ChaveTrello = '' then
                begin
                    showmessage('ERRO! Não foi possível identificar sua chave de usuário do trello.');
                    exit;
                end;
            end;

            if (Tb_VerStatus.AsString = 'PUBLICADA') then
            begin
                showmessage('O status atual da versão não permite publicação');
                exit;
            end;

            if trim(mmoDescricao.text) = '' then
            begin
                showmessage('Não é permitido publicar sem Descrição.');
                exit;
            end;

            btProximo1.Enabled := False;

            cDirVersaoAtual := cDirRaiz + 'v'+ edtVersao.Text;

            if not (system.SysUtils.DirectoryExists(cDirVersaoAtual)) then
            begin
                showmessage('A pasta "'+cDirVersaoAtual+'" não existe');
                exit;
            end;

            if MessageDlg('Antes de publicar deve-se devolver o código fonte para o sourcesafe.'
                                    + char(13)
                                    + char(13)
                                    + 'O CÓDIGO FONTE FOI DEVOLVIDO PARA O SOURCESAFE?',
                           mtConfirmation, [mbYes, mbNo], 0) = mrNo then
            begin
                exit;
            end;

            ListaDiretorios(cDirVersaoAtual,lista,True); // o true é se vai mostrar os subdiretórios

            ValidaSeTemPastaVazia(cDirVersaoAtual);

            BarradeProgresso(0,lista.Count );

            //Limpa o ListView PARA MONTAR A LISTA DE DIRETORIO
            ListViewDiretorios.Clear;

            //montando os list View novo
            BarradeProgresso(0,lista.Count);
            for I := 0 to lista.Count - 1 do
            begin
                BarradeProgresso(I + 1 ,0);

                cDirPub := '';
                cDir := lista[i];

                lista2.Directory := cDir;
                lista2.Refresh;

                { dessa forma falha quando só tem arquivos nas subpastas
                if lista2.Items.Count = 0 then
                begin
                    raise Exception.Create('Não é permitido publicar pasta vazia.');
                end;  }

                if FileExists(cDir+'\Cht.bpl') then
                begin
                        if MessageDlg('O arquivo Cht.bpl tem conexão própria com banco de dados.'
                                    + char(13)
                                    + char(13)
                                    + 'A propriedade Connected foi alterada para False?',
                           mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                        begin
                            raise Exception.Create('Verificar a propriedade Connected do arquivo Cht.bpl.');
                        end;
                end;

                if FileExists(cDir+'\Ace4.exe') then
                begin
                     if MessageDlg('O arquivo Ace4.exe tem conexão própria com banco de dados.'
                                + char(13)
                                + char(13)
                                + 'A propriedade Connected foi alterada para False?',
                       mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                     begin
                         raise Exception.Create('Verificar a propriedade Connected do arquivo Ace4.exe.');
                     end;

                     if MessageDlg('O arquivo Ace4.exe precisa de Assinatural digital.'
                                + char(13)
                                + char(13)
                                + 'Este Arquivo foi Assinado digitalmente?',
                       mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                     begin
                         raise Exception.Create('Verificar Assinatural digital do arquivo Ace4.exe.');
                     end;
                end;

                if FileExists(cDir+'\Tamba.exe') then
                begin
                    if MessageDlg('O arquivo Tamba.exe tem conexão própria com banco de dados.'
                                + char(13)
                                + char(13)
                                + 'A propriedade Connected foi alterada para False?',
                       mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                    begin
                        raise Exception.Create('Verificar a propriedade Connected do arquivo Tamba.exe.');
                    end;

                    if MessageDlg('O arquivo Tamba.exe precisa de Assinatural digital.'
                                + char(13)
                                + char(13)
                                + 'Este Arquivo foi Assinado digitalmente?',
                       mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                     begin
                         raise Exception.Create('Verificar Assinatural digital do arquivo Tamba.exe.');
                     end;
                end;

                if FileExists(cDir+'\Ace4srv.new') then
                begin
                    if MessageDlg('O arquivo Ace4srv.new tem conexão própria com banco de dados.'
                                + char(13)
                                + char(13)
                                + 'A propriedade Connected foi alterada para False?',
                       mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                    begin
                        raise Exception.Create('Verificar a propriedade Connected do arquivo Ace4srv.new.');
                    end;

                    if MessageDlg('O arquivo Ace4srv.new precisa de Assinatural digital.'
                                + char(13)
                                + char(13)
                                + 'Este Arquivo foi Assinado digitalmente?',
                       mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                     begin
                         raise Exception.Create('Verificar Assinatural digital do arquivo Ace4srv.new.');
                     end;
                end;

                if FileExists(cDir+'\Autoupdate.new') then
                begin
                    if MessageDlg('O arquivo Autoupdate.new tem conexão própria com banco de dados.'
                                + char(13)
                                + char(13)
                                + 'A propriedade Connected foi alterada para False?',
                       mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                    begin
                        raise Exception.Create('Verificar a propriedade Connected do arquivo Autoupdate.new.');
                    end;

                    if MessageDlg('O arquivo Autoupdate.new precisa de Assinatural digital.'
                                + char(13)
                                + char(13)
                                + 'Este Arquivo foi Assinado digitalmente?',
                       mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                     begin
                         raise Exception.Create('Verificar Assinatural digital do arquivo Autoupdate.new.');
                     end;
                end;

                if pos(UpperCase(cDirRaiz),UpperCase(cDir)) = 1 then
                   cDirPub := Copy(cDir,length(cDirRaiz)+1,length(cDir)-length(cDirRaiz));

                cDirPub := StringReplace(cDirPub ,'v'+ edtVersao.Text,'Ace4',[]);

                Item := ListViewDiretorios.Items.Add();
                Item.Caption := cDir + '\';
                Item.SubItems.Add( cDirPub + '\'  );
            end;

            Rodape('Listando os Diretórios a ser publicados');

            PageControl1.ActivePageIndex := 1;
            PageControl1Change(PageControl1);

        Except ON E:Exception do
        begin
            showmessage( E.Message );
        end;
        end;
    Finally
        Lista.Free;
        // Item.Free; Nunca usar pois se fazer o free não inclui o ultimo item.
        btProximo1.Enabled := True;
    end;
end;

procedure TTela_Zip_Transfer.btProximo2Click(Sender: TObject);
begin
    btProximo2.Enabled := False;
    lista2.Directory := ListViewDiretorios.Items.Item[0].Caption;
    lista2.Refresh;

    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex + 1;
    PageControl1Change(PageControl1);

    Rodape('Transfere os arquivos para o banco de dados');

    btTransfere.Enabled := true;

    if cbExeAuto.Checked then btTransfere.Click;
end;

procedure TTela_Zip_Transfer.btTransfereClick(Sender: TObject);
var I, J : integer;
begin
    Try
        Try
            btTransfere.Enabled := False;

            Rodape('Limpando arquivos da versão...se houver (em caso de Republicação)');

            sp_ExcluiArquivo.Close;
            sp_ExcluiArquivo.ParamByName('V_Id_Versao').AsString := edtVersao.Text;
            sp_ExcluiArquivo.ExecProc;

            for J := 0 to ListViewDiretorios.Items.Count - 1 do
            begin
                lista2.Directory := ListViewDiretorios.Items.Item[J].Caption;
                lista2.Refresh;

                BarradeProgresso(0,Lista2.Count);

                for I := 0 to Lista2.Count - 1 do
                begin
                    BarradeProgresso(i + 1 ,0 );

                    //VALIDA SCRIPTS... se a extensão for ".sql"
                    if lowercase(Copy(Lista2.Items.Strings[I], length(Lista2.Items.Strings[I])-3, 4  ) ) = '.sql' then
                    begin
                        Rodape('Validando Scrypt do Arquivo ' + lista2.Directory + '\' + Lista2.Items.Strings[I] );

                        try
                            Processa_Script(lista2.Directory + '\' + Lista2.Items.Strings[I]);
                        except on E: exception do
                        begin
                            raise Exception.Create('Foram encontrados problemas no arquivo '+Lista2.Items.Strings[I]+'.'
                                       + char(13)
                                       + char(13)
                                       + E.Message );
                        end;
                        end;
                    end;

                    Rodape('Fazendo Upload do Arquivo ' + lista2.Directory + '\' + Lista2.Items.Strings[I] );

                    try
                        sp_IncluiArquivo.Close;
                        sp_IncluiArquivo.ParamByName('V_Id_Versao').AsString   := Tb_VerId_Versao.AsString;
                        sp_IncluiArquivo.ParamByName('V_Diretorio').AsString   := ListViewDiretorios.Items.Item[J].SubItems.Strings[0];
                        sp_IncluiArquivo.ParamByName('V_NomeArquivo').AsString := Lista2.Items.Strings[I];
                        sp_IncluiArquivo.ParamByName('V_Arquivo').LoadFromFile(lista2.Directory + '\' + Lista2.Items.Strings[I], ftBlob);
                        sp_IncluiArquivo.ExecProc;
                    except  On E:Exception do
                        raise Exception.Create('Erro ao fazer Upload do Arquivo ' + Lista2.Items.Strings[I]
                                                + char(13)
                                                + char(13)
                                                + E.Message);
                    end;
                end;
            end;

            BarradeProgresso(0,0);
            Rodape('Verificando Arquivos não classificados');

            PageControl1.ActivePageIndex := PageControl1.ActivePageIndex + 1;
            PageControl1Change(PageControl1);

            Tb_VerArq.Close;
            Tb_VerArq.ParamByName('Id_Versao').AsString := edtVersao.Text;
            Tb_VerArq.Open;

            btnValidaArquivo.Enabled := True;

            if cbExeAuto.Checked then btnValidaArquivo.Click;

        except on E:Exception do
        begin
            PageControl1.ActivePageIndex := 1;
            PageControl1Change(PageControl1);
            raise Exception.Create(E.Message);

            btTransfere.Enabled := True;
        end;
        end;
    Finally
    end;
end;

procedure TTela_Zip_Transfer.cbExeAutoClick(Sender: TObject);
begin
    if cbExeAuto.Checked then
       GravaIni  ( InfoPadrao.ArqIni,'CONFIG_GERAL','AUTO' ,'S')
    else
       GravaIni  ( InfoPadrao.ArqIni,'CONFIG_GERAL','AUTO' ,'N');
end;

procedure TTela_Zip_Transfer.btnValidaArquivoClick(Sender: TObject);
begin
    btnValidaArquivo.Enabled := False;

    GravaUpdates(Tb_VerArq);

    Tb_VerArq.Close;
    Tb_VerArq.ParamByName('Id_Versao').AsString := edtVersao.Text;
    Tb_VerArq.Open;

    if Tb_VerArq.IsEmpty = False then
    begin
        ShowMessage('Existe Arquivos não classificados');
        btnValidaArquivo.Enabled := True;
        exit; //PARA NA TELA PARA SER EDITADA...
    end;

    Try
        Try
            Rodape('Finalizando a publicação da versão.');
            BarradeProgresso(0,0);

            PageControl1.ActivePageIndex := PageControl1.ActivePageIndex + 1;
            PageControl1Change(PageControl1);

            btConcluir.Enabled := True;
            if cbExeAuto.Checked then btConcluir.Click;

        except on E:Exception do
        begin
            PageControl1.ActivePageIndex := 1;
            PageControl1Change(PageControl1);
            raise Exception.Create(E.Message);

        end;
        end;
    Finally
        btnValidaArquivo.Enabled := True;
    end;
end;

procedure TTela_Zip_Transfer.btnIncluirClick(Sender: TObject);
begin
    Tb_Ver.close;
    Tb_Ver.Open;

    if Tb_Ver.Locate('Status','PENDENTE',[]) then
    begin
        ShowMessage('Já existe uma versão com status Pendente');
        exit;
    end;

    Tb_Ver.Append;
    GravaUpdates(Tb_Ver);

    Tb_Ver.Close;
    Tb_Ver.Open;

    if Tb_Ver.Locate('Status','PENDENTE',[]) then
       btnEditar.Onclick(sender);

    btnIncluir.Enabled  := False;
    btnEditar.Enabled   := False;
    btnSalvar.Enabled   := True;
    btnCancelar.Enabled := True;
    btnSair.Enabled     := False;
    btProximo1.Enabled  := False;
end;

procedure TTela_Zip_Transfer.btnSairClick(Sender: TObject);
begin
    Close;
end;

procedure TTela_Zip_Transfer.btnSalvarClick(Sender: TObject);
begin
    Tb_Ver.Edit;
    Tb_VerDescricao.AsString    := mmoDescricao.Lines.Text;
    Tb_VerDesc_Tecnica.AsString := mmoDescricao.Lines.Text;
    GravaUpdates(Tb_Ver);

    mmoDescricao.Properties.ReadOnly := False;
    mmoDescricao.Style.Color:= InfoPadrao.CorCampoAtivo;

    btnIncluir.Enabled  := True;
    btnEditar.Enabled   := True;
    btnSalvar.Enabled   := False;
    btnCancelar.Enabled := False;
    btnSair.Enabled     := True;
    btProximo1.Enabled  := True;
end;

procedure TTela_Zip_Transfer.FormCreate(Sender: TObject);
var I: Integer;
begin
    AplicaConfigPadrao(Self);

    Tb_Script.Connection           := TMSConnection(Application.MainForm.FindComponent('DBTst'));

    Tb_Ver.Connection              := TMSConnection(Application.MainForm.FindComponent('DbSis'));
    Tb_VerArq.Connection           := TMSConnection(Application.MainForm.FindComponent('DbSis'));
    Tb_TipoApp.Connection          := TMSConnection(Application.MainForm.FindComponent('DbSis'));
    sp_ExcluiArquivo.Connection    := TMSConnection(Application.MainForm.FindComponent('DbSis'));
    sp_IncluiArquivo.Connection    := TMSConnection(Application.MainForm.FindComponent('DbSis'));
    sp_PublicaVersao.Connection    := TMSConnection(Application.MainForm.FindComponent('DbSis'));
    sp_StatusPendente.Connection   := TMSConnection(Application.MainForm.FindComponent('DbSis'));

    mmoDescricao.Lines.Delimiter := '¬';
    mmoDescricao.Lines.QuoteChar := '|';

    cDirRaiz := ExtractFilePath(ParamStr(0));

    cbExeAuto.Checked  := LeIni(InfoPadrao.ArqIni,'CONFIG_GERAL','AUTO') = 'S';

    for I := 0 to PageControl1.PageCount - 1 do
        PageControl1.Pages[I].TabVisible := False;
end;

procedure TTela_Zip_Transfer.FormShow(Sender: TObject);
begin
    //pra não trazer nada
    FileListBox1.Mask := '*.xxx';
    FileListBox1.Directory := ExtractFilePath(paramstr(0));
    FileListBox1.Update;

    PageControl1.ActivePageIndex := 0;

    Tb_Ver.close;
    Tb_Ver.Open;
end;

procedure TTela_Zip_Transfer.btnCancelarClick(Sender: TObject);
begin
    Tb_Ver.Cancel;

    mmoDescricao.Lines.Text := Tb_VerDescricao.AsString;

    mmoDescricao.Properties.ReadOnly := True;
    mmoDescricao.Style.Color:= InfoPadrao.CorCampoInativo;

    btnIncluir.Enabled  := True;
    btnEditar.Enabled   := True;
    btnSalvar.Enabled   := False;
    btnCancelar.Enabled := False;
    btnSair.Enabled     := True;
    btProximo1.Enabled  := True;
end;

procedure TTela_Zip_Transfer.btnEditarClick(Sender: TObject);
begin
    if Tb_VerStatus.AsString = 'PUBLICADA' then Exit;

    Tb_Ver.Edit;
    Tb_VerDesc_RotinasSql.Text := DescritivoAutomatico();
    GravaUpdates(Tb_Ver);

    mmoDescricao.Properties.ReadOnly := False;
    mmoDescricao.Style.Color:= InfoPadrao.CorCampoAtivo;
    mmoDescricao.SetFocus;

    btnIncluir.Enabled  := False;
    btnEditar.Enabled   := False;
    btnSalvar.Enabled   := True;
    btnCancelar.Enabled := True;
    btnSair.Enabled     := True;
    btProximo1.Enabled  := True;
end;

procedure TTela_Zip_Transfer.btAnterior2Click(Sender: TObject);
begin
    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex - 1;
    PageControl1Change(PageControl1);
    Rodape('');
    btProximo1.Enabled := True;
end;

procedure TTela_Zip_Transfer.btConcluirClick(Sender: TObject);
var lstCorpoEmail : TStringList;
    cDirProjeto, cDirAutoUpdate, cParametro, cRetorno, cURL : string;
     HTTP: TIdHTTP;
begin

    Try
        Try
            btConcluir.Enabled := False;
            BarradeProgresso(0,0);

            try
                //desmarca as procedures  que estavam como pendentes
                AtualizaProcedures;
            Except
                raise Exception.Create('Erro ao confirmar publicação da rotinas sql pendentes');
            end;

            try
                Rodape('Registrando a publicação da Versão');
                sp_PublicaVersao.Close;
                sp_PublicaVersao.ParamByName('V_Id_Versao').AsString  := edtVersao.Text;
                sp_PublicaVersao.ParamByName('V_Usuario').AsString    := InfoPadrao.Usuario;
                sp_PublicaVersao.ParamByName('V_NomePc').AsString     := InfoPadrao.NomePC;
                sp_PublicaVersao.execProc;

            Except On E : Exception Do
            begin
                raise Exception.Create('Erro ao Publicar Versão ' + char(13) + E.Message);
            end;
            end;

            lstCorpoEmail := TStringList.create;
            lstCorpoEmail.Add('Olá,');
            lstCorpoEmail.Add('Segue comentário da versão ' + edtVersao.Text + ' publicada por '+ InfoPadrao.Usuario +'.');
            lstCorpoEmail.Add('');
            lstCorpoEmail.Add(Tb_VerDesc_Tecnica.Asstring);

            try
                if InfoPadrao.Projeto = 'ACE4' then
                begin
                    Rodape('Enviando email de publicação');
                    EnviaEmail('','web@ace4.com.br','insight@ace4.com.br', 'Foi publicada a versão ' + edtVersao.Text , lstCorpoEmail, nil, nil);
                end;

                {
                if cProjeto = 'SIGE' then
                begin
                    Rodape('Criando backup da versão do projeto');

                    cDirProjeto := 'C:\Web\Elsys\Sige3\Projeto';

                    if not DirectoryExists(cDirProjeto) then
                       raise Exception.Create('Erro ao fazer bakup da versão.'+char(13) + 'Diretório inválido.' + char(13) + cDirProjeto );

                    MoveCopiaDiretorios(FO_COPY,cDirProjeto,'C:\Sige_Backup_V'+ edtVersao.Text);

                    Rodape('Enviando email de publicação');

                    EnviaEmail('','suporte.sige@elsys.com.br','aguilera@ace4.com.br;alan@ace4.com.br;vanderlei@ace4.com.br', 'Sige-Foi publicada a versão ' + edtVersao.Text , lstCorpoEmail, nil, nil);
                end;     }

            Except ON E:Exception Do
                showmessage('Erro ao enviar email' + char(13)+char(13)+ E.Message)
            end;

            //Cria cartão no trello
            Try
                Try
                    Rodape('Criando o cartão no trello para teste da versão publicada.');
                    HTTP := TIdHTTP.Create;
                    cURL := 'http://jive.ace4.com.br/api/Versao?Id_Membros='+InfoPadrao.ChaveTrello+'&Titulo=Testar%20Versao%20'+edtVersao.Text;

                    HTTP.Get(cURL);
                Except ON E:Exception Do
                    showmessage('Erro ao criar cartão no trello.' + char(13)+char(13)+ E.Message)
                end;
            Finally
                HTTP.Free;
            End;

            Rodape('Versão ' + edtVersao.Text + ' Publicada com Sucesso.');

            if  InfoPadrao.Projeto <> 'ACE4' then
                MostraAlertaFinal;

            if InfoPadrao.Projeto = 'ACE4' then
            begin
                //JA CHAMA O AUTOUPDATE E ATUALIZA...
                cDirAutoUpdate := '\\192.168.0.5\clientes\Ace4_ZipUpdate\AutoUpdate.exe';
                cParametro     := 'ACE4SRV 0';

                if FileExists(cDirAutoUpdate) then
                    ShellExecute(Handle,'open',PChar(cDirAutoUpdate), PChar(cParametro), '',SW_SHOWNORMAL);

                //Faz Backup das versões...
                if Copy(edtVersao.Text, Length(edtVersao.Text), 1 ) = '3' then
                   Tela_Zip_Menu.btBackup.Click;
            end;

            Close;

            Halt; //ja fecha de vez...

        except on E:Exception do
        begin
            showmessage(E.Message);
        end;
        end;
    Finally
        btConcluir.Enabled := True;
    end;
end;

function TTela_Zip_Transfer.MoveCopiaDiretorios(pOperacao: Integer; pOrigem, pDestino: string):Boolean;
var recOperacao : TShFileOpStruct;
begin
    Result := False;
    if(pOrigem<>'')and(pDestino<>'')and(DirectoryExists(pOrigem))then
    begin
        pOrigem := pOrigem+#0;
        pDestino := pDestino+#0;
        FillChar(recOperacao, Sizeof(TShFileOpStruct), 0);

        recOperacao.Wnd := Application.Handle;
        recOperacao.wFunc := pOperacao;
        recOperacao.pFrom := PChar(pOrigem);
        recOperacao.pTo := PChar(pDestino);
        recOperacao.fFlags := FOF_ALLOWUNDO or FOF_SIMPLEPROGRESS or FOF_NOCONFIRMATION;

        result:= ShFileOperation(recOperacao)=0;
    end;
end;

procedure TTela_Zip_Transfer.PageControl1Change(Sender: TObject);
begin
    case PageControl1.ActivePageIndex of
        0:;
        1: btProximo2.Enabled := (ListViewDiretorios.Items.Count >= 1);
        3:  begin
                if ListViewDiretorios.Items.Count >= 1 then
                begin
                    panel3.Caption := '1/' + IntToStr(ListViewDiretorios.Items.Count) + ' - ' + ListViewDiretorios.Items.Item[0].Caption;
                    lista2.Directory := ListViewDiretorios.Items.Item[0].Caption;
                    lista2.Refresh;
                end;
            end;
        4:;
    end;
end;

procedure TTela_Zip_Transfer.Panel4Click(Sender: TObject);
//r  lstCorpoEmail : TstringList;
begin
//    lstCorpoEmail := TstringList.Create;
//  EnviaEmail('','web@ace4.com.br','vanderlei@ace4.com.br', 'Foi publicada a versão ' + edtVersao.Text , lstCorpoEmail, nil, nil);
end;

procedure TTela_Zip_Transfer.pnlVersoesDblClick(Sender: TObject);
begin
    if tb_Ver.IsEmpty =  true then exit;

    if MessageDlg('Confirma alteração do Status da Versão '  + Tb_VerId_Versao.AsString + ' para "PENDENTE" ?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrNo then exit;

    sp_StatusPendente.Close;
    sp_StatusPendente.ParamByName('V_Id_Versao').AsString := Tb_VerId_Versao.AsString;
    sp_StatusPendente.ExecProc;

    //PARA ATUALIZAR A TELA
    Tb_Ver.Close;
    Tb_Ver.Open;

    //PARA REPOSICIONAR NA VERSÃO RECEM-ALTERADA
    Tb_Ver.Locate('Id_Versao', sp_StatusPendente.ParamByName('V_Id_Versao').AsString, []);
end;

procedure TTela_Zip_Transfer.Tb_VerAfterOpen(DataSet: TDataSet);
begin
    mmoDescricao.Lines.Clear;
end;

procedure TTela_Zip_Transfer.Tb_VerAfterScroll(DataSet: TDataSet);
begin
    if DataSet.ControlsDisabled then exit;

    mmoDescricao.Properties.ReadOnly := True;
    mmoDescricao.Style.Color:= InfoPadrao.CorCampoInativo;

    mmoDescricao.Lines.Text := Tb_VerDescricao.AsString;

    btnIncluir.Enabled  := True;
    btnEditar.Enabled   := Tb_VerStatus.AsString = 'PENDENTE';
    btnSalvar.Enabled   := False;
    btnCancelar.Enabled := False;
    btnSair.Enabled     := True;
    btProximo1.Enabled  := True;

    //pra não trazer nada
    FileListBox1.Mask      := '*.xxx';
    FileListBox1.Directory := ExtractFilePath(paramstr(0));
    FileListBox1.Update;
end;

procedure TTela_Zip_Transfer.Tb_VerArqBeforeOpen(DataSet: TDataSet);
begin
    Tb_TipoApp.Close;
    Tb_TipoApp.Open;
end;

function TTela_Zip_Transfer.Processa_Script(cFile : String): Boolean;
var cArq : TStringList;
    i,mx : Integer ;
begin
    Result := False;

    cArq := TStringList.Create;

    cArq.LoadFromFile(cFile);

    mx := 0;

    for i := 0 to (cArq.Count-1) do
        if UpperCase(trim(cArq.Strings[i])) = 'GO' Then
            Inc(mx);

    if mx = 0 then
    begin
        Raise(Exception.Create('Conteúdo inválido no arquivo '+cFile+': '+cArq.Text));
    end;

    Tb_Script.Close;
    Tb_Script.SQL.Clear;

    for i := 0 to (cArq.Count-1) do
        if UpperCase(trim(cArq.Strings[i])) = 'GO' Then
        begin
            Tb_Script.ExecSQL;
            Tb_Script.Close ;
            Tb_Script.SQL.Clear;
        end
        else
            if trim(cArq.Strings[i]) <> '' then
                Tb_Script.SQL.Add(cArq.Strings[i]);

    cArq.Free;
    Result := True;
end;

procedure TTela_Zip_Transfer.AtualizaProcedures;
var Arquivo : Tstringlist;
    i, J : integer;
    cJaEncontrou : integer;
    cTexto : String;
begin
    try
    Rodape('Mudando o status das rotinas sql Pendentes para Publicadas');

    if System.SysUtils.DirectoryExists(cDirRaiz + 'v'+ edtVersao.Text) then
    begin
        FileListBox1.Mask := '*.sql*';
        FileListBox1.Directory :=  cDirRaiz + 'v'+ edtVersao.Text;
        FileListBox1.Update;
    end;

    Arquivo := Tstringlist.create;

    for I := 0 to FileListBox1.Count - 1 do
    begin
        Arquivo.clear;
        Arquivo.LoadFromFile(FileListBox1.Items[I]);

        Tb_Proc4.Close;
        Tb_Proc4.Open;

        Tb_Proc4.First;
        while not Tb_Proc4.eof do
        begin
            cTexto := '[dbo].['+Tb_Proc4Nm_Objeto.asstring+']'; //procura texto [dbo].[Sc_Alm_R_Req_Periodo]

            cJaEncontrou := 0;

            for j := 0 to Arquivo.Count - 1 do
            begin
                if pos(lowercase(cTexto),lowercase(Arquivo.Strings[j]))>0 then
                begin
                    cJaEncontrou := 1;
                    break;//cai fora deste for
                end;
            end;

            if  cJaEncontrou = 0 then
            begin
                cTexto := ''''+Tb_Proc4Nm_Objeto.asstring+''''; //exemplo procura texto 'Sc_Alm_R_Req_Periodo'

                for j := 0 to Arquivo.Count - 1 do
                begin
                    if pos(lowercase(cTexto),lowercase(Arquivo.Strings[j]))>0 then
                    begin
                        cJaEncontrou := 1;
                        break;//cai fora deste for
                    end;
                end;
            end;

            if  cJaEncontrou = 1 then
            begin
                sp_Log_Objeto.close;
                sp_Log_Objeto.ParamByName('V_Objeto').value := Tb_Proc4Nm_Objeto.asstring;
                sp_Log_Objeto.ParamByName('V_Versao').value := edtVersao.Text;
                sp_Log_Objeto.ExecProc;
            end;

            Tb_Proc4.next;
        end;
    end;

    Rodape('Atualizando as descrições das rotinas sql publicadas');

    Tb_Ver.Edit;
    Tb_VerDesc_RotinasSql.Text := DescritivoAutomatico();
    GravaUpdates(Tb_Ver);
    Except On E : Exception Do
    begin
        Showmessage(E.Message);
        raise Exception.Create(E.Message);
    
    end;
    end;
end;

Function TTela_Zip_Transfer.DescritivoAutomatico: String;
var Arquivo : Tstringlist;
    i, J : integer;
    cAchouObjeto, cAchouComentario : integer;
    cTexto, cObjeto, cVersao, cDescTecnica, cUsuario : String;

begin
    try
        if System.SysUtils.DirectoryExists(cDirRaiz + 'v'+ edtVersao.Text) then
        begin
            FileListBox1.Mask := '*.*';
            FileListBox1.Directory :=  cDirRaiz + 'v'+ edtVersao.Text;
            FileListBox1.Update;
        end;

        if  System.SysUtils.DirectoryExists(cDirRaiz + 'v'+ edtVersao.Text+ ' Pendente') then
        begin
            FileListBox1.Mask := '*.*';
            FileListBox1.Directory :=  cDirRaiz + 'v'+ edtVersao.Text + ' Pendente';
            FileListBox1.Update;
        end;
    except
    end;

    Arquivo := Tstringlist.create;

    cVersao := '-- V'+ Trim(edtVersao.Text) +' **';

    for I := 0 to FileListBox1.Count - 1 do
    begin
        Arquivo.clear;
        Arquivo.LoadFromFile(FileListBox1.Items[I]);

        cAchouObjeto     := 0;
        cAchouComentario := 0;
        cTexto   := '';
        cObjeto  := '';
        cUsuario := '';

        for j := 0 to Arquivo.Count - 1 do
        begin
            //SE FOR INSTRUÇÃO DE FINAL DE BLOCO "GO"  LIMPA TUDO
            if lowercase(Trim(Arquivo.Strings[j])) = 'go' then
            begin
                cAchouObjeto     := 0;
                cAchouComentario := 0;
                cTexto   := '';
                cObjeto  := '';
                cUsuario := '';
            end;

            //PROCURANDO O OBJETO ALTERADO
            if cAchouObjeto = 0 then
            begin
                if pos(lowercase('CREATE procedure' ),lowercase(Arquivo.Strings[j]))>0 then
                begin
                    cAchouObjeto := 1;
                    cObjeto := lowercase(Arquivo.Strings[j]);

                    //REMOVENDO TEXTOS DESNECESSARIOS
                    cObjeto := StringReplace(cObjeto,'create procedure','',[rfReplaceAll]);
                    cObjeto := StringReplace(cObjeto,'dbo','',[rfReplaceAll]);
                    cObjeto := StringReplace(cObjeto,'.','',[rfReplaceAll]);
                    cObjeto := StringReplace(cObjeto,'[','',[rfReplaceAll]);
                    cObjeto := StringReplace(cObjeto,']','',[rfReplaceAll]);
                    cObjeto := StringReplace(cObjeto,' ','',[rfReplaceAll]);
                    cObjeto := StringReplace(cObjeto,';','',[rfReplaceAll]);

                    cDescTecnica := cDescTecnica + char(13) + UpperCase(cObjeto);

                    cAchouComentario := 0;
                    cTexto   := '';
                    cObjeto  := '';
                    cUsuario := '';
                end;
            end;

            if (cAchouObjeto = 1) then
            begin
                if (cAchouComentario = 1)  then
                begin
                    if pos(lowercase('-- +Novos Comentários+'),lowercase(Arquivo.Strings[j]))>0 then
                    begin
                        if cTexto = '' then
                           cTexto := 'não foi informado nenhum comentário';

                        cDescTecnica :=  cDescTecnica + ' ' + cUsuario + char(13) +  cTexto;
                        cAchouObjeto     := 0;
                        cAchouComentario := 0;
                        cTexto    := '';
                        cObjeto   := '';
                        cUsuario  := '';
                    end
                    else
                    begin
                        if (trim((Arquivo.Strings[j])) <> '') and (trim((Arquivo.Strings[j])) <> '--') then
                           cTexto := cTexto +  Arquivo.Strings[j];
                    end;
                end;

                if cAchouComentario = 0 then
                begin
                    if pos(lowercase(cVersao),lowercase(Arquivo.Strings[j]))>0 then
                    begin
                        cAchouComentario := 1;
                        cUsuario := Arquivo.Strings[j];
                    end;
                end;
            end;
        end;
    end;

    result := TRIM( cDescTecnica );
end;

procedure TTela_Zip_Transfer.MostraAlertaFinal;
Var FForm : TForm;
    FlblMsg  : TcxLabel;
    FBotao   :TButton;
begin
    try
        FForm:= TForm.Create(nil);
        FForm.Caption:= 'ZipUpdate Mensagem';
        FForm.Width:= 350;
        FForm.Height:= 210;
        //FForm.BorderStyle:= bsDialog;
        FForm.Position:= poScreenCenter;
        FForm.Position  := poScreenCenter;
        FForm.BringToFront;
        //FForm.Font.Color := clRed;

        FlblMsg:= TcxLabel.Create(FForm);
        FlblMsg.Parent:= FForm;
        FlblMsg.ParentFont := False;
        FlblMsg.Style.TextColor := clRed;
        FlblMsg.Style.Font.Size  := 18;
        FlblMsg.Properties.Alignment.Horz := taCenter;
        FlblMsg.Properties.Alignment.Vert := taVCenter;
        FlblMsg.Caption    := 'VERSÃO PUBLICADA.';

        if InfoPadrao.Projeto = 'ACE4' then
           FlblMsg.Caption    := FlblMsg.Caption + char(13)+ 'ATUALIZE O ACE4 ZIPUPDATE.';

        FlblMsg.Width      := FForm.Width;
        FlblMsg.Properties.WordWrap   := True;
        FlblMsg.Align       := alClient;
        FlblMsg.Transparent:= True;

        FBotao:= TButton.Create(FForm);
        FBotao.Parent      := FForm;
        FBotao.Font.Size   := 60;
        FBotao.Caption     := 'OK';
        FBotao.ModalResult := mrOk;
        FBotao.Align       := alBottom;
        FBotao.Height      := 90;

        FForm.ShowModal;
    finally
        FlblMsg.Free;
        FBotao.Free;
        FForm.Free;
    end;
end;

procedure TTela_Zip_Transfer.ValidaSeTemPastaVazia(const RootDir: string);
var LastLevelFolders, EmptyFolders: TStringList;
    Folder: string;

    function HasFiles(const Dir: string): Boolean;
    var Files: TArray<string>;
    begin
        Files := TDirectory.GetFiles(Dir);
        Result := Length(Files) > 0;
    end;

    function GetLastLevelFolders(const RootDir: string): TStringList;
    var AllDirs, SubDirs: TArray<string>;
        Dir: string;
        IsLastLevel: Boolean;
    begin
        Result := TStringList.Create;
        try
            // Obtém todas as pastas dentro do diretório raiz
            AllDirs := TDirectory.GetDirectories(RootDir, '*', TSearchOption.soAllDirectories);

            for Dir in AllDirs do
            begin
                // Obtém subpastas dentro da pasta atual
                SubDirs := TDirectory.GetDirectories(Dir);

                // Se não houver subpastas, é uma pasta de último nível
                IsLastLevel := Length(SubDirs) = 0;

                if IsLastLevel then
                   Result.Add(Dir);
            end;
        except
            Result.Free;
            raise;
        end;
    end;
begin
    if not TDirectory.Exists(RootDir) then
        raise Exception.Create('Diretório raiz não encontrado!');

    LastLevelFolders := GetLastLevelFolders(RootDir);
    EmptyFolders := TStringList.Create;
    try
        for Folder in LastLevelFolders do
        begin
            if not HasFiles(Folder) then
                EmptyFolders.Add(Folder);
        end;

        if EmptyFolders.Count > 0 then
        begin
            raise Exception.Create('Erro: As seguintes pastas de último nível estão vazias'
                                    + char(13) + char(13) + EmptyFolders.Text);
        end;
    finally
        LastLevelFolders.Free;
        EmptyFolders.Free;
    end;
end;


end.
