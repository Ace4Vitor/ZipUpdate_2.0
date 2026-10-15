unit Zip_Menu;

interface

Uses
  Inifiles, ShellApi, dxSkinsDefaultPainters, 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, 
  Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  dxCore, cxClasses, dxAlertWindow, System.ImageList, Vcl.ImgList, cxImageList, Ace4Zip, dxSkinsForm, Vcl.ExtCtrls,
  dxGDIPlusClasses, Data.DB, MemDS, DBAccess, MSAccess, Vcl.MPlayer, cxProgressBar, Vcl.StdCtrls, cxButtons,
  dxImageSlider, cxGroupBox, Vcl.ComCtrls;

type
  TTela_Zip_Menu = class(TForm)
    DBDes: TMSConnection;
    DBTst: TMSConnection;
    BarradeStatus: TStatusBar;
    pnMenu0: TcxGroupBox;
    pnBarra: TcxGroupBox;
    btPublicar0: TcxButton;
    btScrypts: TcxButton;
    btFechar: TcxButton;
    Tb_Abe: TMSQuery;
    Tb_AbeAberto: TStringField;
    Tb_AbeMaquina: TStringField;
    Tb_Versao1: TMSQuery;
    BarraDeProgresso1: TcxProgressBar;
    btBackup: TcxButton;
    DbSis: TMSConnection;
    Tb_Versao2: TMSQuery;
    Tb_Versao2Data_Publicacao: TDateTimeField;
    Tb_Versao2Usuario: TStringField;
    gbxMenu: TcxGroupBox;
    dxImageSlider1: TdxImageSlider;
    cxImageCollection1: TcxImageCollection;
    cxImageCollection1Item1: TcxImageCollectionItem;
    cxImageCollection1Item2: TcxImageCollectionItem;
    tmFeaturesSlider: TTimer;
    ControleDeSkins: TdxSkinController;
    Ace4Zip1: TAce4Zip;
    Timer1: TTimer;
    ImgAlerta: TcxImageList;
    cxImageCollection1Item3: TcxImageCollectionItem;
    ImgPopupMenu: TcxImageList;
    btLogo: TcxButton;
    MediaPlayer: TMediaPlayer;
    MsgAlerta: TdxAlertWindowManager;
    Tb_Versao2Id_Versao: TIntegerField;
    Tb_Versao1Id_Versao: TIntegerField;
    procedure btScryptsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btPublicar0Click(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AbreTelaLogin;
    procedure BarradeStatusDrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel; const Rect: TRect);
    procedure btBackupClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmFeaturesSliderTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btLogoClick(Sender: TObject);
  private
    { Private declarations }
    nTempoAberto : Integer;
  public
    { Public declarations }
  end;

var
  Tela_Zip_Menu: TTela_Zip_Menu;

implementation

uses Zip_Menu_Login, Zip_Scrypts, Zip_Transfer, Zip_Config, Zip_Logos;

{$R *.dfm}

