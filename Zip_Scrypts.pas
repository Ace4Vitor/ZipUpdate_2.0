unit Zip_Scrypts;

interface

Uses
  JvDriveCtrls, Zip_Config, StrUtils, Clipbrd, System.IOUtils, System.UITypes, System.Types,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxImageComboBox, System.ImageList, Vcl.ImgList, cxImageList, DBAccess,
  MSAccess, JvComponentBase, JvComputerInfoEx, MemDS, cxMemo, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxGroupBox, cxPC;

type
  TTela_Zip_Scrypts = class(TForm)
    SaveDialog: TSaveDialog;
    Tb_Obj2: TMSQuery;
    Tb_Proc3: TMSQuery;
    Tb_TabCol: TMSQuery;
    Ds_Obj2: TDataSource;
    cxPageControl1: TcxPageControl;
    TabGeraScript: TcxTabSheet;
    TabVisualizaScript: TcxTabSheet;
    Panel3: TcxGroupBox;
    Tb_Obj1: TMSQuery;
    Ds_Obj1: TDataSource;
    mmoScript: TcxMemo;
    Tb_Script: TMSQuery;
    Tb_Proc3Id_Tela: TStringField;
    Tb_TabColColuna: TStringField;
    PopupMenu3: TPopupMenu;
    ImportarLista2: TMenuItem;
    PopupMenu4: TPopupMenu;
    PopupMenu1: TPopupMenu;
    ExluirLinha0: TMenuItem;
    Sp_Descarta: TMSStoredProc;
    Tb_Exec: TMSQuery;
    ComputerInfo: TJvComputerInfoEx;
    Sp_Confirma: TMSStoredProc;
    Tb_Bloco: TMSQuery;
    Tb_BlocoTexto: TMemoField;
    Tb_ScriptScript: TMemoField;
    Tb_ScriptTipoScript: TStringField;
    ExcluirLinha2: TMenuItem;
    PopupMenu5: TPopupMenu;
    ExcluirLinha4: TMenuItem;
    pnBarra: TcxGroupBox;
    btVoltar: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxButton1: TcxButton;
    bExporta: TcxButton;
    lblObj1: TcxLabel;
    lookObj1: TcxLookupComboBox;
    lookObj2: TcxLookupComboBox;
    lblPesquisa: TcxLabel;
    edPesquisa: TcxTextEdit;
    btnGeraScript: TcxButton;
    bLimpaListas: TcxButton;
    ExcluirLinha3: TMenuItem;
    cxGroupBox1: TcxGroupBox;
    gtvLista5: TcxGridDBTableView;
    grid5Level1: TcxGridLevel;
    grid5: TcxGrid;
    grid2: TcxGrid;
    gtvLista2: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    grid4: TcxGrid;
    gtvLista4: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    grid1: TcxGrid;
    gtvLista1: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    Up_Lista1: TMSUpdateSQL;
    Tb_Lista1: TMSQuery;
    Ds_Lista1: TDataSource;
    Up_Lista2: TMSUpdateSQL;
    Tb_Lista2: TMSQuery;
    Ds_Lista2: TDataSource;
    Up_Lista3: TMSUpdateSQL;
    Tb_Lista3: TMSQuery;
    Ds_Lista3: TDataSource;
    Up_Lista4: TMSUpdateSQL;
    Tb_Lista4: TMSQuery;
    Ds_Lista4: TDataSource;
    Up_Lista5: TMSUpdateSQL;
    Tb_Lista5: TMSQuery;
    Ds_Lista5: TDataSource;
    Tb_Lista1Lg_Us_Alt: TStringField;
    Tb_Lista1Lg_Dt_Alt: TDateTimeField;
    Tb_Lista1TpObjeto: TStringField;
    Tb_Lista1CampoChave1: TStringField;
    Tb_Lista1CampoChave2: TStringField;
    Tb_Lista1CampoChave3: TStringField;
    Tb_Lista1CampoChave4: TStringField;
    Tb_Lista1TpOperacao: TStringField;
    Tb_Lista1Flag: TStringField;
    gtvLista1Lg_Us_Alt: TcxGridDBColumn;
    gtvLista1Lg_Dt_Alt: TcxGridDBColumn;
    gtvLista1TpObjeto: TcxGridDBColumn;
    gtvLista1CampoChave1: TcxGridDBColumn;
    gtvLista1CampoChave2: TcxGridDBColumn;
    gtvLista1CampoChave3: TcxGridDBColumn;
    gtvLista1CampoChave4: TcxGridDBColumn;
    gtvLista1TpOperacao: TcxGridDBColumn;
    gtvLista1Flag: TcxGridDBColumn;
    Tb_Lista3TpObjeto: TStringField;
    Tb_Lista3CampoChave1: TStringField;
    Tb_Lista3CampoChave2: TStringField;
    Tb_Lista3CampoChave3: TStringField;
    Tb_Lista3CampoChave4: TStringField;
    Tb_Lista3TpOperacao: TStringField;
    Tb_Lista1NmObjeto: TStringField;
    Tb_Lista3NmObjeto: TStringField;
    gtvLista1NmObjeto: TcxGridDBColumn;
    gtvLista2NmObjeto: TcxGridDBColumn;
    Tb_Lista2TpObjeto: TStringField;
    Tb_Lista2NmObjeto: TStringField;
    Tb_Lista2CampoChave1: TStringField;
    Tb_Lista2CampoChave2: TStringField;
    Tb_Lista2CampoChave3: TStringField;
    Tb_Lista2CampoChave4: TStringField;
    Tb_Lista2TpOperacao: TStringField;
    gtvLista2TpObjeto: TcxGridDBColumn;
    gtvLista2CampoChave1: TcxGridDBColumn;
    gtvLista2CampoChave2: TcxGridDBColumn;
    gtvLista2CampoChave3: TcxGridDBColumn;
    gtvLista2CampoChave4: TcxGridDBColumn;
    gtvLista2TpOperacao: TcxGridDBColumn;
    Tb_Lista5NmObjeto: TStringField;
    Tb_Lista4NmObjeto: TStringField;
    gtvLista4NmObjeto: TcxGridDBColumn;
    gtvLista5NmObjeto: TcxGridDBColumn;
    Grid3: TcxGrid;
    gtvLista3: TcxGridDBTableView;
    gtvLista3TpOperacao: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    gtvLista3TpObjeto: TcxGridDBColumn;
    gtvLista3NmObjeto: TcxGridDBColumn;
    gtvLista3CampoChave1: TcxGridDBColumn;
    gtvLista3CampoChave2: TcxGridDBColumn;
    gtvLista3CampoChave3: TcxGridDBColumn;
    gtvLista3CampoChave4: TcxGridDBColumn;
    Tb_Obj2Id_TpObjetoFilho: TStringField;
    Tb_Obj2Descricao: TStringField;
    Tb_Obj1Id_TpObjeto: TStringField;
    Tb_Obj1TpObjeto: TStringField;
    ImgGrid: TcxImageList;

    procedure lookObj2PropertiesChange(Sender: TObject);
    procedure edPesquisaPropertiesChange(Sender: TObject);
    procedure bExportaClick(Sender: TObject);
    procedure bLimpaListasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lookObj1PropertiesCloseUp(Sender: TObject);
    procedure lookObj1PropertiesNewLookupDisplayText(Sender: TObject; const AText: TCaption);
    procedure ImportarLista2Click(Sender: TObject);
    procedure btVoltarClick(Sender: TObject);
    procedure ExluirLinha0Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnGeraScriptClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure gtvLista1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure gtvLista2CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure gtvLista3CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure gtvLista4CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure Tb_Lista4AfterOpen(DataSet: TDataSet);
    procedure ExcluirLinha2Click(Sender: TObject);
    procedure ExcluirLinha3Click(Sender: TObject);
    procedure ExcluirLinha4Click(Sender: TObject);
    procedure gtvLista1StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    { Private declarations }
    ListaX : TStringList;
    cDirVersaoEmAberto, cVersaoEmAberto : string;
    EstiloCustom :TcxStyle;
    procedure MontaListBox_Procedures3;
    procedure MontaListaDeCampos(sNomeObjeto: String);
    procedure Filtra;
    procedure MontaListaPendente;
    function RegistraVersao: Boolean;
    Function GeraScript( cTipo: String):Boolean;
  public
    { Public declarations }
    Aberto : integer;
  end;

