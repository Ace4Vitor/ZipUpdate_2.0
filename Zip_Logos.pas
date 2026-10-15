unit Zip_Logos;

interface

Uses
  cxCalendar, cxDBEdit, cxCalc, cxExportPivotGridLink, cxFormats, cxGridExportLink, ppTypes, MemDS, DBAccess, MSAccess,
  dxSkinsForm, cxCustomData, StrUtils,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, Data.DB, System.ImageList, Vcl.ImgList, cxImageList, dxBar, dxBarExtItems, cxClasses, ppDB,
  ppDBPipe, ppParameter, ppDesignLayer, ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, Vcl.StdCtrls, cxButtons, cxGroupBox, dxStatusBar, cxTextEdit, cxMaskEdit, Vcl.ExtCtrls, ppViewr, cxPC,
  Vcl.FileCtrl, JvDriveCtrls;

type
  TTela_Zip_Logos = class(TForm)
    ScrollBox1: TScrollBox;
    Relatorio: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppParameterList1: TppParameterList;
    PageControl: TcxPageControl;
    TabFiltros: TcxTabSheet;
    ScrollBox3: TScrollBox;
    TabVisualiza: TcxTabSheet;
    ppViewer1: TppViewer;
    Barra_Superior: TdxBarManager;
    ToolBar2: TdxBar;
    ToolBar1: TdxBar;
    bExporRel: TdxBarButton;
    bEnviarEmail: TdxBarButton;
    bDados: TdxBarButton;
    bDadosDinamico: TdxBarButton;
    bPreviewWhole: TdxBarButton;
    bPreviewWidth: TdxBarButton;
    bPreview100Percent: TdxBarButton;
    bPreviewFirst: TdxBarButton;
    bPreviewPrior: TdxBarButton;
    bPreviewNext: TdxBarButton;
    bPreviewLast: TdxBarButton;
    bConfigurar: TdxBarButton;
    bFiltrar: TdxBarButton;
    bSair: TdxBarButton;
    bPreviewZoom: TdxBarControlContainerItem;
    bPriviewPage: TdxBarControlContainerItem;
    ToolBar3: TdxBar;
    mskPreviewPercentage: TcxMaskEdit;
    mskPreviewPage: TcxMaskEdit;
    bFiltra_Tela: TdxBarButton;
    bVisualizar: TdxBarButton;
    bImprimir: TdxBarButton;
    Status_Rel: TdxStatusBar;
    Img_Tela: TcxImageList;
    bOpcoes: TdxBarSubItem;
    dxBarSubItem1: TdxBarSubItem;
    MASK_QTDE: TdxBarEdit;
    MASK_VLUNIT: TdxBarEdit;
    MASK_VLTOTAL: TdxBarEdit;
    MASK_PERCENT: TdxBarEdit;
    cbo_Zebrado: TdxBarCombo;
    Cabec: TppHeaderBand;
    Detalhe: TppDetailBand;
    Rodap: TppFooterBand;
    ImprimeTela1: TdxBarButton;
    EnviaTela1: TdxBarButton;
    ppImage00: TppImage;
    ppImage01: TppImage;
    ppImage02: TppImage;
    ppImage03: TppImage;
    ppImage04: TppImage;
    ppImage05: TppImage;
    ppImage06: TppImage;
    ppImage07: TppImage;
    ppImage08: TppImage;
    ppImage09: TppImage;
    ppImage10: TppImage;
    ppImage11: TppImage;
    ppImage12: TppImage;
    ppImage13: TppImage;
    ppImage14: TppImage;
    ppImage15: TppImage;
    ppImage16: TppImage;
    ppImage17: TppImage;
    ppImage18: TppImage;
    ppImage19: TppImage;
    ppImage20: TppImage;
    ppImage21: TppImage;
    ppImage22: TppImage;
    ppImage23: TppImage;
    ppImage24: TppImage;
    ppImage25: TppImage;
    ppImage26: TppImage;
    ppImage27: TppImage;
    ppImage28: TppImage;
    ppImage29: TppImage;
    ppImage30: TppImage;
    ppImage31: TppImage;
    ppImage32: TppImage;
    ppImage33: TppImage;
    ppImage34: TppImage;
    ppImage35: TppImage;
    ppImage36: TppImage;
    ppImage37: TppImage;
    ppImage38: TppImage;
    ppImage39: TppImage;
    ppImage40: TppImage;
    ppImage41: TppImage;
    ppImage42: TppImage;
    ppImage43: TppImage;
    ppImage44: TppImage;
    ppImage45: TppImage;
    ppImage46: TppImage;
    ppImage47: TppImage;
    ppImage48: TppImage;
    ppImage49: TppImage;
    ppImage50: TppImage;
    ppImage51: TppImage;
    ppImage52: TppImage;
    ppImage53: TppImage;
    ppImage54: TppImage;
    ppImage55: TppImage;
    ppImage56: TppImage;
    ppImage57: TppImage;
    ppImage58: TppImage;
    ppImage59: TppImage;
    ppImage60: TppImage;
    ppImage61: TppImage;
    ppImage62: TppImage;
    ppImage63: TppImage;
    Tb_Bloco: TMSQuery;
    Tb_BlocoTexto: TMemoField;
    DataSource1: TDataSource;
    pnBarra: TcxGroupBox;
    btVoltar: TcxButton;
    JvFileListBox1: TJvFileListBox;
    ppImage64: TppImage;
    ppImage65: TppImage;
    ppImage66: TppImage;
    ppImage67: TppImage;
    ppImage68: TppImage;
    ppImage69: TppImage;
    ppImage70: TppImage;
    ppImage71: TppImage;
    ppImage72: TppImage;
    ppImage73: TppImage;
    ppImage74: TppImage;
    ppImage75: TppImage;
    ppImage76: TppImage;
    ppImage77: TppImage;
    ppImage78: TppImage;
    ppImage79: TppImage;
    ppImage80: TppImage;
    ppImage81: TppImage;
    ppImage82: TppImage;
    ppImage83: TppImage;
    ppImage84: TppImage;
    ppImage85: TppImage;
    ppImage86: TppImage;
    ppImage87: TppImage;
    ppImage88: TppImage;
    ppImage89: TppImage;
    ppImage90: TppImage;
    ppImage91: TppImage;
    ppImage92: TppImage;
    ppImage93: TppImage;
    ppImage94: TppImage;
    ppImage95: TppImage;
    ppImage96: TppImage;

    { Funcoes desenvolvidas }

    Procedure AntesDoFormShow; Virtual;
    Procedure Mostra_Texto(cTexto : String ) ;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bVisualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spbPreviewPrintClick(Sender: TObject);
    procedure mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
    procedure ppViewer1PageChange(Sender: TObject);
    procedure ppViewer1StatusChange(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bFiltra_TelaClick(Sender: TObject);
    procedure RelatorioAfterPrint(Sender: TObject);
    procedure mskPreviewPercentageKeyPress(Sender: TObject; var Key: Char);
    procedure mskPreviewPercentageExit(Sender: TObject);
    procedure mskPreviewPageExit(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure bPreviewWholeClick(Sender: TObject);
    procedure bPreviewWidthClick(Sender: TObject);
    procedure bPreview100PercentClick(Sender: TObject);
    procedure bPreviewFirstClick(Sender: TObject);
    procedure bPreviewPriorClick(Sender: TObject);
    procedure bPreviewNextClick(Sender: TObject);
    procedure bPreviewLastClick(Sender: TObject);
    procedure bFiltrarClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btVoltarClick(Sender: TObject);
  private
	{ Private declarations }
    function TrataNomeArquivo(cNomeArquivo: String): String;
    function TestaSeTemInformacao: Integer;

  public
	{ Public declarations }
    TagEmExecucao : integer;
	procedure PreviewFormCreateEvent(Sender: TObject);
    procedure ppshape1Print(Sender: TObject);
    protected ADataSource: TcxCustomDataSource;
  end;

var
  Tela_Zip_Logos: TTela_Zip_Logos;

implementation

{$R *.DFM}

Procedure TTela_Zip_Logos.AntesDoFormShow;
begin
    BSair.PaintStyle           := psCaptionGlyph;
end;

procedure TTela_Zip_Logos.FormCreate(Sender: TObject);
var i: Integer;
begin
    ToolBar1.OneOnRow   := False;
    ToolBar1.Row        := 0;
    ToolBar1.DockedLeft := Width - ToolBar1.FloatClientWidth;
    ToolBar3.Visible    := false;

    cxFormatController.UseDelphiDateTimeFormats := True;
    FormatSettings.ThousandSeparator := '.';
    FormatSettings.DecimalSeparator  := ',';
    FormatSettings.CurrencyDecimals  := 2;
    FormatSettings.DateSeparator     := '/';
    FormatSettings.ShortDateFormat   := 'dd/mm/yyyy';
    FormatSettings.TimeSeparator     := ':';
    FormatSettings.ShortTimeFormat   := 'hh:mm';
    FormatSettings.LongTimeFormat    := 'hh:mm:ss';

    //OCULTA TODAS AS GUIAS
    for i := 0 to PageControl.PageCount-1 do
       PageControl.Pages[i].TabVisible := False;

    PageControl.ActivePage  := TabFiltros;
    BorderStyle := bsNone ;
end;

procedure TTela_Zip_Logos.FormShow(Sender: TObject);
var n: integer;
begin
    PageControl.ActivePage := TabFiltros;
    ToolBar3.Visible       := false;

    for n := 0 to ComponentCount - 1 do
    begin
        if Components[n] is TppReport then
        begin
            //estes comando faz com que não seja exportadas as linhas__________________
            TppReport(Components[n]).XLSSettings.ExportComponents   := [ecText,ecRichText,ecTable,ecOther];
            TppReport(Components[n]).XLSSettings.MergeAdjacentCells := False;
            //estes comando faz com que não seja exportadas as linhas__________________
            TppReport(Components[n]).RTFSettings.ExportComponents   := [ecText,ecShape,ecImage,ecRichText,ecBarCode,ecTable,ecOther];
            TppReport(Components[n]).RTFSettings.MergeRichText      := False;

            //MELHORA A QUALIDADE DAS IMAGENS NO RELATORIO, PRINCIPALMENTE O LOGO
            TppReport(Components[n]).PDFSettings.ScaleImages        := False;
            //TppReport(Components[n]).PDFSettings.ImageCompressionLevel := 1; ESTE MELHORA AINDA MAIS... MAS POR ENQUANTO NÃO ESTA SENDO USADO
        end;
    end;

    bVisualizarClick(sender);
end;

procedure TTela_Zip_Logos.ppshape1Print(Sender: TObject);
begin
    //OBRIGATORIO MANTER ESTE COMENTÁRIO...PARA USO DAS TELAS HERDADAS
end;

Procedure TTela_Zip_Logos.Mostra_Texto(cTexto :String );
Begin
    Status_Rel.Panels.Items[0].Text := cTexto ;
    update ;
End;

procedure TTela_Zip_Logos.mskPreviewPageExit(Sender: TObject);
begin
    try
        ppViewer1.GotoPage(strtoint(Trim(mskPreviewPage.Text)));
    except
    end;
end;

procedure TTela_Zip_Logos.mskPreviewPageKeyPress(Sender: TObject;
var Key: Char);
begin
    if (Key <> #13) then exit;

    try
        ppViewer1.GotoPage(strtoint(Trim(mskPreviewPage.Text)));
    except
    end;

    if mskPreviewPage.CanFocus then
       mskPreviewPage.SetFocus;

    mskPreviewPage.SelectAll;
end;

procedure TTela_Zip_Logos.mskPreviewPercentageExit(Sender: TObject);
begin
    try
        ppViewer1.ZoomPercentage := strtoint(Trim(copy(mskPreviewPercentage.Text,1,3)))
    except
        ppViewer1.ZoomPercentage := 100;
    end;
end;

procedure TTela_Zip_Logos.mskPreviewPercentageKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (Key <> #13) then exit;

     try
         ppViewer1.ZoomPercentage := strtoint(Trim(copy(mskPreviewPercentage.Text,1,3)))
     except
         ppViewer1.ZoomPercentage := 100;
     end;

     if mskPreviewPercentage.CanFocus then
        mskPreviewPercentage.SetFocus;
     mskPreviewPercentage.SelectAll;
end;

procedure TTela_Zip_Logos.PageControlChange(Sender: TObject);
begin
    if PageControl.ActivePage = TabFiltros then
    begin
        TagEmExecucao := 0;

        if ppViewer1.Busy then
           ppViewer1.Cancel;

        ToolBar3.Visible := false;
        Mostra_Texto(' ');
    end;
end;

procedure TTela_Zip_Logos.ppViewer1PageChange(Sender: TObject);
begin
    mskPreviewPage.Text       := IntToStr(ppViewer1.AbsolutePageNo);
    //ppViewer1.ZoomSetting     := zsPageWidth;
    mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;

procedure TTela_Zip_Logos.ppViewer1StatusChange(Sender: TObject);
begin
    Mostra_Texto(ppViewer1.Status + '   ' );
end;

procedure TTela_Zip_Logos.FormMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint;
  var Handled: Boolean);
begin
    if PageControl.ActivePage = TabVisualiza then
       PpViewer1.VerticalScroll(25);//Para Cima
end;

procedure TTela_Zip_Logos.FormMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint;
  var Handled: Boolean);
begin
    if PageControl.ActivePage = TabVisualiza then
       PpViewer1.VerticalScroll(-25);//Para Baixo
end;

procedure TTela_Zip_Logos.bFiltra_TelaClick(Sender: TObject);
begin
    bVisualizar.Enabled    := True;
    bImprimir.Enabled      := True;
    bExporRel.Enabled      := True;
    bEnviarEmail.Enabled   := True;
    bDados.Enabled         := True;
    bDadosDinamico.Enabled := True;
    ToolBar3.Visible       := False;

    PageControl.ActivePage := TabFiltros;
end;

procedure TTela_Zip_Logos.FormResize(Sender: TObject);
begin
    ToolBar1.DockedLeft := Width - ToolBar1.FloatClientWidth;
end;

procedure TTela_Zip_Logos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
    self := nil;
end;

procedure TTela_Zip_Logos.bVisualizarClick(Sender: TObject);
begin
    if TagEmExecucao > 0 then exit;
    if ppViewer1.Busy then exit;

    TagEmExecucao := 1; //PRA INDICAR QUE ENTROU EM EXECUÇÃO

    Try
        bFiltrar.Click;

        //CASO DE ERRO NA ABERTURA DA QUERY... NÃO PROSSEGUE
        if TestaSeTemInformacao = -1 then
           exit;

        ToolBar3.Visible       := True;
        PageControl.ActivePage := TabVisualiza;

        ppViewer1.Report :=  Relatorio;

        Relatorio.PrintToDevices;

        ppViewer1.FirstPage; //posiciona na primeira pag.

        ppViewer1.RefreshPage;

    Finally
        TagEmExecucao := 0; //PRA INDICAR QUE TERMINOU EM EXECUÇÃO
    End;
end;

procedure TTela_Zip_Logos.bImprimirClick(Sender: TObject);
begin
    if TagEmExecucao > 0 then exit;
    if ppViewer1.Busy then exit;

    TagEmExecucao := 2;  //PRA INDICAR QUE ENTROU EM EXECUÇÃO

    Try
        bFiltrar.Click;

        //CASO DE ERRO NA ABERTURA DA QUERY... NÃO PROSSEGUE
        if TestaSeTemInformacao = -1 then
           exit;

        Mostra_Texto('Imprimindo ... ');

        Relatorio.DeviceType :=  'Printer';
        Relatorio.PrintReport;
        Mostra_Texto('Termino da Impressão ');
        Mostra_Texto(ppViewer1.Status + '   ' );

        if PageControl.ActivePage = TabVisualiza then
           bVisualizar.Click;

    Finally
        TagEmExecucao := 0; //PRA INDICAR QUE TERMINOU EM EXECUÇÃO
    End;
end;

Function TTela_Zip_Logos.TestaSeTemInformacao():Integer;
begin
    Result := 0;

    //CASO DE ERRO NA ABERTURA DA QUERY... NÃO PROSSEGUE
    if Relatorio.DataPipeline <> Nil then
    begin
        if TppDBPipeline(Relatorio.DataPipeline).DataSource <> Nil then
        begin
            if TMSQuery(TppDBPipeline(Relatorio.DataPipeline).DataSource.DataSet).Active = False then
            begin
                //showmessage('Não foi possivel ler os dados');
                Result := -1;
                exit;
            end;
        end;
    end;

     if Relatorio.DataPipeline <> Nil then
    begin
        if TppDBPipeline(Relatorio.DataPipeline).DataSource <> Nil then
        begin
            Result := TMSQuery(TppDBPipeline(Relatorio.DataPipeline).DataSource.DataSet).RecordCount;
        end;
    end;
end;

Function TTela_Zip_Logos.TrataNomeArquivo(cNomeArquivo:String):String;
var cDir, cFile, cExt :String;
    i: integer;
Const LetrasPermitida =  [  'a'..'z', 'A'..'Z', '0'..'9', ' ', '-', '_',
                            'á','é','í','ó','ú','à','è','ì','ò','ù','â','ê','î','ô','û','ä',
                            'ë','ï','ö','ü','ã','õ','ñ','ç','Á','É','Í','Ó','Ú','À','È','Ì',
                            'Ò','Ù','Â','Ê','Î','Ô','Û','Ä','Ë','Ï','Ö','Ü','Ã','Õ','Ñ','Ç'  ];
begin
    cDir  := ExtractFilePath(cNomeArquivo);
    cFile := ExtractFileName(cNomeArquivo);
    cExt  := ExtractFileExt(cNomeArquivo);

    cFile := StringReplace(cFile,cExt,'',[rfReplaceAll]);

    result := '';
    cNomeArquivo := '';

    for i := 1 to Length( cFile ) do
    begin
        if ( cFile[i] in LetrasPermitida ) then
        begin
            result := result + cFile[i];
        end;
    end;

    result := cDir  + result + cExt;
end;

procedure TTela_Zip_Logos.PreviewFormCreateEvent(Sender: TObject);
begin
 	Relatorio.PreviewForm.WindowState := wsMaximized;
 	TppViewer(Relatorio.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TTela_Zip_Logos.RelatorioAfterPrint(Sender: TObject);
begin
    //spbPreviewCancel.Enabled := False;
end;

procedure TTela_Zip_Logos.spbPreviewPrintClick(Sender: TObject);
begin
    bImprimir.Click;
end;

procedure TTela_Zip_Logos.bFiltrarClick(Sender: TObject);
var cDir, sNomeArq : String;
    i, nNumImg : Integer;
begin
    Mostra_Texto('Aguarde ... Filtrando Dados ...');

    if ppViewer1.Busy then
       ppViewer1.Cancel;

    if TagEmExecucao in [1,2,3,4] then
    begin
        if TagEmExecucao <> 1 then   //exceto visualizar
            ppViewer1.Report := nil; //pra continuar mostrando quando enviar por email, exporta

        // Limpa o relatório
        Relatorio.Reset;
    end;

    Tb_Bloco.Close;
    Tb_Bloco.Open;

    cDir := ExtractFilePath(paramstr(0))+'Recurso\LogoCliente\';

    JvFileListBox1.Directory := cDir;
    JvFileListBox1.Mask :=  '*.*';
    JvFileListBox1.Update;

    ppImage00.Picture.LoadFromFile('\\192.168.0.5\Clientes\Insight\Arquivos\Logo\LOGO 02.png');

    for i := 0 to JvFileListBox1.Items.Count - 1 do
    begin
          sNomeArq := IncludeTrailingPathDelimiter(JvFileListBox1.Directory)
                      + JvFileListBox1.Items[I];

          var imgName := IfThen(I+1 < 10, 'ppImage0' + IntToStr(I+1),
                                         'ppImage'  + IntToStr(I+1));

          var c := FindComponent(imgName);
          if (c <> nil) and (c is TppImage) then
            TppImage(c).Picture.LoadFromFile(sNomeArq);
    end;
end;

procedure TTela_Zip_Logos.btVoltarClick(Sender: TObject);
begin
    close;
end;

procedure TTela_Zip_Logos.bPreviewNextClick(Sender: TObject);
begin
    ppViewer1.NextPage;
end;

procedure TTela_Zip_Logos.bPreviewLastClick(Sender: TObject);
begin
    ppViewer1.lastPage;
end;

procedure TTela_Zip_Logos.bPreviewWholeClick(Sender: TObject);
begin
    ppViewer1.ZoomSetting := zsWholePage;
    mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;

procedure TTela_Zip_Logos.bPreviewWidthClick(Sender: TObject);
begin
    ppViewer1.ZoomSetting := zsPageWidth;
    mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;

procedure TTela_Zip_Logos.bPreview100PercentClick(Sender: TObject);
begin
    ppViewer1.ZoomSetting := zs100Percent;
    mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;

procedure TTela_Zip_Logos.bPreviewFirstClick(Sender: TObject);
begin
    ppViewer1.FirstPage;
end;

procedure TTela_Zip_Logos.bPreviewPriorClick(Sender: TObject);
begin
    ppViewer1.PriorPage;
end;

end.

