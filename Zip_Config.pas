unit Zip_Config;

interface

Uses
     Web.HTTPApp, IniFiles, FileCtrl, Shellapi, Tlhelp32, psapi, DateUtils, JvDriveCtrls, System.UITypes, Clipbrd,
     Windows, Forms, SysUtils, Classes, Messages, Dialogs, Controls,ComCtrls, Graphics, cxProgressBar, cxLookAndFeels,
     Menus,  DB, MemDS, DBAccess, MSAccess, OLEDBAccess, dxSkinsForm, dxSkinsCore, dxSkinInfo, cxLookAndFeelPainters,
     cxPC,  cxTextEdit, cxGridLevel, cxCustomPivotGrid, cxExportPivotGridLink, cxGridTableView, cxGridBandedTableView,
     cxGraphics, cxImageList, cxGridCustomView, cxGridCustomTableView, cxGridExportLink, cxGrid, cxGridDbTableView,
     IdTCPConnection,  IdAttachmentFile, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
     IdSMTPBase, IdSMTP, IdMessage, IdText, IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL,
     IdIOHandlerStack, IdSSL, IdCoderMIME, Json, IdURI, IdHTTP, IdCookieManager, IdSASL, IdSASLUserPass, IdSASLLogin,
     IdUserPassProvider;

type
    TInfoPadrao = record
        NomeExe           : String;
        NomePc            : String;
        //EhServidor      : Boolean;
        PastaTemp         : String;
        TextoCelula       : String;
        NomeTela          : String;
        ChaveTrello       : String;
        ArqIni            : String;
        Projeto           : String;
        Usuario           : String;
        //SiglaEmp        : String;
        //NomeDB          : String;
        //VersaoDB        : String;
        UsaSkin           : Boolean;
        CorCampoAtivo     : TColor;
        CorCampoInativo   : TColor;
        CorGridInativo    : TColor;
        CorGridLinhaPar   : TColor;
        CorGridLinhaImpar : TColor;
    end;