var Tela_Zip_Scrypts: TTela_Zip_Scrypts;

implementation

uses Zip_Scrypts_Lista, Zip_Menu;

{$R *.dfm}

procedure TTela_Zip_Scrypts.FormCreate(Sender: TObject);
var n :  integer;
begin
    EstiloCustom := TcxStyle.Create(Self);
    EstiloCustom.TextColor  := clGreen;
    //EstiloCustom.Font.Style := [fsBold];
    //EstiloCustom.Font.Size  := EstiloCustom.Font.Size - 1;

    PopUpGrid := Nil;
    AplicaConfigPadrao(Self);

    cxPageControl1.HideTabs   := True;
    cxPageControl1.ActivePage :=  TabGeraScript;

    Tb_Obj1.Connection := TMSConnection(Application.MainForm.FindComponent('DbSis'));
    Tb_Obj2.Connection := TMSConnection(Application.MainForm.FindComponent('DbSis'));

    for  n := 0 to (ComponentCount - 1) do
    begin
        if (Components[n] is TcxGridDBTableView)  then
        begin
            //DEVIDO A METOLOGIA APLICADA NO CODIGO, JAMAIS PODE USAR O CONTROLE DE FILTRAR, ORDENAR.
            TcxGridDBTableView(Components[n]).DataController.DataModeController.GridMode := True;
            TcxGridDBTableView(Components[n]).DataController.DataModeController.SmartRefresh := False;
            TcxGridDBTableView(Components[n]).OptionsCustomize.ColumnFiltering := False;
            TcxGridDBTableView(Components[n]).OptionsCustomize.ColumnSorting   := False;
        end;
    end;

    popupMenu1.Images := Tela_Zip_Menu.ImgPopupMenu;
    popupMenu3.Images := Tela_Zip_Menu.ImgPopupMenu;
    popupMenu4.Images := Tela_Zip_Menu.ImgPopupMenu;
    popupMenu5.Images := Tela_Zip_Menu.ImgPopupMenu;

    Aberto := 0;
end;

procedure TTela_Zip_Scrypts.FormResize(Sender: TObject);
begin
    //Deixa Todos do Mesmo Tamanho
    grid5.Width := ClientWidth Div 6; //divide por 6 para o grid5 ficar o dobro maior
    grid4.Width := ClientWidth Div 6; //divide por 6 para o grid5 ficar o dobro maior
    grid3.Width := ClientWidth Div 6; //divide por 6 para o grid5 ficar o dobro maior
    grid2.Width := ClientWidth Div 6; //divide por 6 para o grid5 ficar o dobro maior
    //grid1 não precisa porque é alclient

    //Ajusta as caixas de texto
    lookObj1.Left := 5;
    lblObj1.Left  := 5;

    lookObj1.Width := (grid1.Width Div 2 )- 10;
    lookObj2.Width := (grid1.Width Div 2 )- 10;
    lookObj2.Left  := lookObj1.Width + 7;

    lblPesquisa.Left  := grid2.Left;
    edPesquisa.Left   := grid2.Left;
    edPesquisa.Width  := grid2.Width;

    btnGeraScript.Left := edPesquisa.left + edPesquisa.Width + 5;
    bLimpaListas.Left  := btnGeraScript.left + btnGeraScript.Width + 5;
end;

procedure TTela_Zip_Scrypts.FormShow(Sender: TObject);
var ListaDir : TStrings;
    cDir : String;
    i : integer;
begin
    ListaX := TStringList.Create;

    if Aberto = 0 then
    begin
        Aberto := 1;

        Tb_Obj1.close;
        Tb_Obj1.Open;

        lookObj1.EditValue := 0;
        lookObj1PropertiesCloseUp(Sender);
    end;

    //para mostrar somentes os objetos que ainda não estão na versão em aberto
    ListaDir := TStringList.Create;

    cDir := ExtractFilePath(Application.ExeName);

    if copy(cDir,length(cDir),1) ='\' then
       cDir := copy(cDir,1, length(cDir) -1 );

    ListaDiretorios( cDir , ListaDir, False);

    for I := 0 to ListaDir.Count - 1 do
    begin
        if Pos('EM ABERTO',  UpperCase(ListaDir[i])) > 0 then
        begin
            cDirVersaoEmAberto := ListaDir[i];
            cVersaoEmAberto    := StringReplace(cDirVersaoEmAberto,' ','',[rfReplaceAll]);
            cVersaoEmAberto    := copy(cVersaoEmAberto,length(cVersaoEmAberto) - 11,4);

            break; //cai fora do for
        end;
    end;

    Tb_Lista2.Close;
    Tb_Lista2.Open;

    Tb_Lista3.Close;
    Tb_Lista3.Open;

    Tb_Lista4.Close;
    Tb_Lista4.Open;

    Tb_Lista5.Close;
    Tb_Lista5.Open;

    MontaListaPendente;
end;

procedure TTela_Zip_Scrypts.Filtra;
begin
    //desabilita tudo
    Tb_Obj2.Close;
    Tb_Obj2.ParamByName('Id_TpObjeto').AsString := lookObj1.EditValue;
    Tb_Obj2.Open;

    if Tb_Obj2.IsEmpty = True then
    begin
        lookObj2.Properties.ReadOnly := True;
        lookObj2.TabStop             := False;
        lookObj2.Style.Color         := clBtnFace;
    end
    else
    begin
        lookObj2.Properties.ReadOnly := False;
        lookObj2.TabStop             := True;
        lookObj2.Style.Color         := clWindow;
    end;

    bLimpaListas.Visible := True;

    ImportarLista2.Visible := False;

    if lookObj1.EditValue = '0' then  //Procedures
    begin
        lookObj2.EditValue := 'AAA'; //para sempre aparecer selecionado o Padrao
        lookObj2.Properties.OnChange(self);
    end
    else
    if lookObj1.EditValue = '1' then   //Tabelas\Campos
    begin
        lookObj2.ItemIndex := 0;
        lookObj2.Properties.OnChange(self);
    end
    else
    begin
        edPesquisa.clear;
        edPesquisa.TabStop             := True;
        edPesquisa.Style.Color         := clWindow;
        edPesquisa.Properties.ReadOnly := False;

        edPesquisaPropertiesChange(self);

        Tb_Lista2.Close;
        Tb_Lista2.Open;
        Tb_Lista3.Close;
        Tb_Lista3.Open;
        Tb_Lista4.Close;
        Tb_Lista4.Open;
        Tb_Lista5.Close;
        Tb_Lista5.Open;
    end;

    if  MatchText(lookObj1.EditValue, ['0','1','2','3']) then
    begin
        ImportarLista2.Visible := True;
    end;

    //Geração de Script
    if lookObj1.EditValue = '999'  then
    begin
        edPesquisa.Properties.ReadOnly := True;
        edPesquisa.TabStop             := False;
        edPesquisa.Style.Color         := clBtnFace;
        cxPageControl1.ActivePage      := TabVisualizaScript;
    end;