procedure TTela_Zip_Menu.FormCreate(Sender: TObject);
begin
    ControleDeSkins.ScrollbarMode := sbmClassic; //Isso mantem o scroll tracicional nos grids\ combos

    //Apenas para evitar carregar informação de banco não configurado no Arq Ini

    DBDes.Close;
    DBDes.Username := '';
    DBDes.Password := '';
    DBDes.Server   := '';
    DBDes.Port     := 0;
    DBDes.Database := '';

    DBDes.Close;
    DBDes.Username := '';
    DBDes.Password := '';
    DBDes.Server   := '';
    DBDes.Port     := 0;
    DBDes.Database := '';

    DBDes.Close;
    DBDes.Username := '';
    DBDes.Password := '';
    DBDes.Server   := '';
    DBDes.Port     := 0;
    DBDes.Database := '';

    InfoPadrao.ArqIni := ChangeFileExt(application.ExeName,'.INI');

    if not FileExists( InfoPadrao.ArqIni ) then
    begin
        showmessage('Arquivo '+ InfoPadrao.ArqIni + ' não encontrado.');
        Vcl.Forms.Application.Terminate;
    end;

    InfoPadrao.Projeto := uppercase(LeIni(InfoPadrao.ArqIni,'CONFIG_GERAL','PROJETO'));

    btBackup.visible    := False;
    btPublicar0.visible := False;

    if ( InfoPadrao.Projeto = 'ACE4' ) then
    begin
        Tb_Versao1.Connection  := DBTst;
        Tb_Versao2.Connection  := DbSis;

        btBackup.visible    := True;
        btPublicar0.visible := True;
    end;

    Tb_Abe.Connection      := DBDes;

    nTempoAberto := 0;

    if FileExists( ExtractFilePath(paramstr(0))+ 'msgalert.wav' ) then
    begin
        MediaPlayer.FileName := ExtractFilePath(paramstr(0))+ 'msgalert.wav';
        MediaPlayer.open;
    end;

    dxImageSlider1.ItemIndex := 0;
end;