type
  TPadrao = class(TcxGrid)
  private
	 { Private declarations }
  public
	 { Public declarations }

      procedure MouseDownGrid(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
      procedure PopupMenuGridClick(Sender: TObject);
end;

var ObjPadrao : TPadrao;
    PopUpGrid : TPopupMenu;
    AGridPadrao : TcxGrid;
    AViewPadrao : TcxCustomGridView;
    InfoPadrao : TInfoPadrao;

    Function LeIni( Ini,Chave,Linha : String ) : String;
    function Criptografia(cAcao, cTexto: String): String;
    Function DiretorioBarraFinal(cAcao, cDir: String) : String;
    Function EmExcucao(Nome:String):Boolean;
    Function SeForInteiro(Texto:String):boolean;
    Function ExcluiDiretorios(FullPath: String): Boolean;
    Function GravaUpdates(var Tabela: TMSQuery ): boolean;
    function EnviaEmail( cTpEnvio, cEmailOri, cEmailDes, cAssunto: String; lstCorpoEmail, lstCorpoEmail_Html, lstAnexos : Tstringlist ): String;
    Function CorSkin(Grupo: string; Propriedade: string) : TColor;

    function DiferencaEntreDatas(Data1, Data2 : TDateTime): Integer;
    function DataDoArquivo(cArquivo, cTipoData :String):TDatetime;

    Procedure GravaIni  ( Ini, Chave, Campo, Conteudo: String ) ;
    Procedure ListaDiretorios( Directory: String; var Result: TStrings; SubPastas: Boolean);
    Procedure Rodape( cTexto: String);
    Procedure BarradeProgresso( Pos, Max : integer);
    Procedure AplicaConfigPadrao(Tela : TForm);
    Procedure Espera(lAtivar : Boolean ;cMsg : String ) ;
    procedure AjustaConfiguracaoSkin( NomeForm : TCustomForm);
    procedure ExportaDadosDoGrid(NomeDoGrid: TcxGrid);

implementation

uses Zip_Menu;

procedure TPadrao.MouseDownGrid(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var AHitTest: TcxCustomGridHitTest;
    AGridSite: TcxGridSite;

    function NomedaTela(aParent:TComponent):TComponent;
    var bAchou :boolean;
    begin
        //GAMBIARRA PARA ENCONTRAR O NOME DA TELA QUE ESTA ATIVA...
        bAchou := False;

        while bAchou = False do
        begin
            aParent := aParent.GetParentComponent;

            if aParent = nil then
            begin
                result:=nil;
                bAchou := True;
                exit;
            end;

            if copy(lowercase((aParent).ClassType.ClassName),1,5) = 'ttela'then
            begin
                result:= aParent;
                bAchou := True;
                exit;
            end;
        end;
    end;
begin
    InfoPadrao.TextoCelula := '';
    AGridPadrao := Nil;
    AViewPadrao := Nil;

    AGridSite := Sender as TcxGridSite;

    if AGridSite.ViewInfo.GridView.PopupMenu = nil then exit;

    if Button = mbRight then
    begin
        AHitTest := AGridSite.ViewInfo.GetHitTest(Point(X,Y));
        if (AHitTest.HitTestCode = htCell) then
        begin
            InfoPadrao.TextoCelula := TcxGridRecordHitTest(AHitTest).ViewInfo.Text;
        end;

        AGridPadrao := AGridSite.Parent as TcxGrid;
        AViewPadrao := AGridSite.GridView;
    end;
end;

procedure TPadrao.PopupMenuGridClick(Sender: TObject);
begin
    If Sender is TMenuItem then
    begin
        Case TMenuItem(Sender).Tag of
            98 : Clipboard.AsText := InfoPadrao.TextoCelula;
            99 : ExportaDadosDoGrid(AGridPadrao);
        end;
    end;
end;

procedure ExportaDadosDoGrid(NomeDoGrid: TcxGrid);
var SaveDialog: TSaveDialog;
    cArquivo : string;
begin
    SaveDialog := TSaveDialog.Create(nil);
    SaveDialog.Filter := 'Arquivo do Excel|*.xlsx|Arquivo do Excel 97-2003|*.xls';
    SaveDialog.FilterIndex := 1 ;

    if SaveDialog.Execute = False then exit;

    cxGridExportLink.ExportImagesAsGraphic := true;

    cArquivo := ExtractFileName(saveDialog.FileName);

    cArquivo := ChangeFileExt(cArquivo,'');//limpa a extensão que o usuario digitou

    if SaveDialog.FilterIndex = 1 then cArquivo := cArquivo + '.xlsx';
    if SaveDialog.FilterIndex = 2 then cArquivo := cArquivo + '.xls';

    cArquivo := ExtractFilePath(saveDialog.FileName) + cArquivo;

    If FileExists(saveDialog.FileName) then
       If MessageDlg('O arquivo "' + saveDialog.FileName + '" já existe.'+#13+'Deseja sobrescrevê-lo?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
          exit;

    if (SaveDialog.FilterIndex <> 1 ) and (TcxCustomGrid(NomeDoGrid).Views[0].DataController.DataRowCount > 65500 ) then
    begin
        If MessageDlg('Quantidade superior a 65500 registros.'+#13+'O arquivo exportado pode perder alguns registros.'+#13+'Deseja exportar mesmo assim?',mtWarning,[mbYes,mbNo],0) <> mrYes then
        begin
            exit;
        end;
    end;

    if SaveDialog.FilterIndex = 1 then ExportGridToXLSX (SaveDialog.FileName,TcxGrid(NomeDoGrid));
    if SaveDialog.FilterIndex = 2 then ExportGridToExcel(SaveDialog.FileName,TcxGrid(NomeDoGrid));

    FreeAndNil(SaveDialog);
end;

Procedure Espera(lAtivar : Boolean; cMsg : String ) ;
begin
    if lAtivar  Then
    Begin
        screen.Cursor := crHourGlass;
        if (cMsg = EmptyStr) then
           Rodape(' Aguarde ... ')
        Else
           Rodape(cMsg)
    end
    else
    Begin
        screen.Cursor := crDefault;
        Rodape('')
    end;

    Application.ProcessMessages;
end;

Function CorSkin(Grupo: string; Propriedade: string) : TColor;
var AGroup: TdxSkinControlGroup;
    ASkinInfo: TdxSkinInfo;
    AProperty: TdxSkinProperty;
begin
    Result := clWindow;

    Try
        if RootLookAndFeel.Painter.GetPainterData(ASkinInfo) then
        begin
            if Grupo = '' then
            begin
                Result := ASkinInfo.Skin.GetColorByName(Propriedade).Value;
            end
            else
            begin
                 AGroup := ASkinInfo.Skin.GetGroupByName(Grupo);

                 if aSkinInfo.Skin.GetGroupByName(Grupo, AGroup) then
                 begin
                     aProperty := AGroup.GetPropertyByName(Propriedade);
                      if Assigned(aProperty) then
                         Result := TdxSkinColor(aProperty).Value;
                 end;
            end;
        end;
    Except
        Result := clWindow;
    End;
end;


procedure AjustaConfiguracaoSkin( NomeForm : TCustomForm);
var I: integer;
    ASkinInfo: TdxSkinInfo;
begin
    if RootLookAndFeel.Painter.GetPainterData(ASkinInfo) then
    begin
        RootLookAndFeel.Painter.GetPainterData(ASkinInfo);
    end;

    for I := 0 to NomeForm.ComponentCount - 1 do
    begin
        if NomeForm.Components[I] <> nil then
        begin
            if NomeForm.Components[I] is TcxPageControl then
            begin
                TcxPageControl(NomeForm.Components[I]).Style := 0;
            end
            else
            if NomeForm.Components[I].InheritsFrom(TcxCustomTextEdit) then
            begin
                if (NomeForm.Components[I] as TcxCustomTextEdit).Properties.ReadOnly = true then
                begin
                    (NomeForm.Components[I] as TcxCustomTextEdit).Style.Color := InfoPadrao.CorCampoInativo;
                end;
            end
            else
            if NomeForm.Components[I] is TScrollBox then
            begin
                if InfoPadrao.UsaSkin then
                    (NomeForm.Components[I] as TScrollBox).Color := CorSkin('', 'LayoutControlColor')
                else
                    (NomeForm.Components[I] as TScrollBox).Color := clBtnFace;
            end
            else
            if NomeForm.Components[I] is TJvFileListBox then
            begin
                if InfoPadrao.UsaSkin then
                    (NomeForm.Components[I] as TJvFileListBox).Color := CorSkin('', 'LayoutControlColor')
                else
                    (NomeForm.Components[I] as TJvFileListBox).Color := clBtnFace;
            end
            else
            if NomeForm.Components[I] is TFileListBox then
            begin
                if InfoPadrao.UsaSkin then
                    (NomeForm.Components[I] as TFileListBox).Color := CorSkin('', 'LayoutControlColor')
                else
                    (NomeForm.Components[I] as TFileListBox).Color := clBtnFace;
            end;
        end;
    end;
    NomeForm.Update;
end;

Procedure GravaIni  ( Ini,Chave,Campo ,Conteudo: String ) ;
var FIniFile : TIniFile ;
begin
    FIniFile := TIniFile.Create(Ini) ;
    FIniFile.WriteString(UpperCase(Chave), UpperCase(Campo), Conteudo);
    FIniFile.Free;
end;

Function LeIni ( Ini,Chave,Linha : String ) : String;
var FIniFile : TIniFile ;
begin
    FIniFile := TIniFile.Create(Ini) ;
    result :=  FIniFile.ReadString(UpperCase(Chave),UpperCase(Linha),'') ;
    FIniFile.Free ;
end;         

Procedure ListaDiretorios(Directory: String; var Result: TStrings; SubPastas: Boolean);
var  Sr : TSearchRec;

    Procedure Recursive(Dir : String); { Sub Procedure, Recursiva }
    var  SrAux : TSearchRec;
    begin
        Try
            if SrAux.Name = EmptyStr then
                FindFirst(Directory + '\' + Dir + '\*.*', faDirectory, SrAux);

            while FindNext(SrAux) = 0 do
            begin
                if SrAux.Name <> '..' then
                begin
                    if SysUtils.DirectoryExists(Directory + '\' + Dir + '\' + SrAux.Name) then
                    begin
                        Result.Add(Directory + '\' + Dir + '\' + SrAux.Name);
                        Recursive(Dir + '\' + SrAux.Name);
                    end;
                end;
            end;
        Finally
            FindClose(SrAux);
        End;
    end;
begin
    Try
        Result.Add(Directory);//add o Dir Raiz
        FindFirst(Directory + '\*.*', faDirectory, Sr);
        while FindNext(Sr) = 0 do
        begin
            if Sr.Name <> '..' then
            begin
                if SysUtils.DirectoryExists(Directory + '\' + Sr.Name) then
                begin
                    Result.Add(Directory+'\'+Sr.Name);

                    if SubPastas then
                       Recursive(Sr.Name);
                end;
            end;
        end;
    Finally
        FindClose(Sr);
    end;
end;

function Criptografia(cAcao, cTexto: String): String;
Label Fim;
var KeyLen, KeyPos, OffSet, SrcPos, SrcAsc, TmpSrcAsc, Range : Integer;
    Dest, Key : String;
begin
    if (cTexto = '') Then
    begin
        Result:= '';
        Goto Fim;
    end;

    Key := 'EM1999FOIFUNDADOAEMPRESAINSIGHTEM2021AEMPRESAACE4COMPLETOU22ANOS';

    Dest := '';
    KeyLen := Length(Key);
    KeyPos := 0;
    SrcPos := 0;
    SrcAsc := 0;
    Range := 256;

    if UpperCase(cAcao) = UpperCase('C') then
    begin
        Randomize;
        OffSet := Random(Range);
        Dest := Format('%1.2x',[OffSet]);

        for SrcPos := 1 to Length(cTexto) do
        begin
            Application.ProcessMessages;
            SrcAsc := (Ord(cTexto[SrcPos]) + OffSet) Mod 255;

            if KeyPos < KeyLen then
                KeyPos := KeyPos + 1
            else
                KeyPos := 1;

            SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
            Dest := Dest + Format('%1.2x',[SrcAsc]);
            OffSet := SrcAsc;
        end;
    end
    Else
    if UpperCase(cAcao) = UpperCase('D') then
    begin
        OffSet := StrToInt('$'+ copy(cTexto,1,2));
        SrcPos := 3;

        repeat
            SrcAsc := StrToInt('$'+ copy(cTexto,SrcPos,2));

            if (KeyPos < KeyLen) Then
                KeyPos := KeyPos + 1
            else
                KeyPos := 1;

            TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);

            if TmpSrcAsc <= OffSet then
                TmpSrcAsc := 255 + TmpSrcAsc - OffSet
            else
                TmpSrcAsc := TmpSrcAsc - OffSet;

            Dest := Dest + Chr(TmpSrcAsc);
            OffSet := SrcAsc;
            SrcPos := SrcPos + 2;
        until (SrcPos >= Length(cTexto));
    end;
    Result:= Dest;
    Fim:
end;

Function DiretorioBarraFinal(cAcao, cDir: String) : String;
begin
    Result := cDir;
    if cAcao = 'REMOVE' then
    begin
        if copy(cDir, length(cDir), 1 ) = '\'  then
           Result := copy(cDir, 1, length(cDir) - 1 );
    end;

    if cAcao = 'ADICIONA' then
    begin
        if copy(cDir, length(cDir), 1 ) <> '\'  then
           Result
            := cDir + '\';
    end;
end;

Function ExcluiDiretorios(FullPath: String): Boolean;
Var sDir: String;
    Rec: TSearchRec;
begin
    sDir := IncludeTrailingPathDelimiter(FullPath);
    if FindFirst(sDir + '*.*', faAnyFile, Rec) = 0 then

    try
        repeat
            if (Rec.Attr and faDirectory) = faDirectory then
            begin
                if (Rec.Name <> '.') and (Rec.Name <> '..') then
                    ExcluiDiretorios(sDir + Rec.Name);
            end
            else
            begin
                DeleteFile(sDir + Rec.Name);
            end;
        until FindNext(Rec) <> 0;
    finally
        FindClose(Rec);
    end;

    Result := RemoveDir(sDir);
end;

Function EmExcucao(Nome:String):Boolean;
var rId:array[0..999] of DWord; i,NumProc,NumMod:DWord;
    HProc,HMod:THandle; sNome:String;
    Tamanho, Count:Integer;
    sNomeTratado:String;
begin
    result:=False;
    SetLength(sNome, 256);
    // Aqui vc pega os IDs dos processos em execução
    EnumProcesses(@rId[0], 4000, NumProc);

    // Aqui vc faz um for p/ pegar cada processo
    for i := 0 to NumProc div 4 do
    begin
        // Aqui vc seleciona o processo
        HProc := OpenProcess(Process_Query_Information or Process_VM_Read, FALSE, rId[i]);
        if HProc = 0 then
           Continue;

        // Aqui vc pega os módulos do processo
        // Como vc só quer o nome do programa, então será sempre o primeiro
        EnumProcessModules(HProc, @HMod, 4, NumMod);
        // Aqui vc pega o nome do módulo; como é o primeiro, é o nome do programa
        GetModuleBaseName(HProc, HMod, @sNome[1], 256);
        sNomeTratado := trim(sNome);
        Tamanho:=Length(SnomeTratado);
        Count:=1;

        While Count <= Tamanho do
        begin
            if SnomeTratado[Count]= '' Then
               Break;

            count:=Count+1;
        end;
        sNomeTratado:=Copy(SnomeTratado,1,Count-1);
        if AnsiUpperCase(sNomeTratado)=AnsiUpperCase(Nome) Then
           Result:=True;
        // Aqui vc libera o handle do processo selecionado
        CloseHandle(HProc);
    end;
end;

Function SeForInteiro(Texto:String):boolean;
var c : char;
    T, i : integer;
begin
    Result  := True;
    T := length(Texto);
    //checa se é vazio
    if T= 0 then
    begin
        Result := False;
        exit;
    end;
    
    //checa caracter por caracter
    for I := 1 to T do
    begin
        c := Texto[I];
        if Not (c in ['0','1','2','3','4','5','6','7','8','9']) then
        begin
            Result := False;
            break;
        end;
    end;
end;

Procedure Rodape(cTexto: String);
begin
    //caso tenha sido criado um novo painel, sempre revisar Tela_Zip_Menu.BarradeStatusDrawPanel
    TStatusBar(application.mainform.FindComponent('BarradeStatus')).Panels[0].Text := cTexto;
    TStatusBar(application.mainform.FindComponent('BarradeStatus')).Repaint;
    Application.ProcessMessages;
end;

Procedure BarradeProgresso(Pos, Max : integer);
begin
    if Max > 0 then
    begin
       TcxProgressBar(application.mainform.FindComponent('BarraDeProgresso1')).Properties.Max := Max;
       TcxProgressBar(application.mainform.FindComponent('BarraDeProgresso1')).Position       := Pos;
    end
    else
       TcxProgressBar(application.mainform.FindComponent('BarraDeProgresso1')).Position       := Pos;

    TStatusBar(application.mainform.FindComponent('BarradeStatus')).Repaint;
    Application.ProcessMessages;
end;

Procedure AplicaConfigPadrao(Tela : TForm);
var n :  integer;
   Item: TMenuItem;
begin
    for  n := 0 to (Tela.ComponentCount - 1) do
    begin
        if (Tela.Components[n] is TMSQuery)  then
        begin
            TMSQuery(Tela.Components[n]).active := False;
            TMSQuery(Tela.Components[n]).Connection      := TMSConnection(Application.MainForm.FindComponent('DBDes'));

            if TMSQuery(Tela.Components[n]).UpdateObject <> Nil then
               TMSQuery(Tela.Components[n]).CachedUpdates := True
            else
               TMSQuery(Tela.Components[n]).CachedUpdates := False;
        end;

        if (Tela.Components[n] is TMSStoredProc)  then
        begin
            TMSStoredProc(Tela.Components[n]).Connection := TMSConnection(Application.MainForm.FindComponent('DBDes'));
        end;

        if (Tela.Components[n] is TcxCustomGridTableView)  then
        begin
            TcxCustomGridTableView(Tela.Components[n]).optionsdata.Deleting := False;
            TcxCustomGridTableView(Tela.Components[n]).optionsdata.DeletingConfirmation := False;

            //TcxCustomGridTableView(Tela.Components[n]).OnCustomDrawCell := ObjPadrao.DoCustomDrawCell;

            if TcxCustomGridView(Tela.Components[n]).PopupMenu <> NIl then
            begin
                Item := TMenuItem.Create(TcxCustomGridView(Tela.Components[n]).PopupMenu);
                Item.tag        := 98;
                Item.Name       := TcxCustomGridView(Tela.Components[n]).Name + 'CopiaCelula';
                Item.Caption    := 'Copiar conteúdo da célula.';
                Item.OnClick    := ObjPadrao.PopupMenuGridClick;
                item.ImageIndex := 1;
                TPopupMenu(TcxCustomGridView(Tela.Components[n]).PopupMenu).Items.Add(Item);

                Item := TMenuItem.Create(TcxCustomGridView(Tela.Components[n]).PopupMenu);
                Item.tag        := 99;
                Item.Name       := TcxCustomGridView(Tela.Components[n]).name + 'ExportaGrid';
                Item.Caption    := 'Exportar dados para o excel.';
                Item.OnClick    := ObjPadrao.PopupMenuGridClick;
                item.ImageIndex := 4;

                TPopupMenu(TcxCustomGridView(Tela.Components[n]).PopupMenu).Items.Add(Item);
            end;

            if TcxCustomGridView(Tela.Components[n]).PopupMenu = NIl then
            begin
                if PopUpGrid = Nil then
                begin
                    if not (csDesigning in Tela.ComponentState) then
                    begin
                        PopUpGrid      := TPopupMenu.Create(Tela);
                        PopUpGrid.Name := Tela.Name + 'Popup';
                        PopUpGrid.Images := Tela_Zip_Menu.ImgPopupMenu;
                    end;
                end;

                TcxCustomGridView(Tela.Components[n]).PopupMenu := PopUpGrid;

                if PopUpGrid.Items.Count = 0 then
                begin
                    Item := TMenuItem.Create(TcxCustomGridView(Tela.Components[n]).PopupMenu);
                    Item.tag        := 98;
                    Item.Name       := Tela.Name + 'CopiaCelula';
                    Item.Caption    := 'Copiar conteúdo da célula.';
                    Item.OnClick    := ObjPadrao.PopupMenuGridClick;
                    item.ImageIndex := 1;
                    TPopupMenu(TcxCustomGridView(Tela.Components[n]).PopupMenu).Items.Add(Item);

                    Item := TMenuItem.Create(TcxCustomGridView(Tela.Components[n]).PopupMenu);
                    Item.tag        := 99;
                    Item.Name       := Tela.Name + 'ExportaGrid';
                    Item.Caption    := 'Exportar dados para o excel.';
                    Item.OnClick    := ObjPadrao.PopupMenuGridClick;
                    item.ImageIndex := 4;

                    TPopupMenu(TcxCustomGridView(Tela.Components[n]).PopupMenu).Items.Add(Item);
                end;
            end;

            if TcxCustomGridView(Tela.Components[n]).PopupMenu <> NIl then
            begin
                TcxCustomGridTableView(Tela.Components[n]).OnMouseDown := ObjPadrao.MouseDownGrid;
            end;
        end;

    end;
end;

Function GravaUpdates(var Tabela: TMSQuery ): boolean;
begin
    if (Tabela <> Nil) then
    begin
        if (Tabela.State in [dsInsert,dsEdit]) or  (Tabela.UpdatesPending) then
        begin
             Tabela.ApplyUpdates();
        end;
    end;
end;

function EnviaEmail( cTpEnvio, cEmailOri, cEmailDes, cAssunto: String; lstCorpoEmail, lstCorpoEmail_Html, lstAnexos : Tstringlist ): String;
var IdMsgSend  : TIdMessage;
    IdSmtp     : TIdSmtp;
    IdHTTP     : TIdHTTP;
    IdCookie   : TIdCookieManager;
    IdSSL      : TIdSSLIOHandlerSocketOpenSSL;
    Tb_Cfg     : TMSQuery;
    Anexo      : TIdAttachmentFile;
    i, nStatus : integer;
    cEmailPara, cEmailCC, cAssinatura, AuthString, AuthBase64, cAcessToken  : String;
    idSASLLogin: TIdSASLLogin;
    idUserPassProvider: TIdUserPassProvider;

    Function MontaTextoHtml(cTexto, Assinatura : String):String ;
    var Tb : TMSQuery;
    begin
        try
            Tb := TMSQuery.create(Application);
            Tb.connection := TMSConnection(Application.MainForm.FindComponent('DBDes'));

            Tb.Sql.Clear;
            Tb.SQL.Add('Select  Texto = dbo.TrocaTextoHTMLComAcento('+ QuotedStr(cTexto) +') ');
            Tb.Open;

            if Tb.FieldByName('Texto').value <> 'S' then
               cTexto := Tb.FieldByName('Texto').value;
        Except
            // ignora este erro... se houver
        end;

        FreeAndNil(Tb);

        while pos(char(13), cTexto) >0  do
           cTexto := StringReplace(cTexto, char(13),'</p> <p>',[]);

        if Assinatura <> '' then
        begin
            cTexto := cTexto + '<br /><br />' + '<img src="cid:AssinaturaEmail" />';
        end;

        cTexto := '<p>' + cTexto + '</p>';

        Result := cTexto;
    end;

    procedure SeparaEmail;
    var lstEmail : TStringList;
        i : Integer;
    begin
        cEmailPara := '';
        cEmailCC   := '';

        //REMOVE ESPAÇOS EM BRANCO
        cEmailDes := StringReplace(cEmailDes,' ','',[rfReplaceAll]);

        //TROCA PELO SEPARADOR OFICIAL DO ACE4
        cEmailDes := StringReplace(cEmailDes,',',';',[rfReplaceAll]);

        //SEPARANDO OS EMAILS
        if length(cEmailDes) > 0 then
            cEmailDes := TrimLeft(TrimRight( cEmailDes)) + ';';

        //REMOVE EXCESSO DE ;;
        While Pos(';;', cEmailDes) > 0 do
        begin
            cEmailDes := StringReplace(cEmailDes,';;',';',[rfReplaceAll]);
        end;

        lstEmail := TstringList.Create;

        //SEPARANDO PARA EVITAR DUPLICIDADE
        While Pos(';', cEmailDes) > 0 do
        begin
            cEmailPara := '';
            cEmailPara := copy(cEmailDes,1, Pos(';', cEmailDes)-1);
            cEmailPara := StringReplace(cEmailPara,';','',[]); //REMOVE O PONTO E VIRGULA

            if lstEmail.IndexOf(cEmailPara) = -1 then   // se = -1 não existe
               lstEmail.Add(cEmailPara);

            cEmailDes := copy(cEmailDes, Pos(';', cEmailDes)+ 1, length(cEmailDes));
        end;

        //SEPARANDO OS DEMAIS EMAILS PARA ENVIAR COMO CCOPIA
        for I := 0 to lstEmail.Count - 1  do
        begin
            if i = 0 then
               cEmailPara := lstEmail[i]
            else
               cEmailCC := cEmailCC + lstEmail[i] + ';' ;
        end;

        FreeAndNil(lstEmail);

        if cEmailPara  = ';' then
           cEmailPara := '';

        if cEmailCC  = ';' then
           cEmailCC  := '';
    end;

    function GetRefreshTokenGoogle( ): string;
    var Params: TStringList;
        ResponseStr, AccessToken: string;
        JSONValue: TJSONValue;
        Sp_Token: TMSStoredProc;
    begin
        try
            try
                Try
                    Result := '';

                    Params := TStringList.Create;
                    Params.Add('client_id='     + Tb_Cfg.FieldByName('Client_Id').AsString);
                    Params.Add('client_secret=' + Tb_Cfg.FieldByName('Client_Secret').AsString);
                    Params.Add('refresh_token=' + Tb_Cfg.FieldByName('Refresh_Token').AsString);
                    Params.Add('grant_type=refresh_token');

                    IdHTTP.Request.CustomHeaders.Clear;
                    IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';
                    IdHTTP.Request.Accept := 'application/json';

                    ResponseStr := IdHTTP.Post('https://oauth2.googleapis.com/token', Params);

                    if ResponseStr = '' then
                    begin
                        raise Exception.Create('A atualização do token não retornou nenhuma informação.');
                    end;

                    if IdHTTP.Response.ResponseCode <> 200 Then
                    begin
                        raise Exception.Create('Ocorreu uma falha ao gerar o token. ' + char(13) + IdHTTP.ResponseText );
                    end;

                    JSONValue := TJSONObject.ParseJSONValue(ResponseStr);
                    try
                        if Assigned(JSONValue) and (JSONValue is TJSONObject) then
                        begin
                            AccessToken := TJSONObject(JSONValue).GetValue<string>('access_token');


                            if AccessToken = '' then
                                raise Exception.Create('A informação retornada não contem um token.');

                            try
                                Try
                                    Sp_Token := Nil;
                                    Sp_Token := TMSStoredProc.Create(Application);
                                    Sp_Token.connection := TMSConnection(Application.MainForm.FindComponent('DBDes'));
                                    Sp_Token.StoredProcName := 'dbo.Sc_Seg_I_Email_Token';
                                    Sp_Token.Params.Clear;
                                    Sp_Token.Params.CreateParam(ftInteger, 'RETURN_VALUE', ptResult);
                                    Sp_Token.Params.CreateParam(ftstring, 'V_Id_ApiName', ptInput);
                                    Sp_Token.Params.CreateParam(ftstring, 'V_Email', ptInput);
                                    Sp_Token.Params.CreateParam(ftstring, 'V_Acess_Token', ptInput);
                                    Sp_Token.Params.CreateParam(ftstring, 'V_Refresh_Token', ptInput);
                                    Sp_Token.Close;
                                    Sp_Token.ParamByName('V_Id_ApiName').AsString    := Tb_Cfg.FieldByName('Id_ApiName').AsString;
                                    Sp_Token.ParamByName('V_Email').AsString         := Tb_Cfg.FieldByName('Email').AsString;
                                    Sp_Token.ParamByName('V_Acess_Token').asstring   := AccessToken;
                                    Sp_Token.ParamByName('V_Refresh_Token').asstring := Tb_Cfg.FieldByName('refresh_token').AsString;
                                    Sp_Token.ExecProc;

                                Except ON E:Exception do
                                begin
                                    raise Exception.Create('Erro na Função NewLanc: ' + E.Message);
                                end;
                                End;
                            Finally
                                Sp_Token.Free;
                            end;

                            Result := AccessToken;
                        end
                        else
                        begin
                            raise Exception.Create('A consulta não retornou a chave "access_token".');
                        end;
                    finally
                        JSONValue.Free;
                    end;
                except
                    on E:EIdHTTPProtocolException do
                    begin
                        //raise Exception.Create('Falha ao Gerar o Token '+ char(13) + ApiTrataRetorno(e.ErrorMessage));
                        raise Exception.Create('Falha ao atualizar o Token.'+ char(13) + e.ErrorMessage);
                    end;
                    on E: Exception do
                    begin
                        raise Exception.Create('Falha ao atualizar o Token.'+ char(13) + e.Message);
                    end;
                end;

            except on E: Exception do
            begin
                raise Exception.Create(e.Message); //Força o erro para o usuario
            end;
            end;
        finally
            FreeAndNil(Params);
        end;
    end;

begin
    try
        try
            IdSmtp    := TIdSmtp.Create(Application);
            IdMsgSend := TIdMessage.Create(Application);
            IdSSL     := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
            Tb_Cfg    := TMSQuery.Create(Application);

            Tb_Cfg.Connection := TMSConnection(Application.MainForm.FindComponent('DBDes'));
            Tb_Cfg.Sql.Add('exec Sc_Seg_S_Email_TpEnvio1 :Id_TpEnvio, :Email, :Usuario');
            Tb_Cfg.ParamByName('Id_TpEnvio').AsString := cTpEnvio;
            Tb_Cfg.ParamByName('Email').AsString      := cEmailOri;
            Tb_Cfg.ParamByName('Usuario').AsString    := '';
            Tb_Cfg.Open;

            if Tb_Cfg.IsEmpty =  True then
               raise Exception.Create('Conta de email inválida.');

            if  ( Tb_Cfg.FieldByName('Provedor').AsString = 'Google' )
            and ( Tb_Cfg.FieldByName('Lo_OAuth2').AsString = 'S' )     then
            begin
                if Tb_Cfg.FieldByName('Client_Id').AsString = '' then
                   raise Exception.Create('O sistema não esta configurado para gerar token do Google');
                if Tb_Cfg.FieldByName('Acess_Token').AsString = '' then
                   raise Exception.Create('É necessário gerar um token pela tela do cadastro de e-mail. ');
            end;

            cAssinatura := '';

            //Adiciona a assinatura
            try
                cAssinatura := ExtractFilePath(paramstr(0)) + 'Recurso\AssinaturaEmail\' + Tb_Cfg.FieldByName('NomeArquivo').AsString;

                if not  FileExists(cAssinatura) then
                   cAssinatura := '';
            Except
                cAssinatura := '';
                //ignora se der erro
            end;

            if length(Tb_Cfg.FieldByName('Email_Para').AsString) > 0 then
               cEmailDes := Tb_Cfg.FieldByName('Email_Para').AsString + ';' + cEmailDes;

            //exclusivamnente com copia
            if length(Tb_Cfg.FieldByName('EmailCC').AsString) > 0 then
               cEmailDes := cEmailDes  + ';' +  Tb_Cfg.FieldByName('EmailCC').AsString;

            SeparaEmail;

            if cEmailPara = '' then
               raise Exception.Create('Sem Email de destinatário.');

            IdSmtp.IOHandler  := nil;
            IdSmtp.Username   := Tb_Cfg.FieldByName('Email').AsString;
            IdSmtp.Password   := Tb_Cfg.FieldByName('Senha').AsString;
            IdSmtp.Host 	  := Tb_Cfg.FieldByName('Host').AsString;
            IdSmtp.Port 	  := Tb_Cfg.FieldByName('Porta').AsInteger;

            if  ( Tb_Cfg.FieldByName('Provedor').AsString = 'Google' )
            and ( Tb_Cfg.FieldByName('Lo_OAuth2').AsString = 'S' )     then
            begin
                IdSmtp.Username   := '';
                IdSmtp.Password   := '';
            end;

            //0-satNone 1-satDefault 2-satSASL
            IdSmtp.AuthType := TIdSMTPAuthenticationType(Tb_Cfg.FieldByName('IdAuthType').AsInteger);

            if Tb_Cfg.FieldByName('IdAuthType').AsInteger = 2 then  //2-satSASL
            begin
                idSASLLogin := TIdSASLLogin.Create(IdSmtp);
                idUserPassProvider := TIdUserPassProvider.Create(idSASLLogin);

                idSASLLogin.UserPassProvider   := idUserPassProvider;
                idUserPassProvider.Username    := Tb_Cfg.FieldByName('satSASLUsername').AsString;
                idUserPassProvider.Password    := Tb_Cfg.FieldByName('satSASLPassword').AsString;
                IdSmtp.SASLMechanisms.Add.SASL := idSASLLogin;
            end;

            if  UpperCase(Tb_Cfg.FieldByName('Lo_UsaSSL').AsString) = 'S' then
            begin
                //0-sslvSSLv2 1-sslvSSLv23 2-sslvSSLv3 3-sslvTLSv1 4-sslvTLSv1_1 5-sslvTLSv1_2
                IdSSL.SSLOptions.Method := TIdSSLVersion(Tb_Cfg.FieldByName('IdSSLVersion').AsInteger);

                //0-sslmUnassigned 1-sslmClient 2-sslmServer 3-sslmBoth
                IdSSL.SSLOptions.Mode   := TIdSSLMode(Tb_Cfg.FieldByName('IdSSLMode').AsInteger);

                IdSmtp.IOHandler := IdSSL;

                //0-utNoTLSSupport 1-utUseImplicitTLS 2-utUseRequireTLS 3-utUseExplicitTLS
                IdSmtp.UseTLS    := TIdUseTLS(Tb_Cfg.FieldByName('IdUseTLS').AsInteger);
            end;

            //MONTANDO O CORPO DA MENSAGEM
            with IdMsgSend do
            begin
                ContentType         := 'multipart/alternative';
                ContentDisposition  := 'inline';
                CharSet             := 'ISO-8859-1';   // UTF-8, ISO-8859-1
                Encoding            := meMIME;
                Body.Clear;

                 if Tb_Cfg.FieldByName('Apelido').AsString <> '' then
                    From.Text   := Tb_Cfg.FieldByName('Apelido').AsString + '<' + Tb_Cfg.FieldByName('Email').AsString +'>'
                else
                    From.Text   := Tb_Cfg.FieldByName('Email').AsString;

                Recipients.EMailAddresses  := cEmailPara;

                //Auto Resposta... //Confirmação que o email foi lido...
                if Tb_Cfg.FieldByName('EmailConfirmacao').AsString <> '' then
                   ReceiptRecipient.Text      := Tb_Cfg.FieldByName('EmailConfirmacao').AsString;

                { Destinatários em cópia }
                if cEmailCC <>  '' then
                   CClist.EMailAddresses := cEmailCC;

                { Destinatários em cópia oculta }
                if Tb_Cfg.FieldByName('EmailCCO').AsString <>  '' then
                   BccList.EMailAddresses := Tb_Cfg.FieldByName('EmailCCO').AsString;

                //email para qual deve seguir a resposta do cliente...
                if Tb_Cfg.FieldByName('EmailResposta').AsString <> '' then
                   ReplyTo.EMailAddresses     := Tb_Cfg.FieldByName('EmailResposta').AsString;

                if length(Tb_Cfg.FieldByName('Nome').AsString) > 0 then
                   Subject  := Tb_Cfg.FieldByName('Nome').AsString + ' - ' + cAssunto
                else
                   Subject  := cAssunto;

                Date     := Now;

                MessageParts.Clear;
            end;

            //Parte 0 -- text/plain
            with TIdText.Create(IdMsgSend.MessageParts) do
            begin
                ContentType     := 'text/plain';
                ContentTransfer := '7bit';

                Body.Clear;
                if lstCorpoEmail <> Nil then
                   Body.Text := lstCorpoEmail.Text;
            end;

            //Parte 1 -- multipart/related
            with TIdText.Create(IdMsgSend.MessageParts) do
            begin
                ContentType := 'multipart/related';
                Body.Clear;
            end;

            //Parte 2 -- text/html
            with TIdText.Create(IdMsgSend.MessageParts) do
            begin
                ContentType     := 'text/html';
                ContentTransfer := '7bit';
                ParentPart      := 1;  //associa ao  multipart/related

                Body.Clear;
                if ( lstCorpoEmail_Html <> Nil ) and ( length(lstCorpoEmail_Html.Text) > 1 ) then
                begin
                    Body.Text := lstCorpoEmail_Html.Text;

                    if cAssinatura <> '' then
                       Body.Text := lstCorpoEmail_Html.Text + '<br /><br />' + '<img src="cid:AssinaturaEmail" />';
                end;

                //caso não tenha texto html ... transforma o normal em html
                if Body.Text = '' then
                begin
                    Body.Text :=  MontaTextoHtml(lstCorpoEmail.Text, cAssinatura);
                end;
            end;

            if cAssinatura <> '' then
            begin
                Anexo := TIdAttachmentFile.Create(IdMsgSend.MessageParts, cAssinatura);
                Anexo.ParentPart  := 1;  //associa ao  multipart/related  //MUITO CUIDADO COM ESTA TAG
                Anexo.ContentType := 'image/' + StringReplace(ExtractFileExt(cAssinatura),'.','',[]);
                Anexo.Headers.Add('Content-ID: <AssinaturaEmail>');// ...e isso associa sua imagem com o símbolo que usou no HTML
            end;

            if lstAnexos <> nil then
            begin
                for I := 0 to lstAnexos.Count - 1 do
                begin
                    Anexo := TIdAttachmentFile.Create(IdMsgSend.MessageParts, lstAnexos[i]);
                    Anexo.ParentPart      := 1;  //associa ao  multipart/related  //MUITO CUIDADO COM ESTA TAG
                end;
            end;

            IdSmtp.Connect;

            if  ( Tb_Cfg.FieldByName('Provedor').AsString = 'Google' )
            and ( Tb_Cfg.FieldByName('Lo_OAuth2').AsString = 'S' )     then
            begin

                Try
                    IdCookie := TIdCookieManager.Create(nil);
                    IdHTTP   := TIdHTTP.Create(nil);

                    IdHTTP.IOHandler     := IdSSL;
                    IdHTTP.CookieManager := IdCookie;

                    AuthString  := 'user='          + Tb_Cfg.FieldByName('Email').AsString + #1
                                + 'auth=Bearer '    + Tb_Cfg.FieldByName('Acess_Token').AsString + #1 + #1;

                    AuthBase64 := TIdEncoderMIME.EncodeString(AuthString);

                    IdSmtp.SendCmd('EHLO localhost', [250]);

                    nStatus := IdSmtp.SendCmd('AUTH XOAUTH2 ' + AuthBase64, 235);
                    if nStatus  <> 235 then
                       raise Exception.Create('Falha na autenticação OAuth2');

                Except ON E:Exception do
                begin
                    //esse bloco Força a atualização do Token

                    if IdSmtp.Connected then
                      IdSmtp.Disconnect;

                    FreeAndNil(IdSSL);
                    IdSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
                    IdSmtp.IOHandler := IdSSL;

                    IdSmtp.Connect;

                    cAcessToken := GetRefreshTokenGoogle(  );

                    AuthString := 'user='        + Tb_Cfg.FieldByName('Email').AsString + #1
                                + 'auth=Bearer ' + cAcessToken + #1 + #1;

                    Try
                        AuthBase64 := TIdEncoderMIME.EncodeString(AuthString);

                        IdSmtp.SendCmd('EHLO localhost', [250]);

                        nStatus := IdSmtp.SendCmd('AUTH XOAUTH2 ' + AuthBase64, 235);
                        if nStatus  <> 235 then
                           raise Exception.Create('Falha na autenticação OAuth2, após tentar atualizar o token.');

                    Except ON E:Exception do
                    begin
                        Try
                            raise Exception.Create(TIdDecoderMIME.DecodeString(E.Message));
                        Finally
                            raise Exception.Create(E.Message);
                        End;
                    end;
                    End;
                end;
                End;
                //Se der erro 334, 535, ou 401, é sinal de que o token expirou ou está inválido — use seu refresh_token pra renová-lo antes de tentar novamente.
            end;

            IdSmtp.Send(IdMsgSend);

            //agrupara para mostrar no log
            cEmailDes := cEmailPara + ';' + cEmailCC + ';'+ IdMsgSend.BccList.EMailAddresses;
            cEmailDes := StringReplace(cEmailDes,' ','',[rfReplaceAll]);
            cEmailDes := StringReplace(cEmailDes,';;',';',[rfReplaceAll]);
            cEmailDes := StringReplace(cEmailDes,';;',';',[rfReplaceAll]);

            Result := ( 'emails enviados: ' + cEmailDes  );

        except On E:Exception Do
        begin
            raise Exception.Create('Problemas ao enviar email : '+  cEmailDes + ' Erro: ' + E.Message);
        end;
        end;

    finally
        FreeAndNil(idUserPassProvider);
        FreeAndNil(idSASLLogin);
        FreeAndNil(Anexo);
        IdMsgSend.Free;

        if IdSmtp.Connected then
           IdSmtp.Disconnect;

        FreeAndNil(IdHTTP);
        FreeAndNil(IdCookie);
        FreeAndNil(IdSmtp);
        FreeAndNil(IdSSL);
        FreeAndNil(Tb_Cfg);
    end;
end;

function DiferencaEntreDatas(Data1, Data2 : TDateTime): Integer;
begin
    //mostra as Diferenca em segundos
    Result := SecondsBetween(Data1,Data2);
end;

function DataDoArquivo(cArquivo, cTipoData :String):TDatetime;
var
    SR: TSearchRec;

    //função interna
    function FileTimeToDTime(FTime: TFileTime): TDateTime;
    var   LocalFTime: TFileTime;
          STime: TSystemTime;
    begin
        FileTimeToLocalFileTime(FTime, LocalFTime);
        FileTimeToSystemTime(LocalFTime, STime);
        Result := SystemTimeToDateTime(STime);
    end;
begin
    //data padrão caso de Erro
    result := strtodate('25/12/2000');

    if FindFirst(cArquivo, faAnyFile, SR) = 0 then
    begin
        if cTipoData = 'Create'  then
           Result := FileTimeToDTime(SR.FindData.ftCreationTime);
        if cTipoData = 'Acess'  then
           Result := FileTimeToDTime(SR.FindData.ftLastAccessTime);
        if cTipoData = 'Modify'  then
           Result := FileTimeToDTime(SR.FindData.ftLastWriteTime);
    end;

    FindClose(SR);
end;

end.