end;

Function TTela_Zip_Scrypts.GeraScript( cTipo: String):Boolean;
var i, QtdLinhasVazias : Integer;
    Script1, Script2 : TStringList;
    cArquivo : string;
    bPublicacao : Boolean;

    Function DefineArquivo(Nome_Arquivo : String):String;
    var cDirRaiz, cDirEmAberto: String;
        ListaDir : TStrings;
        X : Integer;
    begin
        //ESTA FUNÇÃO TEM COMO PROPOSITO APENAS SETAR A PASTA E O NOME DO ARQUIVO
        //A SER SALVO...A GRAVAÇÃO OCORRE NO PROCEDIMENTO QUE CHAMA ESTE...

        cDirRaiz := ExtractFilePath(Application.ExeName);
        SaveDialog.InitialDir := cDirRaiz;

        //Verifica se existe alguma pasta "em aberto"
        ListaDir := TStringList.Create;

        cDirEmAberto := cDirRaiz;
        if copy(cDirEmAberto,length(cDirEmAberto),1) ='\' then
           cDirEmAberto := copy(cDirEmAberto,1, length(cDirEmAberto) -1 );

        ListaDiretorios( cDirEmAberto, ListaDir, False);

        cDirEmAberto := '';

        for X := 0 to ListaDir.Count - 1 do
        begin
            if Pos('EM ABERTO',  UpperCase(ListaDir[X])) > 0 then
            begin
                cDirEmAberto := ListaDir[X];
                break; //cai fora do for
            end;
        end;

        FreeAndNil(ListaDir);

        if cDirEmAberto<> '' then
            If DirectoryExists(cDirEmAberto) then
               SaveDialog.InitialDir := cDirEmAberto;

        //SETA O NOME SUGERIDO
        SaveDialog.FileName := Nome_Arquivo;

        Result := '';

        if SaveDialog.Execute then
        begin
            if ExtractFilePath(SaveDialog.FileName) =  cDirRaiz then
            begin
                raise exception.Create('Não é permitido salvar script na pasta raiz!');
            end;

            if Pos(cDirRaiz, ExtractFilePath(SaveDialog.FileName)) > 0 then
            begin
                if Pos('EM ABERTO',  UpperCase(ExtractFilePath(SaveDialog.FileName))) =  0 then
                begin
                    raise exception.Create('Só é permitido salvar neste diretorio, se for uma versão "em Aberto"!');
                end;

                cDirVersaoEmAberto := ExtractFilePath(SaveDialog.FileName);
                cVersaoEmAberto :=  StringReplace(cDirVersaoEmAberto,' ','',[rfReplaceAll]);
                cVersaoEmAberto := copy(cVersaoEmAberto,length(cVersaoEmAberto) - 12,4);

                bPublicacao := True;
            end;

            if copy(SaveDialog.FileName,length(SaveDialog.FileName)-6,7) = 'Atu.sql'  then
            begin
                if Nome_Arquivo <> 'Atu.sql' then
                begin
                    result := '';
                    raise exception.Create('Não é permitido salvar script especial em arquivo Atu.sql');
                end;
            end;
            cArquivo := '';
            Result := SaveDialog.FileName;
        end;
    end;

    procedure InsereTextoEmBloco( Script, TipoScript : String);
    begin
        if TipoScript = '' then
        begin
            mmoScript.Text :=  mmoScript.Text + char(13) + Tb_ScriptScript.AsString;
            exit;
        end;

        if TipoScript <> '' then
        begin
            if Pos(UpperCase(TipoScript), UpperCase(mmoScript.text)) = 0 then
            begin
                raise Exception.Create('A Tag de comentários '+ TipoScript +' não existe no arquivo atu.sql');
                exit;
            end;
        end;

        mmoScript.Text := StringReplace(mmoScript.Text, TipoScript, TipoScript + char(13)+ Script, [rfReplaceAll, rfIgnoreCase]);
    end;