procedure TTela_Zip_Menu.FormShow(Sender: TObject);
var cArquivoSkin : String;
begin
    //Abre a tela de Login
    AbreTelaLogin;

    Timer1.Enabled := True;

    // Cores para fundo de campos
    InfoPadrao.CorCampoAtivo   := clWindow;
    InfoPadrao.CorCampoInativo := clBtnFace;

    //Cores da Grade
    InfoPadrao.CorGridInativo      := clBtnFace;
    InfoPadrao.CorGridLinhaPar     := clBtnFace;
    InfoPadrao.CorGridLinhaImpar   := clBtnFace;

    ControleDeSkins.ScrollbarMode := sbmClassic; //Isso mantem o scroll tracicional nos grids\ combos
    ControleDeSkins.NativeStyle   := True;
    ControleDeSkins.SkinName      := 'UserSkin';
    ControleDeSkins.UseSkins      := False;

    //AJUSTE DE SKINS TEM QUE SER ANTES DE CRIAR AS TELAS
    cArquivoSkin :=  LeIni(InfoPadrao.ArqIni,'CONFIG_GERAL','SKIN');
    if cArquivoSkin <> '' then
    begin
        if cArquivoSkin = '(Padrão)' then
           InfoPadrao.UsaSkin := True;

        cArquivoSkin :=  ExtractFilePath(paramstr(0))+'Recurso\Skins\'+ cArquivoSkin +'.skinres';

        if FileExists( cArquivoSkin) then
        begin
            ControleDeSkins.NativeStyle := False;
            dxSkinsUserSkinLoadFromFile( cArquivoSkin);
            ControleDeSkins.UseSkins := True;
            InfoPadrao.CorCampoAtivo     := CorSkin('Editors', 'BackgroundColor');
            InfoPadrao.CorCampoInativo   := CorSkin('Editors', 'BackgroundDisabledColor');

            InfoPadrao.CorGridInativo    := CorSkin('Grid', 'BackgroundDisabledColor');
            InfoPadrao.CorGridLinhaPar   := CorSkin('Grid', 'BackgroundDisabledEvenColor');
            InfoPadrao.CorGridLinhaImpar := CorSkin('Grid', 'BackgroundDisabledOddColor');
        end;
    end;

    AjustaConfiguracaoSkin(Tela_Zip_Menu);

    Tb_Abe.Close;
    Tb_Abe.ParamByName('Nome_Exe').AsString := ExtractFileName(paramstr(0));
    Tb_Abe.Open;

    if (Tb_AbeAberto.AsString = 'S') then
    begin
        showmessage(' O ZipUpdate está em uso no Micro ' +  StringReplace(Tb_AbeMaquina.AsString,'\',' por ',[]));
        Application.Terminate;
    end;

    if ( InfoPadrao.Projeto = 'ACE4' )  then
    begin
        Tb_Versao1.Close;
        Tb_Versao1.Open;

        Tb_Versao2.Close;
        Tb_Versao2.Open;

        //dxTileControl1Item2dxTileControlItemFrame3.Text1.Value := 'Última Versão Publicada ' + Tb_Versao2Id_Versao.AsString;
        //dxTileControl1Item2dxTileControlItemFrame3.Text3.Value := 'Publicada por ' + Tb_Versao2Usuario.AsString;

        if (Tb_Versao1.RecordCount = 1) and (Tb_Versao2.RecordCount = 1) then
        begin
            if  Tb_Versao1Id_Versao.AsInteger < Tb_Versao2Id_Versao.AsInteger then
            begin
                showmessage('Ultima versão publicada não foi atualizada na área de Testes.'
                            +char(13)
                            +char(13)
                            +'Versão '+ Tb_Versao2Id_Versao.AsString
                            +' por ' + Tb_Versao2Usuario.AsString
                            +' em ' + DateTimeToStr(Tb_Versao2Data_Publicacao.value) + '.');
                Application.Terminate;
            end;
        end
        else
        begin
            showmessage('Ocorreu um erro ao Verificar ultima versão publicada.');
            Application.Terminate;
        end;
    end;

    InfoPadrao.ChaveTrello := LeIni(InfoPadrao.ArqIni,'CHAVE-TRELLO',InfoPadrao.Usuario);
end;

procedure TTela_Zip_Menu.Timer1Timer(Sender: TObject);
begin
    nTempoAberto := nTempoAberto + 5;

    MsgAlerta.Show('Alerta do ZipUpdate','O ZipUpdate está aberto á mais de ' + IntToStr(nTempoAberto) +' minutos !'
                    + char(13) + 'Se não estiver usando feche-o!',0);
    try
        MediaPlayer.Play;
    except
    end;
end;

procedure TTela_Zip_Menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if mrYes = MessageDlg('Confirma Encerramento do Sistema...',mtConfirmation,[mbYes,mbNo],0) then
    begin
        MsgAlerta.Destroy;
        Action := caFree;
    end
	else
    begin
        Action := caNone;
    end;
end;

procedure TTela_Zip_Menu.btScryptsClick(Sender: TObject);
begin
    if Application.FindComponent('Tela_Zip_Scrypts') <> Nil then
       Tela_Zip_Scrypts.Destroy;

    RegisterClass(TTela_Zip_Scrypts);
    Tela_Zip_Scrypts  := TTela_Zip_Scrypts.Create(Application);

    AjustaConfiguracaoSkin(Tela_Zip_Scrypts);

    Tela_Zip_Scrypts.Parent      := Tela_Zip_Menu;
    Tela_Zip_Scrypts.BorderStyle := bsNone ;
    Tela_Zip_Scrypts.WindowState := wsMaximized;
    Tela_Zip_Scrypts.Align       := alClient;
    Tela_Zip_Scrypts.Show;

    //Isso força o encaixe perfeito na tela
    Tela_Zip_Menu.BarradeStatus.Visible := False;
    Tela_Zip_Menu.BarradeStatus.Visible := True;
end;

procedure TTela_Zip_Menu.btPublicar0Click(Sender: TObject);
begin
    BarradeProgresso(0,0);

    Rodape('');

    if Application.FindComponent('Tela_Zip_Transfer') <> Nil then
       Tela_Zip_Transfer.Destroy;

    RegisterClass(TTela_Zip_Transfer);
    Tela_Zip_Transfer  := TTela_Zip_Transfer.Create(Application);

    AjustaConfiguracaoSkin(Tela_Zip_Transfer);

    Tela_Zip_Transfer.Parent      := Tela_Zip_Menu;
    Tela_Zip_Transfer.BorderStyle := bsNone ;
    Tela_Zip_Transfer.WindowState := wsMaximized;
    Tela_Zip_Transfer.Align       := alClient;
    Tela_Zip_Transfer.Show;

    //Isso força o encaixe perfeito na tela
    Tela_Zip_Menu.BarradeStatus.Visible := False;
    Tela_Zip_Menu.BarradeStatus.Visible := True;
end;

procedure TTela_Zip_Menu.btBackupClick(Sender: TObject);
var i, j, N: integer;
    Lista1, Lista2, Lista3: TStrings;
    Contador, nDig : Integer;
    DiretorioOrigem, DiretorioDestino, NomeArquivoZip, cRad : string;
    FezBackup : boolean;
begin
    //if MessageDlg('Deseja realmente Fazer Backup das Versões?', mtConfirmation, [mbYes,mbNo], 0) <> mrYes then Exit;

    btBackup.Enabled    := False;
    btFechar.Enabled    := False;
    btPublicar0.Enabled := False;
    btScrypts.Enabled   := False;

    DiretorioOrigem := DiretorioBarraFinal('REMOVE', ExtractFilePath(paramstr(0)));

    Lista1 := TStringList.Create;
    Lista2 := TStringList.Create;
    Lista3 := TStringList.Create;

    Rodape('Aguarde...Montando lista de pastas p\ Backup');

    Lista1.Clear;
    ListaDiretorios( DiretorioOrigem, Lista1, False); // o true é se vai mostrar os subdiretórios
    Lista1.text :=   lowercase(Lista1.text);

    BarradeProgresso(0,Lista1.Count);

    for I := 0 to Lista1.Count - 1 do
    begin
        BarradeProgresso(i,0);

        Lista1[i] := copy(Lista1[i], pos(DiretorioOrigem,Lista1[i]) + length(DiretorioOrigem)+1, length(Lista1[i]));

        if (copy(Lista1[i],1,2) <> '\v') then
           Lista1[i] := ''
        else
        begin
            //REMOVE O TEXTO \v
            Lista1[i] := StringReplace(Lista1[i],'\v','',[rfReplaceAll]);
            //REMOVE ESPACOS
            Lista1[i] := StringReplace(Lista1[i],' ','',[rfReplaceAll]);

            if SeForInteiro(Lista1[i]) = true then
               Lista2.Add(Lista1[i]);
        end;
    end;

    Rodape('Aguarde...Montando lista de Arquivos p\ Backup');

    BarradeProgresso(0,Lista2.Count);

    cRad      := '';
    nDig      := 0;
    Contador  := 0;
    FezBackup := False;

    for I := 0 to Lista2.Count - 1 do
    begin
        BarradeProgresso(i,0);

        //CHECA SE O ULTIMO DIGITO É 0
        if copy(Lista2[i],length(Lista2[i]) , 1) = '0' then
        begin
            nDig :=  StrToInt(copy(Lista2[i],  length(Lista2[i]),1));
            cRad :=  copy(Lista2[i],1,length(Lista2[i])-1);
            Contador := 0;
        end;

        if  (nDig + Contador)  =  StrToInt(copy(Lista2[i],  length(Lista2[i]),1)) then
        begin
            Contador := Contador +  1;
        end
        else
        begin
            cRad     := '';
            nDig     := 0;
            Contador := 0;
        end;

        if Contador = 10 then
        begin
            Lista1.Clear;
            Contador := 0;
            FezBackup := True;
            DiretorioDestino :=  DiretorioOrigem +'\Backup';
            NomeArquivoZip := 'v'+ cRad +  inttostr(nDig) + '_ate_v' + cRad + inttostr(nDig + 9);

            for J := 0 to  9 do
            begin
                Ace4Zip1.Lista.Add(DiretorioOrigem+'\v'+ cRad + inttostr(nDig + j));

                Lista1.Add(DiretorioOrigem+'\v'+ cRad + inttostr(nDig + j));// para excluir no final
            end;

            Rodape('Aguarde... Compactando Arquivos...');

            Ace4Zip1.DiretorioOrigem  := DiretorioOrigem;
            Ace4Zip1.DiretorioDestino := DiretorioDestino;
            Ace4Zip1.NomeArquivoZip   := NomeArquivoZip;
            Ace4Zip1.CompactaArquivo(Nil);

            Rodape('Aguarde... Apagando as pastas...');

            for J := 0 to  Lista1.Count - 1 do
            begin
                Lista3.Clear;
                ListaDiretorios( Lista1[j], Lista3, True); // o true é se vai mostrar os subdiretórios

                for N := Lista3.Count - 1 downto 0 do
                    ExcluiDiretorios(Lista3[N]);
            end;
        end;
    end;

    BarradeProgresso(0,0);

    if FezBackup = True then
       Rodape('Backup de Versões Concluido com Sucesso...')
    else
       Rodape('Não há sequência de arquivos com final entre 0 a 9 para fazer backup...');

    sleep(5000);
    Rodape('');

    FreeAndNil(Lista1);
    FreeAndNil(Lista2);
    FreeAndNil(Lista3);

    btBackup.Enabled    := True;
    btFechar.Enabled    := True;
    btPublicar0.Enabled := True;
    btScrypts.Enabled   := True;
end;

procedure TTela_Zip_Menu.btFecharClick(Sender: TObject);
begin
    Tela_Zip_Menu.close;
end;

procedure TTela_Zip_Menu.btLogoClick(Sender: TObject);
begin
    if Application.FindComponent('Tela_Zip_Logos') <> Nil then
       Tela_Zip_Logos.Destroy;

    RegisterClass(TTela_Zip_Logos);
    Tela_Zip_Logos  := TTela_Zip_Logos.Create(Application);

    AjustaConfiguracaoSkin(Tela_Zip_Logos);

    Tela_Zip_Logos.Parent      := Tela_Zip_Menu;
    Tela_Zip_Logos.BorderStyle := bsNone ;
    Tela_Zip_Logos.WindowState := wsMaximized ;
    Tela_Zip_Logos.Align       := alClient;
    Tela_Zip_Logos.Show;

    //Isso força o encaixe perfeito na tela
    Tela_Zip_Menu.BarradeStatus.Visible := False;
    Tela_Zip_Menu.BarradeStatus.Visible := True;
end;

procedure TTela_Zip_Menu.BarradeStatusDrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel; const Rect: TRect);
begin
    if Panel.Index = 0 then
    Begin
        if Panel.Text = '' then
            StatusBar.Canvas.Brush.color := clBtnFace
        else
            StatusBar.Canvas.Brush.color := $00FDCC9F;
        StatusBar.Canvas.FillRect(Rect);
        StatusBar.Canvas.TextOut(Rect.Left +1 , Rect.Top + 1, Panel.Text);
    end;
    if Panel.Index = 1 then
    begin
        { Ajusta a tamanho da ProgressBar de acordo com  o tamanho do painel }
        BarraDeProgresso1.Width  := (Rect.Right - Rect.Left +1 );
        BarraDeProgresso1.Height := (Rect.Bottom - Rect.Top +1 ) +5;
        { Pinta a ProgressBar no DC (device-context) da StatusBar }
        BarraDeProgresso1.PaintTo(StatusBar.Canvas.Handle, Rect.Left -1 , Rect.Top -1);
    end;
end;

procedure TTela_Zip_Menu.AbreTelaLogin;
begin
    Application.CreateForm( TTela_Zip_Menu_Login,Tela_Zip_Menu_Login);
    if Tela_Zip_Menu_Login.ShowModal = mrCancel then
    begin
        Tela_Zip_Menu_Login.Free;
        halt;
    end;

    if Application.FindComponent('Tela_Zip_Menu_Login') <> Nil then
       Tela_Zip_Menu_Login.Destroy;
end;

procedure TTela_Zip_Menu.tmFeaturesSliderTimer(Sender: TObject);
begin
    if dxImageSlider1.CanGoToNextImage then
        dxImageSlider1.GoToNextImage
    else
        dxImageSlider1.GoToImage(0);
end;

end.