begin
    try
        Result := False;

        bPublicacao := False;

        if Tb_Lista3.IsEmpty = True then
        begin
            showmessage('Nenhum Item foi selecionado');
            exit;
        end;

        if (lookObj1.EditValue = '1') and (MatchText(lookObj2.EditValue, ['0','6','7','8'])) and  (Tb_Lista5.IsEmpty = True )  then
        begin
            showmessage('Nenhuma coluna foi selecionada');
            exit;
        end;

        Espera(True,'Aguarde...Gerando script');

        ListaX.Clear;
        mmoScript.Clear;
        cDirVersaoEmAberto := '';
        cVersaoEmAberto    := '';

        if cTipo = 'PUBLICAR' then
        begin
            //PRIMEIRAMENTE APENAS CRIA O ARQUIVO ONDE VAI SER SALVO
            if (lookObj1.EditValue = '0') and (lookObj2.EditValue <> 'AAA') then
                cArquivo := DefineArquivo('Atu_' + lookObj2.EditValue + '.sql')
            else
                cArquivo := DefineArquivo('Atu.sql');

            if cArquivo = '' then
            begin
                //Showmessage('Arquivo Inválido');
                exit;
            end;

            If FileExists(cArquivo) then
               mmoScript.lines.LoadFromFile(cArquivo);
        end;

        //INSERE O BLOCO DE COMENTARIOS
        if Pos(UpperCase('DROP_CONSTRAINT_PRIMARYKEY'), UpperCase(mmoScript.text)) = 0 then
        begin
            Tb_Bloco.Close;
            Tb_Bloco.Open;

            mmoScript.text :=  Tb_BlocoTexto.AsString + char(13) + char(10) + mmoScript.text;
        end;

        //DESDE QUE NÃO SEJA TABELAS E COLUNAS
        if NOT ((lookObj1.EditValue = '1') and  (MatchText(lookObj2.EditValue, ['0','6','7','8']))) then
        begin
            Tb_Lista3.First;
            while not Tb_Lista3.Eof do
            begin
                Tb_Script.Close;
                Tb_Script.ParamByName('IdObj1').AsString      := lookObj1.EditValue;
                Tb_Script.ParamByName('IdObj2').AsString      := lookObj2.EditValue;
                Tb_Script.ParamByName('TpOperacao').AsString  := Tb_Lista3.FieldByName('TpOperacao').AsString;
                Tb_Script.ParamByName('CampoChave1').AsString := Tb_Lista3.FieldByName('CampoChave1').AsString;
                Tb_Script.ParamByName('CampoChave2').AsString := Tb_Lista3.FieldByName('CampoChave2').AsString;
                Tb_Script.ParamByName('CampoChave3').AsString := Tb_Lista3.FieldByName('CampoChave3').AsString;
                Tb_Script.ParamByName('CampoChave4').AsString := Tb_Lista3.FieldByName('CampoChave4').AsString;
                Tb_Script.ParamByName('Usuario').AsString     := InfoPadrao.Usuario;
                Tb_Script.ParamByName('Versao').AsString      := cVersaoEmAberto;
                Tb_Script.Open;

                if Tb_Script.IsEmpty = True  then
                begin
                    showmessage('Erro ao gerar o script do objeto ( ' + Tb_Lista3.FieldByName('CampoChave1').AsString + ' ).'
                                + char(13) +'Verifique se o objeto existe.');
                    exit;
                end;

                Tb_Script.First;
                while not Tb_Script.eof do
                begin
                    InsereTextoEmBloco(Tb_ScriptScript.AsString, Tb_ScriptTipoScript.AsString);

                    //para registrarversão
                    if ( MatchText(lookObj1.EditValue, ['0','2','3'])) and (cVersaoEmAberto <> '') then
                    begin
                        ListaX.Text :=  ListaX.Text + Tb_ScriptScript.AsString;
                    end;

                    Tb_Script.next;
                end;

                Tb_Lista3.Next;
            end;
        end;

        //TABELAS\COLUNAS
        if (lookObj1.EditValue = '1') and  (MatchText(lookObj2.EditValue, ['0','6','7','8'])) then
        begin
            Tb_Lista5.First;
            while not Tb_Lista5.Eof do
            begin
                Tb_Script.Close;
                Tb_Script.ParamByName('IdObj1').AsString      := lookObj1.EditValue;
                Tb_Script.ParamByName('IdObj2').AsString      := lookObj2.EditValue;
                Tb_Script.ParamByName('TpOperacao').AsString  := Tb_Lista3.FieldByName('TpOperacao').AsString;
                Tb_Script.ParamByName('CampoChave1').AsString := Tb_Lista3.FieldByName('CampoChave1').AsString;
                Tb_Script.ParamByName('CampoChave2').AsString := Tb_Lista5.FieldByName('NmObjeto').AsString;;
                Tb_Script.ParamByName('CampoChave3').AsString := '';
                Tb_Script.ParamByName('CampoChave4').AsString := '';
                Tb_Script.ParamByName('Usuario').AsString     := InfoPadrao.Usuario ;
                Tb_Script.ParamByName('Versao').AsString      := cVersaoEmAberto ;
                Tb_Script.Open;

                if Tb_Script.IsEmpty = True  then
                begin
                    showmessage('Erro ao gerar o script do objeto ( ' + Tb_Lista3.FieldByName('CampoChave1').AsString
                                +' \' + Tb_Lista5.FieldByName('NmObjeto').AsString + ' ).'
                                + char(13) +'Verifique se o objeto existe.');
                    exit;
                end;

                Tb_Script.First;
                while not Tb_Script.eof do
                begin
                    InsereTextoEmBloco(Tb_ScriptScript.AsString, Tb_ScriptTipoScript.AsString);

                    Tb_Script.next;
                end;

                Tb_Lista5.Next;
            end;
        end;

        Script1 := TStringList.Create;
        Script2 := TStringList.Create;

        //Script1.AddStrings(mmoScript.lines);
        Script1.Text := mmoScript.Text;

        //LIMPA OS ESPAÇOS EM BRANCO A DIREITA e ELIMINA LINHA VAZIAS EM DUPLICIDADE
        QtdLinhasVazias := 0;
        for i:= 0 to Script1.Count - 1 do
        begin
            Script1[i] := TrimRight(Script1[i]);

            if Script1[i] <> '' then
            begin
                Script2.Add(Script1[i]);
                QtdLinhasVazias := 0;
            end;

            if Script1[i] = '' then
            begin
                QtdLinhasVazias := QtdLinhasVazias + 1;

                if QtdLinhasVazias = 1 then
                   Script2.Add(Script1[i]);
            end;
        end;

        if cTipo = 'PUBLICAR' then
        begin
            Script2.SaveToFile(cArquivo);

            MessageDlg('Arquivo gerado com sucesso !', mtInformation, [mbOk], 0);

            if ( cVersaoEmAberto <> '' ) and ( ListaX.Count > 0 ) then
            begin
                RegistraVersao; //atualiza no Ace4_Des
            end;

            if ( bPublicacao = True) and MatchText(lookObj1.EditValue, ['4','5','6','7','8','9','10']) then
            begin
                if MessageDlg('Confirma a exportação dos ' + lookObj1.EditText + ' pendentes que foram exportados!', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin
                    try
                        Tb_Lista3.First;
                        while not Tb_Lista3.Eof do
                        begin
                            Sp_Confirma.Close;
                            Sp_Confirma.ParamByName('V_TpObjeto').AsString    := Tb_Lista3.FieldByName('TpObjeto').AsString;
                            Sp_Confirma.ParamByName('V_TpOperacao').AsString  := Tb_Lista3.FieldByName('TpOperacao').AsString;
                            Sp_Confirma.ParamByName('V_CampoChave1').AsString := Tb_Lista3.FieldByName('CampoChave1').AsString;
                            Sp_Confirma.ParamByName('V_CampoChave2').AsString := Tb_Lista3.FieldByName('CampoChave2').AsString;
                            Sp_Confirma.ParamByName('V_CampoChave3').AsString := Tb_Lista3.FieldByName('CampoChave3').AsString;
                            Sp_Confirma.ParamByName('V_CampoChave4').AsString := Tb_Lista3.FieldByName('CampoChave4').AsString;
                            Sp_Confirma.ParamByName('V_Versao').AsString      := cVersaoEmAberto;
                            Sp_Confirma.ExecProc;

                            Tb_Lista3.Next;
                        end;

                    except
                        MessageDlg('Problemas ao confirma que os ' + lookObj1.EditText + ' pendentes que foram exportados!'+^M+SaveDialog.FileName, mtWarning, [mbOk], 0);
                    end;

                    Filtra; //PARA ATUALIZAR A LISTA...
                end;
            end;

            if cVersaoEmAberto <> '' then
            begin
                MontaListaPendente; //Atualiza lista de pendentes...
            end;

        end;

        mmoScript.lines.Clear;
        mmoScript.Text := Script2.Text;
        //PARA POSICIONAR NO FINAL DO SCRIPT
        mmoScript.SelStart := mmoScript.GetTextLen;
        mmoScript.SelLength := 0;

        Result := True;

    Finally
        ListaX.Clear;
        Script1.Free;
        Script2.Free;

        Espera(False,'');
    end;
end;

procedure TTela_Zip_Scrypts.gtvLista1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var cSigla, cTexto, cTpObjeto, cNmObjeto : String;
    n, nRecNo : integer;
begin
    if (edPesquisa.Enabled = False) or (edPesquisa.Visible = False) then exit;

    if  (   ACellViewInfo.GridRecord.Values[gtvLista1TpObjeto.Index] = 'Tabela' )
    and (   ACellViewInfo.GridRecord.Values[gtvLista1TpOperacao.Index] = 'D' ) then
    begin
        Showmessage('Não é possivel gerar script de exclusão de tabelas!'+char(13)+'Esse tipo de script deve ser gerado manualmente.');
        exit;
    end;

    if Tb_Lista3.IsEmpty = False then
    begin
        if Tb_Lista3.FieldByName('TpObjeto').AsString <> ACellViewInfo.GridRecord.Values[gtvLista1TpObjeto.Index] then
        begin
            Showmessage('O tipo do objeto não pode ser diferente do selecionado anteriormente...');
            exit;
        end;

        if Tb_Lista3.FieldByName('TpOperacao').AsString <> ACellViewInfo.GridRecord.Values[gtvLista1TpOperacao.Index] then
        begin
            Showmessage('O tipo de operação não pode ser diferente do selecionado anteriormente...');
            exit;
        end;
    end;

    if ( Tb_Lista3.IsEmpty = True ) and ( lookObj1.EditText <> ACellViewInfo.GridRecord.Values[gtvLista1TpObjeto.Index] ) then
    begin
        //posiciona no tipo de objeto selecionado
        Tb_Obj1.First;
        lookObj1.Properties.GridMode := False;
        if Tb_Obj1.Locate('TpObjeto',ACellViewInfo.GridRecord.Values[gtvLista1TpObjeto.Index],[loCaseInsensitive]) then
        begin
            lookObj1.EditValue := Tb_Obj1.FieldByName('Id_TpObjeto').AsInteger;
        end;
        lookObj1.Properties.GridMode := True;

        Filtra;
    end;

    edPesquisa.text := ACellViewInfo.GridRecord.Values[gtvLista1CampoChave1.Index];

    //se ainda não foi selecionado nada, checa se é "SE"
    if ( lookObj1.EditValue = 0 ) and ( Tb_Lista3.IsEmpty = True ) then
    begin
        if UpperCase(copy(edPesquisa.text,1,2))  = 'SE' then
            cSigla :=  copy(edPesquisa.text,4,3) + ' - ' ;  //exemplo: IDE - Ideal Emb
        if UpperCase(copy(edPesquisa.text,1,2))  = 'SC' then
            cSigla :=  'AAA';

        //posiciona no cliente correspondente
        if Tb_Obj2.Locate('Descricao',cSigla,[loPartialKey, loCaseInsensitive]) then
        begin
            lookObj2.EditValue := Tb_Obj2.FieldByName('Id_TpObjetoFilho').Value;

            //necessario fazer novamente, devido o comando acima, remonta no evento.
            edPesquisa.text := ACellViewInfo.GridRecord.Values[gtvLista1CampoChave1.Index];
        end;
    end;

    cTpObjeto  := ACellViewInfo.GridRecord.Values[gtvLista1TpObjeto.Index];
    cNmObjeto  := ACellViewInfo.GridRecord.Values[gtvLista1NmObjeto.Index];
    nRecNo := Tb_Lista1.RecNo;

    //OBJETOS DELETADOS;
    if ACellViewInfo.GridRecord.Values[gtvLista1TpOperacao.Index] = 'D' then
    begin
        Tb_Lista3.First;
        if not Tb_Lista3.Locate('NmObjeto',cNmObjeto,[loCaseInsensitive] ) then
        begin
            Tb_Lista3.Append;
            Tb_Lista3.FieldByName('TpObjeto').Value    := Tb_Lista1.FieldByName('TpObjeto').AsString;
            Tb_Lista3.FieldByName('NmObjeto').Value    := Tb_Lista1.FieldByName('NmObjeto').AsString;
            Tb_Lista3.FieldByName('CampoChave1').Value := Tb_Lista1.FieldByName('CampoChave1').AsString;
            Tb_Lista3.FieldByName('CampoChave2').Value := Tb_Lista1.FieldByName('CampoChave2').AsString;
            Tb_Lista3.FieldByName('CampoChave3').Value := Tb_Lista1.FieldByName('CampoChave3').AsString;
            Tb_Lista3.FieldByName('CampoChave4').Value := Tb_Lista1.FieldByName('CampoChave4').AsString;
            Tb_Lista3.FieldByName('TpOperacao').Value  := Tb_Lista1.FieldByName('TpOperacao').AsString;
            Tb_Lista3.Post;
        end;

        exit;
    end;

    if Tb_Lista2.IsEmpty = True then
    begin
        if ( lookObj1.EditValue = 0 ) and ( Tb_Lista3.IsEmpty = False ) then
        begin
            if UpperCase(copy(ACellViewInfo.GridRecord.Values[gtvLista1NmObjeto.Index],1,2)) <> UpperCase(copy(Tb_Lista3.FieldByName('NmObjeto').AsString,1,2)) then
            begin
                ShowMessage('Não é permitido misturar procedures "Sc" com "Se".');
                exit;
            end
        end
        else
        begin
            ShowMessage('Objeto não encontrado! Verifique os parâmetros.');
            exit;
        end;
    end;

    Tb_Lista2.First;
    if not Tb_Lista2.Locate('NmObjeto',cNmObjeto,[loCaseInsensitive] ) then
    begin
        ShowMessage('Objeto não encontrado!');
        exit;
    end;

    Tb_Lista3.First;
    if Tb_Lista3.Locate('NmObjeto',cNmObjeto,[loCaseInsensitive] ) then
    begin
        exit;
    end;

    if (lookObj1.EditValue = '0') or (lookObj2.EditValue = '2') or (lookObj2.EditValue = '3')  then
    begin
        n := 0;

        gtvLista1.DataController.DataSource := NIl; //para fazer com abr mais rápido a tela

        Tb_Lista1.First;
        while not Tb_Lista1.Eof do
        begin
            if  ( Tb_Lista1.FieldByName('TpObjeto').AsString = cTpObjeto)
            and ( Tb_Lista1.FieldByName('NmObjeto').AsString = cNmObjeto) then
            begin
                n := n + 1;
                cTexto := cTexto + Tb_Lista1.FieldByName('Lg_Us_Alt').AsString + char(13);
            end;

            Tb_Lista1.Next;
        end;

        //Tb_Lista1.First;
        Tb_Lista1.RecNo := nRecNo;
        gtvLista1.DataController.DataSource := Ds_Lista1;

        if n > 1 then
        begin
            if MessageDlg('O objeto '+ cNmObjeto
                       +char(13)
                       +char(13)+'Foi alterado pelos DEVs'
                       +char(13)+cTexto
                       +char(13)
                       +char(13)+'As alterações foram concluidas por todos?'
                       +char(13)
                       +char(13)+'Deseja prosseguir com a geração de script?' , mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
            begin
                Exit;
            end;
        end;
    end;

    Tb_Lista3.Append;
    Tb_Lista3.FieldByName('TpObjeto').Value    := Tb_Lista1.FieldByName('TpObjeto').AsString;
    Tb_Lista3.FieldByName('NmObjeto').Value    := Tb_Lista1.FieldByName('NmObjeto').AsString;
    Tb_Lista3.FieldByName('CampoChave1').Value := Tb_Lista1.FieldByName('CampoChave1').AsString;
    Tb_Lista3.FieldByName('CampoChave2').Value := Tb_Lista1.FieldByName('CampoChave2').AsString;
    Tb_Lista3.FieldByName('CampoChave3').Value := Tb_Lista1.FieldByName('CampoChave3').AsString;
    Tb_Lista3.FieldByName('CampoChave4').Value := Tb_Lista1.FieldByName('CampoChave4').AsString;
    Tb_Lista3.FieldByName('TpOperacao').Value  := Tb_Lista1.FieldByName('TpOperacao').AsString;
    Tb_Lista3.Post;

    if lookObj1.EditValue = '0'  then
        MontaListBox_Procedures3;
end;

procedure TTela_Zip_Scrypts.gtvLista1StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
    //ALTERA A LINHA INTEIRA CONFORME ESTILO...
    if MatchText(UpperCase( ARecord.Values[gtvLista1Lg_Us_Alt.Index]), [UpperCase(InfoPadrao.Usuario) ]) then
    begin
        AStyle := EstiloCustom;
    end;
end;

procedure TTela_Zip_Scrypts.gtvLista2CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var n : integer;
    cTexto : String;
begin
    if Tb_Lista2.IsEmpty = True then exit;

    if Tb_Lista3.IsEmpty = False then
    begin
        if (lookObj1.EditValue = '1') and (MatchText(lookObj2.EditValue, ['0','6','7','8'])) then
        begin
            showmessage('Para exportar Colunas, só é permitido selecionar apenas uma tabela.' );
            exit;
        end;

        if Tb_Lista3.FieldByName('TpObjeto').AsString <> ACellViewInfo.GridRecord.Values[gtvLista2TpObjeto.Index] then
        begin
            Showmessage('O tipo do objeto não pode ser diferente do selecionado anteriormente...');
            exit;
        end;

        if Tb_Lista3.FieldByName('TpOperacao').AsString <> ACellViewInfo.GridRecord.Values[gtvLista2TpOperacao.Index] then
        begin
            Showmessage('O tipo de operação não pode ser diferente do selecionado anteriormente...');
            exit;
        end;
    end;

    Tb_Lista3.First;
    if Tb_Lista3.Locate('NmObjeto',ACellViewInfo.GridRecord.Values[gtvLista2NmObjeto.Index],[loCaseInsensitive] ) then
        exit;

     //0-Procedures  2-Funções   3-Trigger
    if (lookObj1.EditValue = '0') or (lookObj2.EditValue = '2') or (lookObj2.EditValue = '3')  then
    begin
        n := 0;

        Tb_Lista1.First;
        while not Tb_Lista1.Eof do
        begin
            if  ( Tb_Lista1.FieldByName('TpObjeto').AsString   = ACellViewInfo.GridRecord.Values[gtvLista2TpObjeto.Index] )
            and ( Tb_Lista1.FieldByName('NmObjeto').AsString   = ACellViewInfo.GridRecord.Values[gtvLista2NmObjeto.Index] ) then
            begin
                n := n + 1;
                cTexto := cTexto + Tb_Lista1.FieldByName('Lg_Us_Alt').AsString + char(13);
            end;

            Tb_Lista1.Next;
        end;

        if n > 1 then
        begin
            if MessageDlg('O objeto '+ ACellViewInfo.GridRecord.Values[gtvLista2NmObjeto.Index]
                       +char(13)
                       +char(13)+'Foi alterado pelos DEVs'
                       +char(13)+cTexto
                       +char(13)
                       +char(13)+'As alterações foram concluidas por todos?'
                       +char(13)
                       +char(13)+'Deseja prosseguir com a geração de script?' , mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
            begin
                Exit;
            end;
        end;
    end;

    Tb_Lista3.Append;
    Tb_Lista3.FieldByName('TpObjeto').Value    := ACellViewInfo.GridRecord.Values[gtvLista2TpObjeto.Index];
    Tb_Lista3.FieldByName('NmObjeto').Value    := ACellViewInfo.GridRecord.Values[gtvLista2NmObjeto.Index];
    Tb_Lista3.FieldByName('CampoChave1').Value := ACellViewInfo.GridRecord.Values[gtvLista2CampoChave1.Index];
    Tb_Lista3.FieldByName('CampoChave2').Value := ACellViewInfo.GridRecord.Values[gtvLista2CampoChave2.Index];
    Tb_Lista3.FieldByName('CampoChave3').Value := ACellViewInfo.GridRecord.Values[gtvLista2CampoChave3.Index];
    Tb_Lista3.FieldByName('CampoChave4').Value := ACellViewInfo.GridRecord.Values[gtvLista2CampoChave4.Index];
    Tb_Lista3.FieldByName('TpOperacao').Value  := ACellViewInfo.GridRecord.Values[gtvLista2TpOperacao.Index];
    Tb_Lista3.Post;

    if lookObj1.EditValue = '0'  then
       MontaListBox_Procedures3;

    if lookObj1.EditValue = '1'  then
       MontaListaDeCampos(ACellViewInfo.GridRecord.Values[gtvLista2NmObjeto.Index]);
end;

procedure TTela_Zip_Scrypts.gtvLista3CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if Tb_Lista3.IsEmpty = True then exit;

    MontaListaDeCampos(ACellViewInfo.GridRecord.Values[gtvLista3CampoChave1.Index]);
end;

procedure TTela_Zip_Scrypts.gtvLista4CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if Tb_Lista4.IsEmpty = True then exit;

    if (lookObj1.EditValue = '1') and (MatchText(lookObj2.EditValue, ['0','6','7','8'])) then
    begin
        Tb_Lista5.First;
        if Tb_Lista5.Locate('NmObjeto',ACellViewInfo.GridRecord.Values[gtvLista4NmObjeto.Index],[loCaseInsensitive] ) then
            exit;

        Tb_Lista5.Append;
        Tb_Lista5.FieldByName('NmObjeto').Value   := ACellViewInfo.GridRecord.Values[gtvLista4NmObjeto.Index];
        Tb_Lista5.Post;
    end;
end;

procedure TTela_Zip_Scrypts.bExportaClick(Sender: TObject);
begin
    if GeraScript('PUBLICAR') = False then exit;

    pnBarra.Visible := True;
    cxPageControl1.ActivePage := TabGeraScript;

    Tb_Lista3.Close;
    Tb_Lista3.Open;
    Tb_Lista4.Close;
    Tb_Lista4.Open;
    Tb_Lista5.Close;
    Tb_Lista5.Open;

    Espera(False,'');
end;

procedure TTela_Zip_Scrypts.bLimpaListasClick(Sender: TObject);
begin
    Tb_Lista3.Close;
    Tb_Lista3.Open;
    Tb_Lista4.Close;
    Tb_Lista4.Open;
    Tb_Lista5.Close;
    Tb_Lista5.Open;
end;

procedure TTela_Zip_Scrypts.btnGeraScriptClick(Sender: TObject);
begin
    if GeraScript('VISUALIZAR') = False then exit;

    pnBarra.Visible := True;
    cxPageControl1.ActivePage := TabVisualizaScript;

    if mmoScript.CanFocus then
       mmoScript.SetFocus;
end;

procedure TTela_Zip_Scrypts.btVoltarClick(Sender: TObject);
begin
    if cxPageControl1.ActivePage = TabGeraScript then
       close;
    if cxPageControl1.ActivePage = TabVisualizaScript then
       cxPageControl1.ActivePage := TabGeraScript;
end;

procedure TTela_Zip_Scrypts.ImportarLista2Click(Sender: TObject);
begin
    if Application.FindComponent('Tela_Zip_Scrypts_Lista') <> Nil     then
       Tela_Zip_Scrypts_Lista.destroy;

    RegisterClass(TTela_Zip_Scrypts_Lista);
    Tela_Zip_Scrypts_Lista := TTela_Zip_Scrypts_Lista.Create(Application);

    AjustaConfiguracaoSkin(Tela_Zip_Scrypts_Lista);

    Tela_Zip_Scrypts_Lista.cTexto    := edPesquisa.Text;
    Tela_Zip_Scrypts_Lista.cTpObjeto := lookObj1.EditText;
    Tela_Zip_Scrypts_Lista.ShowModal;
end;

procedure TTela_Zip_Scrypts.cxButton1Click(Sender: TObject);
begin
    mmoScript.Clear;
    cxPageControl1.ActivePage :=  TabGeraScript;
    pnBarra.Visible := True;
end;

procedure TTela_Zip_Scrypts.lookObj1PropertiesCloseUp(Sender: TObject);
begin
    Filtra;
end;

procedure TTela_Zip_Scrypts.lookObj1PropertiesNewLookupDisplayText(Sender: TObject; const AText: TCaption);
begin
    Filtra;
end;

procedure TTela_Zip_Scrypts.lookObj2PropertiesChange(Sender: TObject);
begin
    Tb_Lista3.Close;
    Tb_Lista3.Open;

    Tb_Lista4.Close;
    Tb_Lista4.Open;

    Tb_Lista5.Close;
    Tb_Lista5.Open;

    //Procedures
    if lookObj1.EditValue = '0' then
    begin
        if lookObj2.EditValue = 'AAA' then
           edPesquisa.text  := 'Sc_'
        else
           edPesquisa.text  := 'Se_' + lookObj2.EditValue +'_';
    end;

    //Tabelas
    if lookObj1.EditValue = '1' then
    begin
        edPesquisa.Text := 'TC_';
    end;

    if (lookObj1.EditValue = '0') or (lookObj1.EditValue = '1') then
    begin
        edPesquisa.SetFocus;
        edPesquisa.Selstart:= Length(edPesquisa.text);
    end;
end;

procedure TTela_Zip_Scrypts.edPesquisaPropertiesChange(Sender: TObject);
begin
    Tb_Lista2.Close;
    Tb_Lista2.ParamByName('TpObjeto').AsString   := lookObj1.EditText;
    Tb_Lista2.ParamByName('NmObjeto').AsString   := edPesquisa.Text;
    Tb_Lista2.ParamByName('Sigla').AsString      := lookObj2.EditValue;
    Tb_Lista2.Open;

    gtvLista2.ApplyBestFit();
end;

Procedure TTela_Zip_Scrypts.MontaListBox_Procedures3;
begin
    Tb_Lista4.Close;
    Tb_Lista4.Open;

    if Tb_Lista3.IsEmpty = True then exit;

    gtvLista4.Columns[0].Caption := 'Local de Uso';

    Tb_Lista3.First;
    while not Tb_Lista3.eof do
    begin
        Tb_Proc3.Close;
        Tb_Proc3.ParamByName('Procedure').AsString := Tb_Lista3.FieldByName('CampoChave1').AsString;
        Tb_Proc3.Open;

        if Tb_Proc3.IsEmpty = false then
        begin
            Tb_Lista4.Append;
            Tb_Lista4.FieldByName('NmObjeto').Value   := Tb_Lista3.FieldByName('CampoChave1').AsString;
            Tb_Lista4.Post;

            Tb_Proc3.First;
            while not Tb_Proc3.eof do
            begin
                Tb_Lista4.Append;
                Tb_Lista4.FieldByName('NmObjeto').Value   := '              ' + Tb_Proc3Id_Tela.asstring;
                Tb_Lista4.Post;

                Tb_Proc3.Next;
            end;
        end;

        Tb_Lista3.Next;
    end;
end;

procedure TTela_Zip_Scrypts.ExcluirLinha2Click(Sender: TObject);
var ADataSet : TDataset;
begin
    if AViewPadrao = nil then exit;

    ADataSet := TcxGridDBTableView(AViewPadrao).DataController.DataSource.DataSet;

    if ADataSet.RecordCount = 0 then
    begin
        showmessage('Selecione uma linha.');
        exit;
    end;

    ADataSet.Delete;
end;

procedure TTela_Zip_Scrypts.ExcluirLinha3Click(Sender: TObject);
var ADataSet : TDataset;
begin
    if AViewPadrao = nil then exit;

    ADataSet := TcxGridDBTableView(AViewPadrao).DataController.DataSource.DataSet;

    if ADataSet.RecordCount = 0 then
    begin
        showmessage('Selecione uma linha.');
        exit;
    end;

    ADataSet.Delete;
end;

procedure TTela_Zip_Scrypts.ExcluirLinha4Click(Sender: TObject);
var ADataSet : TDataset;
begin
    if AViewPadrao = nil then exit;

    ADataSet := TcxGridDBTableView(AViewPadrao).DataController.DataSource.DataSet;

    if ADataSet.RecordCount = 0 then
    begin
        showmessage('Selecione uma linha.');
        exit;
    end;

    ADataSet.Delete;
end;

procedure TTela_Zip_Scrypts.ExluirLinha0Click(Sender: TObject);
var ADataSet : TDataset;
begin
    if AViewPadrao = nil then exit;

    ADataSet := TcxGridDBTableView(AViewPadrao).DataController.DataSource.DataSet;

    if ADataSet.RecordCount = 0 then
    begin
        showmessage('Selecione uma linha.');
        exit;
    end;

    if MessageDlg('Remover o Objeto "'+ADataSet.FieldByName('NmObjeto').AsString+'" da Lista de Pendentes?',mtConfirmation,[mbYes,mbNo],0)= mrYes then
    begin
        Sp_Descarta.Close;
        Sp_Descarta.ParamByName('V_TpObjeto').AsString    := ADataSet.FieldByName('TpObjeto').AsString;
        Sp_Descarta.ParamByName('V_TpOperacao').AsString  := ADataSet.FieldByName('TpOperacao').AsString;
        Sp_Descarta.ParamByName('V_CampoChave1').AsString := ADataSet.FieldByName('CampoChave1').AsString;
        Sp_Descarta.ParamByName('V_CampoChave2').AsString := ADataSet.FieldByName('CampoChave2').AsString;
        Sp_Descarta.ParamByName('V_CampoChave3').AsString := ADataSet.FieldByName('CampoChave3').AsString;
        Sp_Descarta.ParamByName('V_CampoChave4').AsString := ADataSet.FieldByName('CampoChave4').AsString;
        Sp_Descarta.ExecProc;

        ADataSet.Delete;
    end;
end;

procedure TTela_Zip_Scrypts.MontaListaDeCampos(sNomeObjeto: String);
begin
    if Tb_Lista3.IsEmpty = True then exit;

    if (lookObj1.EditValue = '1') and (MatchText(lookObj2.EditValue, ['0','6','7','8'])) then
    begin
        Tb_Lista4.Close;
        Tb_Lista4.Open;

        Tb_TabCol.Close;
        Tb_TabCol.ParamByName('Tabela').AsString := sNomeObjeto;
        Tb_TabCol.Open;

        Tb_TabCol.First;
        while not Tb_TabCol.Eof do
        begin
            Tb_Lista4.Append;
            Tb_Lista4.FieldByName('NmObjeto').Value   := Tb_TabColColuna.AsString;
            Tb_Lista4.Post;

            Tb_TabCol.Next;
        end;
    end;
end;

Procedure TTela_Zip_Scrypts.MontaListaPendente;
var ListDir : TStrings;
    ListArq : TStringDynArray;
    Arquivo : TStringList;
    j: integer;
    cTexto, NomeArq: string;

    function montacoluna(texto: string; largura: integer):string;
    begin
        while length(texto) < largura do
           texto := texto + ' ';

        texto := Copy(texto, 1, largura);
        result := texto;
    end;
begin
    if (cDirVersaoEmAberto = '') or ( not System.SysUtils.DirectoryExists(cDirVersaoEmAberto) ) then
    begin
        Tb_Lista1.Close;
        Tb_Lista1.Open;

        gtvLista1.ApplyBestFit();//Ajusta a largura da coluna de acordo com o conteudo.

        Tb_Lista1.first;
        Tb_Lista1.Locate('Lg_Us_Alt', InfoPadrao.Usuario, [loCaseInsensitive]);

        exit;
    end;

    //Daqui pra baixo Identifica os objetos ja inclusos nos arquivos Atu.sql da versão em aberto
    gtvLista1.DataController.DataSource := NIl; //para fazer com abr mais rápido a tela

    Tb_Lista1.Close;
    Tb_Lista1.Open;

    Try
        ListArq := TDirectory.GetFiles(cDirVersaoEmAberto, '*.sql');
        ListDir := TStringList.Create;
        Arquivo := TStringList.Create;

        for NomeArq in ListArq do
        begin
            Arquivo.clear;
            Arquivo.LoadFromFile(NomeArq);

            Tb_Lista1.First;
            while not Tb_Lista1.eof do
            begin
                if  ( Tb_Lista1.FieldByName('TpObjeto').AsString <> 'Procedure' )
                and ( Tb_Lista1.FieldByName('TpObjeto').AsString <> 'Tabela' )
                and ( Tb_Lista1.FieldByName('TpObjeto').AsString <> 'Função' )
                and ( Tb_Lista1.FieldByName('TpObjeto').AsString <> 'Trigger' )    then
                begin
                    Tb_Lista1.next;

                    continue; //descarta o registro atual e vai para o proximo para ser mais rapido.
                end;

                if Tb_Lista1Flag.asstring <> 'X' then
                begin
                    for j := 0 to Arquivo.Count - 1 do
                    begin
                        cTexto := '[dbo].['+Tb_Lista1CampoChave1.asstring+']'; //exemplo procura texto [dbo].[Sc_Alm_R_Req_Periodo]

                        if pos(lowercase(cTexto),lowercase(Arquivo.Strings[j]))>0 then
                        begin
                            Tb_Lista1.edit;
                            Tb_Lista1flag.asstring := 'X';
                            Tb_Lista1.post;

                            break;//cai fora deste for
                        end
                        else
                        begin
                            cTexto := ''''+Tb_Lista1CampoChave1.asstring+''''; //exemplo procura texto 'Sc_Alm_R_Req_Periodo'

                            if pos(lowercase(cTexto),lowercase(Arquivo.Strings[j]))>0 then
                            begin
                                Tb_Lista1.edit;
                                Tb_Lista1flag.asstring := 'X';
                                Tb_Lista1.post;

                                break;//cai fora deste for
                            end
                        end;
                    end;
                end;

                Tb_Lista1.next;
            end;
        end;

        //exclui os que ja foram adicionados ao script
        Tb_Lista1.First;
        while not Tb_Lista1.eof do
        begin
            if Tb_Lista1flag.asstring = 'X' then
            begin
                Tb_Lista1.delete;
                continue;
            end;
            Tb_Lista1.next;
        end;

    finally
        ListDir.Free;
        Arquivo.Free;

        Tb_Lista1.first;
        gtvLista1.DataController.DataSource := Ds_Lista1;
        gtvLista1.ApplyBestFit();//Ajusta a largura da coluna de acordo com o conteudo.

        //POSICIONA A LISTA NA MAQUINA ATUAL...
        Tb_Lista1.Locate('Lg_Us_Alt', InfoPadrao.Usuario, [loCaseInsensitive]);
    end;
end;

function TTela_Zip_Scrypts.RegistraVersao: Boolean;
var i,Qtde, QtdLinhasVazias : Integer ;
    ListaW : Tstringlist;
begin
    ListaW := TStringList.Create;

    Qtde := 0;

    //limpa os espaços em branco a direita
    //elimina linha vazias em duplicidade 
    QtdLinhasVazias := 0;
    for i:= 0 to ListaX.Count - 1 do
    begin
        if uppercase(trim(ListaX.Strings[i])) = 'GO' Then
           Inc(Qtde);

        ListaX[i] := TrimRight(ListaX[i]);

        if ListaX[i] <> '' then
        begin
            ListaW.Add(ListaX[i]);
            QtdLinhasVazias := 0;
        end;

        if ListaX[i] = '' then
        begin
            QtdLinhasVazias := QtdLinhasVazias + 1;

            if QtdLinhasVazias = 1 then
               ListaW.Add(ListaX[i]);
        end;
    end;

    if Qtde = 0 then
    begin
        Raise(Exception.Create('Conteúdo inválido : ' +ListaW.Text));
    end;

    Tb_Exec.Close;
    Tb_Exec.SQL.Clear;

    Tb_Exec.SQL.Add('SET ANSI_PADDING ON');
    Tb_Exec.SQL.Add('SET ANSI_WARNINGS ON');
    Tb_Exec.SQL.Add('SET ARITHABORT ON');
    Tb_Exec.SQL.Add('SET CONCAT_NULL_YIELDS_NULL ON');
    Tb_Exec.ExecSQL;

    Tb_Exec.Close ;
    Tb_Exec.SQL.Clear;

    for i := 0 to (ListaW.Count-1) do
    begin
        if uppercase(trim(ListaW.Strings[i])) = 'GO' Then
        begin
            Tb_Exec.ExecSQL;
            Tb_Exec.Close ;
            Tb_Exec.SQL.Clear;
        end
        else
            Tb_Exec.SQL.Add(ListaW.Strings[i]);
    end;

    Tb_Exec.Close ;
    Tb_Exec.SQL.Clear;
    Tb_Exec.SQL.Add('SET ANSI_PADDING OFF');
    Tb_Exec.SQL.Add('SET ANSI_WARNINGS OFF');
    Tb_Exec.SQL.Add('SET ARITHABORT OFF');
    Tb_Exec.SQL.Add('SET CONCAT_NULL_YIELDS_NULL OFF');
    Tb_Exec.ExecSQL;

    Result := True;
end;

procedure TTela_Zip_Scrypts.Tb_Lista4AfterOpen(DataSet: TDataSet);
begin
    gtvLista4.Columns[0].Caption := 'NmObjeto';
end;

end.
