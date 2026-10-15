object Tela_Zip_Logos: TTela_Zip_Logos
  Left = 0
  Top = 192
  Caption = 'Impress'#227'o dos logos de todos os clientes da Ace4'
  ClientHeight = 565
  ClientWidth = 891
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 30
    Width = 891
    Height = 465
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 887
    ExplicitHeight = 464
    object PageControl: TcxPageControl
      Left = 0
      Top = 0
      Width = 887
      Height = 461
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = TabFiltros
      Properties.CustomButtons.Buttons = <>
      Properties.ShowFrame = True
      Properties.TabPosition = tpBottom
      OnChange = PageControlChange
      ExplicitWidth = 883
      ExplicitHeight = 460
      ClientRectBottom = 437
      ClientRectLeft = 1
      ClientRectRight = 886
      ClientRectTop = 1
      object TabFiltros: TcxTabSheet
        Caption = 'Filtros   '
        ImageIndex = 63
        object ScrollBox3: TScrollBox
          Left = 0
          Top = 0
          Width = 885
          Height = 436
          Align = alClient
          TabOrder = 0
          ExplicitTop = -1
          object JvFileListBox1: TJvFileListBox
            Left = 0
            Top = 0
            Width = 321
            Height = 432
            Align = alLeft
            ItemHeight = 13
            Mask = '*.jpg*'
            TabOrder = 0
            ForceFileExtensions = False
          end
        end
      end
      object TabVisualiza: TcxTabSheet
        Caption = 'Visualizar   '
        ImageIndex = 3
        ExplicitWidth = 881
        ExplicitHeight = 435
        object ppViewer1: TppViewer
          Left = 0
          Top = 0
          Width = 885
          Height = 436
          Align = alClient
          BevelOuter = bvNone
          DeadSpace = 30
          PageColor = clWindow
          PageBorder.mmPadding = 0
          ZoomPercentage = 100
          ZoomSetting = zs100Percent
          OnPageChange = ppViewer1PageChange
          OnStatusChange = ppViewer1StatusChange
          ExplicitWidth = 881
          ExplicitHeight = 435
        end
      end
    end
  end
  object mskPreviewPercentage: TcxMaskEdit
    Left = 309
    Top = -50
    Hint = 'Zoom'
    TabStop = False
    ParentFont = False
    ParentShowHint = False
    Properties.AutoSelect = False
    Properties.IgnoreMaskBlank = True
    Properties.EditMask = '999\ % '
    Properties.MaxLength = 0
    ShowHint = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -13
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Text = '    % '
    OnExit = mskPreviewPercentageExit
    OnKeyPress = mskPreviewPercentageKeyPress
    Width = 52
  end
  object mskPreviewPage: TcxMaskEdit
    Left = 475
    Top = -50
    Hint = 'P'#225'gina atual'
    TabStop = False
    ParentFont = False
    ParentShowHint = False
    Properties.AutoSelect = False
    Properties.EditMask = '99999;0; '
    Properties.MaxLength = 0
    ShowHint = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -13
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Text = '     '
    OnExit = mskPreviewPageExit
    OnKeyPress = mskPreviewPageKeyPress
    Width = 36
  end
  object Status_Rel: TdxStatusBar
    Left = 0
    Top = 495
    Width = 891
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taRightJustify
        Width = 500
      end>
    PaintStyle = stpsUseLookAndFeel
    SizeGrip = False
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'UserSkin'
    DragMode = dmAutomatic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitTop = 494
    ExplicitWidth = 887
  end
  object pnBarra: TcxGroupBox
    Left = 0
    Top = 515
    Align = alBottom
    PanelStyle.Active = True
    TabOrder = 8
    ExplicitTop = 514
    ExplicitWidth = 887
    Height = 50
    Width = 891
    object btVoltar: TcxButton
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 40
      Height = 40
      Hint = 'Voltar'
      Align = alLeft
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000F744558745469746C65004261636B3B507265763D5C97
        C9000001D149444154785EC597314BC3401886CD543A8A164AC02D5B36473757
        69972252747052EA22E417A43897CCFE05FF8190FC03A9B5820842219B838B20
        589436E75B7987E34873C98572C3B37CDCF77E6FC877DFDD6D0921ACF21FE8DE
        DC97C1057D108104A4604E52C622AE714BE89536E08321980251922973FC3A06
        1C3000638A66200621E8000F3489C758C8351973C6D470AA1A68831110E40EF4
        CAF6C06A2D73041951536F800B6F9938030168546DAE550E08A821A8D9D61970
        A42F9F80E3BA5DBED2A096A0B6536460207DB952BCB68919B507EB0CF852C305
        1AC12EF8513AFF0DEC15E4045263FA79068652C335340DA6167F05AEAE27A4C6
        1CAA065CEEDD0CF40A444EC0AF52FC05B42BEC8E8CB55CD9409F627141F22958
        E40C9C56C57E8899DB970D440C866B92CE738A3F821D83860C991FC90612063B
        39091760A9147F00DB863BA2438D44369032E8298BAFA4B16A8CA2E9319ECA06
        E60C36A585D79AE2A6069A8CCF75062EC172B306F4BFE00C2C36FB0BF44DC8C1
        A3DF01E64DA8DF8647E05B3131A9BB0DAB0EA243F0956362D77410998CE203F0
        A99878022D93516C7A18ED830FAD09FD61647E1C73EDBB62E219B40C8E639B17
        12FB5732FB9752FBD772FB0F13FB4F33FB8F53ABFC01674AD68A299802850000
        000049454E44AE426082}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btVoltarClick
    end
  end
  object Relatorio: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 7000
    PrinterSetup.mmMarginRight = 7000
    PrinterSetup.mmMarginTop = 7000
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AfterPrint = RelatorioAfterPrint
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Body.Strings = (
      '')
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.CacheImages = False
    PDFSettings.CompressionLevel = clNone
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 1
    PDFSettings.PDFAFormat = pafNone
    PDFSettings.ScaleImages = False
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 228
    Top = 176
    Version = '22.04'
    mmColumnWidth = 283000
    DataPipelineName = 'ppDBPipeline1'
    object Cabec: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 177536
      mmPrintPosition = 0
      object ppImage00: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image00'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 57944
        mmLeft = 93663
        mmTop = 59531
        mmWidth = 91811
        BandType = 0
        LayerName = Foreground
      end
      object ppImage01: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image01'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 0
        mmTop = 0
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage02: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image02'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 31379
        mmTop = 0
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage03: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image03'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 62606
        mmTop = 0
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage04: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image04'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 93663
        mmTop = 0
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage05: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image05'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 124738
        mmTop = 0
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage06: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image06'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 156027
        mmTop = 0
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage07: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image07'
        AlignHorizontal = ahLeft
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 187325
        mmTop = 0
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage08: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image08'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 218469
        mmTop = 0
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage09: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image09'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 249683
        mmTop = 0
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage10: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image10'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 0
        mmTop = 14725
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage11: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image11'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 31379
        mmTop = 14725
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage12: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image12'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 62606
        mmTop = 14725
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage13: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image13'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 93663
        mmTop = 14725
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage14: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image14'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 124738
        mmTop = 14725
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage15: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image15'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 156027
        mmTop = 14725
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage16: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image16'
        AlignHorizontal = ahLeft
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 187325
        mmTop = 14725
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage17: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image17'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 218469
        mmTop = 14725
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage18: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image18'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 249683
        mmTop = 14725
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage19: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image19'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 0
        mmTop = 29773
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage20: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image20'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 31379
        mmTop = 29773
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage21: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image21'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13000
        mmLeft = 62606
        mmTop = 29773
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppImage22: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image22'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 93663
        mmTop = 29773
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage23: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image23'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 124738
        mmTop = 29773
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage24: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image24'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 156027
        mmTop = 29773
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage25: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image25'
        AlignHorizontal = ahLeft
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 187325
        mmTop = 29773
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage26: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image26'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 218469
        mmTop = 29773
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage27: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image27'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 249683
        mmTop = 29773
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage28: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image28'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 0
        mmTop = 44982
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage29: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image29'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 31379
        mmTop = 44982
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage30: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image30'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 62606
        mmTop = 44982
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage31: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image31'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 93663
        mmTop = 44982
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage32: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image32'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 124738
        mmTop = 44982
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage33: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image33'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 156027
        mmTop = 44982
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage34: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image34'
        AlignHorizontal = ahLeft
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 187325
        mmTop = 44982
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage35: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image35'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 218469
        mmTop = 44982
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage36: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image36'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 249683
        mmTop = 44982
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage37: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image37'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 0
        mmTop = 59531
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage38: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image38'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 31379
        mmTop = 59531
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage39: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image39'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 62606
        mmTop = 59531
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppImage40: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image40'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 187256
        mmTop = 59531
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage41: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image41'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 218212
        mmTop = 59531
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage42: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image42'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 249698
        mmTop = 59531
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage43: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image43'
        AlignHorizontal = ahLeft
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 0
        mmTop = 74083
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage44: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image44'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 31485
        mmTop = 74083
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage45: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image45'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 62442
        mmTop = 74083
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage46: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image46'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 187061
        mmTop = 74083
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage47: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image47'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 218546
        mmTop = 74083
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage48: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image48'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 249767
        mmTop = 74083
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage49: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image49'
        AlignHorizontal = ahLeft
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 0
        mmTop = 88636
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage50: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image50'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 31750
        mmTop = 88636
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage51: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image51'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 62706
        mmTop = 88636
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage52: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image52'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 187061
        mmTop = 88636
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage53: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image53'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 218546
        mmTop = 88636
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage54: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image54'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 249767
        mmTop = 88636
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage55: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image55'
        AlignHorizontal = ahLeft
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 0
        mmTop = 104511
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage56: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image56'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 31750
        mmTop = 104511
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage57: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image57'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 62706
        mmTop = 104511
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage58: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image58'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 187061
        mmTop = 104511
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage59: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image59'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 218546
        mmTop = 104511
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage60: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image60'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 249767
        mmTop = 104511
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage61: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image61'
        AlignHorizontal = ahLeft
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 0
        mmTop = 119063
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage62: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image62'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 31750
        mmTop = 119063
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage63: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image63'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 62706
        mmTop = 119063
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage64: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image64'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 93663
        mmTop = 119063
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage65: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image65'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 124884
        mmTop = 119063
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage66: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image66'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 156104
        mmTop = 119063
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage67: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image67'
        AlignHorizontal = ahLeft
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 187061
        mmTop = 119063
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage68: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image68'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 218811
        mmTop = 119063
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage69: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image69'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 250032
        mmTop = 119063
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage70: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image70'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 0
        mmTop = 133754
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage71: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image71'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 31485
        mmTop = 133754
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage72: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image72'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 62442
        mmTop = 133754
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage73: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image73'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 93663
        mmTop = 133754
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage74: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image74'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 124619
        mmTop = 133754
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage75: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image75'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 156104
        mmTop = 133754
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage76: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image76'
        AlignHorizontal = ahLeft
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 186796
        mmTop = 133754
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage77: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image77'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 218546
        mmTop = 133754
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage78: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image78'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 249767
        mmTop = 133754
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage79: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image79'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 0
        mmTop = 148570
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage80: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image80'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 31485
        mmTop = 148570
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage81: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image81'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 62442
        mmTop = 148570
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage82: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image82'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 93663
        mmTop = 148570
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage83: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image83'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 124619
        mmTop = 148570
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage84: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image84'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 156104
        mmTop = 148570
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage85: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image85'
        AlignHorizontal = ahLeft
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 186796
        mmTop = 148570
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage86: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image86'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 218546
        mmTop = 148570
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage87: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image87'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 249767
        mmTop = 148570
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage88: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image88'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 0
        mmTop = 162650
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage89: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image801'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 31485
        mmTop = 162650
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage90: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image90'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 62442
        mmTop = 162650
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage91: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image91'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 93663
        mmTop = 162650
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage92: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image802'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 124619
        mmTop = 162650
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage93: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image93'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 156104
        mmTop = 162650
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage94: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image94'
        AlignHorizontal = ahLeft
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 186796
        mmTop = 162650
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage95: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image95'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 218546
        mmTop = 162650
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppImage96: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image96'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12965
        mmLeft = 249767
        mmTop = 162650
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
    end
    object Detalhe: TppDetailBand
      Visible = False
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object Rodap: TppFooterBand
      Visible = False
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 224
    Top = 232
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'Texto'
      FieldName = 'Texto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
  end
  object Barra_Superior: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = Img_Tela
    ImageOptions.StretchGlyphs = False
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'UserSkin'
    NotDocking = [dsNone, dsLeft, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsOffice11
    SunkenBorder = True
    UseSystemFont = True
    Left = 760
    Top = 48
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      30
      0)
    object ToolBar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Principal'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 656
      FloatTop = 8
      FloatClientWidth = 108
      FloatClientHeight = 66
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bFiltra_Tela'
        end
        item
          Visible = True
          ItemName = 'bVisualizar'
        end
        item
          Visible = True
          ItemName = 'bImprimir'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object ToolBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Especial'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 816
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 656
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bFiltrar'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object ToolBar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 312
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 827
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bPreviewZoom'
        end
        item
          Visible = True
          ItemName = 'bPreviewWhole'
        end
        item
          Visible = True
          ItemName = 'bPreviewWidth'
        end
        item
          Visible = True
          ItemName = 'bPreview100Percent'
        end
        item
          Visible = True
          ItemName = 'bPreviewFirst'
        end
        item
          Visible = True
          ItemName = 'bPreviewPrior'
        end
        item
          Visible = True
          ItemName = 'bPriviewPage'
        end
        item
          Visible = True
          ItemName = 'bPreviewNext'
        end
        item
          Visible = True
          ItemName = 'bPreviewLast'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object bExporRel: TdxBarButton
      Caption = 'Exportar'
      Category = 0
      Hint = 'Exportar'
      Visible = ivAlways
      ImageIndex = 3
    end
    object bEnviarEmail: TdxBarButton
      Caption = 'E-mail'
      Category = 0
      Hint = 'Enviar e-mail'
      Visible = ivAlways
      ImageIndex = 6
    end
    object bDados: TdxBarButton
      Caption = 'Dados'
      Category = 0
      Hint = 'Dados'
      Visible = ivAlways
      ImageIndex = 4
    end
    object bDadosDinamico: TdxBarButton
      Caption = 'Tabela Din'#226'mica'
      Category = 0
      Hint = 'Tabela Din'#226'mica'
      Visible = ivAlways
      ImageIndex = 5
    end
    object bPreviewWhole: TdxBarButton
      Caption = 'P'#225'gina Inteira'
      Category = 0
      Hint = 'P'#225'gina Inteira'
      Visible = ivAlways
      ImageIndex = 11
      OnClick = bPreviewWholeClick
    end
    object bPreviewWidth: TdxBarButton
      Caption = 'Largura da P'#225'gina'
      Category = 0
      Hint = 'Largura da P'#225'gina'
      Visible = ivAlways
      ImageIndex = 12
      OnClick = bPreviewWidthClick
    end
    object bPreview100Percent: TdxBarButton
      Caption = 'Largura do Texto'
      Category = 0
      Hint = 'Largura do Texto'
      Visible = ivAlways
      ImageIndex = 13
      OnClick = bPreview100PercentClick
    end
    object bPreviewFirst: TdxBarButton
      Caption = 'Primeira p'#225'gina'
      Category = 0
      Hint = 'Primeira p'#225'gina'
      Visible = ivAlways
      ImageIndex = 14
      OnClick = bPreviewFirstClick
    end
    object bPreviewPrior: TdxBarButton
      Caption = 'P'#225'gina anterior'
      Category = 0
      Hint = 'P'#225'gina anterior'
      Visible = ivAlways
      ImageIndex = 15
      OnClick = bPreviewPriorClick
    end
    object bPreviewNext: TdxBarButton
      Caption = 'Pr'#243'xima p'#225'gina'
      Category = 0
      Hint = 'Pr'#243'xima p'#225'gina'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = bPreviewNextClick
    end
    object bPreviewLast: TdxBarButton
      Caption = #218'ltima p'#225'gina'
      Category = 0
      Hint = #218'ltima p'#225'gina'
      Visible = ivAlways
      ImageIndex = 17
      OnClick = bPreviewLastClick
    end
    object bConfigurar: TdxBarButton
      Caption = 'Configurar'
      Category = 0
      Hint = 'Configurar'
      Visible = ivNever
      ImageIndex = 9
    end
    object bFiltrar: TdxBarButton
      Caption = 'Filtrar'
      Category = 0
      Hint = 'Filtrar'
      Visible = ivNever
      ImageIndex = 8
      OnClick = bFiltrarClick
    end
    object bSair: TdxBarButton
      Caption = '&Fechar'
      Category = 0
      Hint = 'Fechar          Ctrl +F'
      Visible = ivAlways
      ImageIndex = 0
    end
    object bPreviewZoom: TdxBarControlContainerItem
      Caption = 'Zoom'
      Category = 0
      Hint = 'Zoom'
      Visible = ivAlways
      Control = mskPreviewPercentage
    end
    object bPriviewPage: TdxBarControlContainerItem
      Caption = 'P'#225'gina Atual'
      Category = 0
      Hint = 'P'#225'gina Atual'
      Visible = ivAlways
      Control = mskPreviewPage
    end
    object bFiltra_Tela: TdxBarButton
      Caption = 'Filtros'
      Category = 0
      Hint = 'Filtros'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = bFiltra_TelaClick
    end
    object bVisualizar: TdxBarButton
      Caption = 'Visualizar'
      Category = 0
      Hint = 'Visualizar'
      Visible = ivAlways
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
      OnClick = bVisualizarClick
    end
    object bImprimir: TdxBarButton
      Caption = 'Im&primir'
      Category = 0
      Hint = 'Imprimir          Ctrl + P'
      Visible = ivAlways
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
      OnClick = bImprimirClick
    end
    object bOpcoes: TdxBarSubItem
      Caption = 'Op'#231#245'es'
      Category = 0
      Hint = 'Op'#231#245'es          Ctrl + O'
      Visible = ivAlways
      ImageIndex = 2
      ShowCaption = False
      ItemLinks = <>
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'M'#225'scaras'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'MASK_QTDE'
        end
        item
          Visible = True
          ItemName = 'MASK_VLTOTAL'
        end
        item
          Visible = True
          ItemName = 'MASK_VLUNIT'
        end
        item
          Visible = True
          ItemName = 'MASK_PERCENT'
        end>
    end
    object MASK_QTDE: TdxBarEdit
      Caption = 'Quantidade:    '
      Category = 0
      Hint = 'Quantidade:    '
      Visible = ivAlways
    end
    object MASK_VLUNIT: TdxBarEdit
      Caption = 'Valor Unit'#225'rio: '
      Category = 0
      Hint = 'Valor Unit'#225'rio: '
      Visible = ivAlways
    end
    object MASK_VLTOTAL: TdxBarEdit
      Caption = 'Valor Total:     '
      Category = 0
      Hint = 'Valor Total:     '
      Visible = ivAlways
    end
    object MASK_PERCENT: TdxBarEdit
      Caption = 'Porcentagem: '
      Category = 0
      Hint = 'Porcentagem: '
      Visible = ivAlways
    end
    object cbo_Zebrado: TdxBarCombo
      Caption = 'Imprimir Zebrado'
      Category = 0
      Hint = 'Imprimir Zebrado'
      Visible = ivAlways
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ItemIndex = 1
    end
    object ImprimeTela1: TdxBarButton
      Caption = 'Imprimir Tela'
      Category = 0
      Hint = 'Imprimir Tela'
      Visible = ivAlways
      ImageIndex = 1
    end
    object EnviaTela1: TdxBarButton
      Caption = 'Enviar informa'#231#245'es ao Suporte'
      Category = 0
      Hint = 'Enviar informa'#231#245'es ao Suporte'
      Visible = ivAlways
      ImageIndex = 6
    end
  end
  object Img_Tela: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 3146560
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000000000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFF
          FFFF0528B5FF0D2EB8FF1132B8FF1132B7FF0F32BBFF0E32B9FF092FBEFF032D
          C1FF002AC1FF0027BFFF0024C1FF001DB6FFFFFFFFFFFFFFFFFFFFFFFFFF0731
          D6FF163DDBFF2247DCFF274BDCFF264BDDFF244BDDFF214BDEFF1B49E2FF1345
          E3FF0B40E3FF033BE3FF0033E3FF002AD9FF001DB5FFFFFFFFFFFFFFFFFF103A
          E1FF244AE4FF2F54E6FF3D5FE8FF7B92F0FFE5EBFFFFFFFFFFFFFFFFFFFFDEE7
          FFFF6D90F5FF0945ECFF003CEBFF0032E3FF0023BFFFFFFFFFFFFFFFFFFF1942
          E2FF3155E6FF3C5EE7FFA1B2F6FFFFFFFFFFBBC9FAFF6E8DF1FF6B8DF3FFBACB
          FCFFFFFFFFFF96B1FAFF0442ECFF0037E4FF0026C2FFFFFFFFFFFFFFFFFF244B
          E4FF3B5CE7FF899DF1FFFFFFFFFF8096F1FF3F64E9FF3961EAFF2F5EEBFF2458
          ECFF6E92F5FFFFFFFFFF678BF4FF053CE4FF012BC2FFFFFFFFFFFFFFFFFF2D52
          E5FF4563E8FFEEF3FFFFBBC7F9FF4869E9FF4366E9FFFFFFFFFFFFFFFFFF2557
          EBFF1B50EBFFB6C8FCFFDDE6FFFF0F42E3FF0831C3FFFFFFFFFFFFFFFFFF385A
          E7FF4D6BEAFFFFFFFFFF7E93F0FF4A69E9FF4263E8FFFFFFFFFFFFFFFFFF2452
          E9FF1A4CE9FF6084F1FFFFFFFFFF1646E2FF0F35C1FFFFFFFFFFFFFFFFFF3E5F
          E8FF5571EBFFFFFFFFFF7E93F0FF4A68E9FF4262E8FFFFFFFFFFFFFFFFFF244F
          E7FF1B4AE7FF5F80EFFFFFFFFFFF1C48E1FF1438C0FFFFFFFFFFFFFFFFFF4968
          E9FF5E7AEBFFF3F5FFFFB7C3F9FF4B68E9FF4260E7FFFFFFFFFFFFFFFFFF244C
          E5FF1D48E5FFB0C0F9FFE3E9FFFF224ADEFF183AC0FFFFFFFFFFFFFFFFFF4D6B
          EAFF6882EDFF95A8F5FFFFFFFFFF7D91F0FF4662E8FF3B5CE7FF3356E6FF284E
          E5FF6883EEFFFFFFFFFF6E87EFFF254BDEFF1A3BBFFFFFFFFFFFFFFFFFFF5975
          EBFF778FEFFF6C86EEFFA5B5F6FFFFFFFFFFB1BEF8FF6C83EDFF6780ECFFB0BE
          F8FFFFFFFFFF93A7F4FF284DE4FF274CDDFF1A3BBEFFFFFFFFFFFFFFFFFF6782
          EDFF8BA0F3FF7D95F0FF6B85EEFF95A7F4FFF1F4FFFFFFFFFFFFFFFFFFFFECF0
          FFFF869CF1FF3A5DE7FF3357E6FF284DDEFF1537BCFFFFFFFFFFFFFFFFFF738C
          EFFF9CAEF5FF8A9FF3FF758EEFFF6C86EEFF6680ECFF607BECFF5D79ECFF5874
          EBFF506FEAFF4868E9FF3A5DE7FF274CDDFF1032BAFFFFFFFFFFFFFFFFFFFFFF
          FFFF728BEFFF627EEDFF5672EBFF4E6CEAFF4968E9FF4464E9FF4564E8FF3F60
          E8FF385BE6FF3458E6FF294EE5FF1A40DAFFFFFFFFFFFFFFFFFF00000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000CD8E4DFDD19253FFD19153FFD19153FFD19153FFD19151FFD091
          51FFD09151FFD19253FFCD8C4DFD000000000000000000000000303030993C3C
          3CD2424242FFCD8F4EFFFFFFFFFFFFFFFCFFFFFFFAFFFFFFF8FFFFFDF4FFFFF9
          EEFFFFF7EAFFFFFFFFFFCD8D4EFF010101FF000000D10000007A585858FDA5A5
          A5FFB7B7B7FF767676FFAFABA9FFCBC5C1FFCBC5C1FFCBC5C1FFCBC5C1FFCBC5
          C1FFCBC5C1FFADA9A6FF0B0B0BFFB7B7B7FF969696FF000000FF606060FFB7B7
          B7FFB7B7B7FF8F8F8FFF767676FF767676FF6C6C6CFF5E5E5EFF4E4E4EFF3B3B
          3BFF282828FF272727FF5E5E5EFFB7B7B7FFB7B7B7FF030303FF676767FFBEBE
          BEFFBEBEBEFF858585FFDEDEDEFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBC
          BCFFBCBCBCFFDCDCDCFF787878FFBEBEBEFFBEBEBEFF090909FF6D6D6DFFE1E1
          E1FFE1E1E1FF919191FFE3E3E3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFE1E1E1FF868686FFE1E1E1FFE1E1E1FF232323FF727272FFFFFF
          FFFFFFFFFFFFAAAAAAFFEBEBEBFFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2
          D2FFD2D2D2FFEBEBEBFFA0A0A0FFFFFFFFFFFFFFFFFF4E4E4EFF737373F9FFFF
          FFFFFFFFFFFFD2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFF606060FE616161D2DBDB
          DBFFF7F7F7FF717171FF717171FF717171FF717171FF717171FF717171FF7171
          71FF717171FF717171FF717171FFF7F7F7FFCACACAFF373737DC202020459595
          95FFD4D4D4FFCD8236FFFFFFFDFFFFF7E3FFFFF7E1FFFFF3DCFFFFF2DAFFFFED
          CDFFFFE9C8FFFFFFFDFFCD7B31FFC8C8C8FF656565FF0C0C0C45000000002E2E
          2E63707070F3CB8033FFFFFFFFFFFFF5E1FFFFF5DFFFFFF4DBFFFFEED4FFFFE8
          C7FFFFE5C1FFFFFFFFFFCA782EFF414141F31717176300000000000000000000
          000004040409C67D31F9FFFFFFFFFFF4DCFFFFF5DCFFFFF0D5FFFFEDCFFFFFE0
          BEFFFFDEB7FFFFFFFFFFC3742BF9030303090000000000000000000000000000
          000000000000C67C30F7FFFFFFFFFFF0D7FFFFF2D7FFFFEED1FFFFE9CAFFFFF8
          EBFFFFFFFCFFFFFFF8FFC4702AFB000000000000000000000000000000000000
          000000000000C57B31F6FFFFFFFFFFF0D5FFFFF0D5FFFFEDCFFFFFE8C7FFFFFF
          FFFFFFF4D5FFEFB879FF7F4619A6000000000000000000000000000000000000
          000000000000C67A2FFAFFFFFCFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFCFFFFF4
          E1FFEFB371FFDD854DF605020107000000000000000000000000000000000000
          0000000000004B2B0F60985F27BBCE8237FECF8337FFC98135F7C97F35F7CA7F
          33FE753C11940000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000000000000B34E
          0FD5D65608FFD04D00FF8F3100AF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B05620CCE68A
          53FFF7B995FFF7B590FFE1793AFF8F3300AF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000E07637FFFCC2
          A1FFF2A97CFFF1A377FFF7BA95FFE47D3DFF8F3500AF00000000000000000000
          0000000000000000000000000000000000000000000000000000E38247FFFCC8
          A7FFF4B188FFEE9E6EFFF1A67AFFF7BA96FFE47D3FFF8E3601AC000000000000
          000000000000000000000000000000000000000000000000000084502E92F1A1
          71FFFDC8A9FFF5B28BFFEFA171FFF1A77CFFF7BC98FFE48045FF8E3803AC0000
          0000000000000000000000000000000000000000000000000000000000008450
          3192F1A377FFFDCAACFFF5B48BFFEFA374FFF2AB7FFFF9BF99FFE48247FF8F39
          05AA000000000000000000000000000000000000000000000000000000000000
          000085513392F1A779FFFDCBAEFFF5B58EFFF4B188FFFAC2A1FFE68A53FFA64C
          15C9000000000000000000000000000000000000000000000000000000000000
          00000000000085543592F1A77DFFFFCDAFFFFDCBACFFEB9964FFD27C4AFF5B5B
          5BF70C0C0C230000000000000000000000000000000000000000000000000000
          0000000000000000000085543792F2AB7DFFF1A677FFDB9264FFD2D2D2FFA4A4
          A4FF606060FE5C5C5CFB585858FB484848D62424247000000000000000000000
          000000000000000000000000000087573992B4734CCF6C6C6CFBC0C0C0FFC8C8
          C8FFC0C0C0FFBFBFBFFFBABABAFFB5B5B5FF555555F525252570000000000000
          00000000000000000000000000000000000000000000202020486F6F6FFED5D5
          D5FFC2C2C2FFAFAFAFFFACACACFFB9B9B9FFBCBCBCFF4B4B4BD6000000000000
          0000000000000000000000000000000000000000000000000000737373FCE3E3
          E3FFBDBDBDFF4F4F4FC14E4E4EC3969696FFD9D9D9FF5C5C5CFB000000000000
          0000000000000000000000000000000000000000000000000000757575FBEEEE
          EEFFCDCDCDFF545454C200000000676767FF646464FF5F5F5FFB000000000000
          0000000000000000000000000000000000000000000000000000686868D6EBEB
          EBFFF2F2F2FFABABABFF6F6F6FFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000383838707777
          77F5EEEEEEFFFDFDFDFF747474FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003838
          3870696969D67A7A7AFB777777FB000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000006633
          0000663300006633000066330000663300006633000066330000663300006633
          0000663300006633000066330000663300006633000000000000000000006633
          0000FFFFFF0066330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006633000000000000000000006633
          00006633000066330000FFFFFF006633000066330000FFFFFF00663300006633
          0000FFFFFF006633000066330000FFFFFF006633000000000000000000006633
          0000FFFFFF0066330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006633000000000000000000006633
          00006633000066330000FFFFFF006633000066330000FFFFFF00663300006633
          0000FFFFFF006633000066330000FFFFFF006633000000000000000000006633
          0000FFFFFF0066330000FFFFFF00FFFFFF00FFFFFF00FFFFCF00FCF82600FEFC
          6A00FFFFF900FFFFFF00FFFFFF00FFFFFF006633000000000000000000006633
          00006633000066330000FFFFFF006633000066330000FCF82400DCB90000E9D5
          0000FCF84E006C3B000066330000FFFFFF009673000000000000000000006633
          0000FFFFFF0066330000FFFFFF00FFFFF100FDFA3000E9D20700CC990000CE9D
          0000E9D20800F9F43000FFFFD500FFFFAF00F0E9000024240000000000006633
          00006633000066330000FFFFFF0071410000CCB80000EEDE1300D1A30000CC99
          0000CC990000DEBD0000E6DA0000FAF52000EAD6000054540000000000006633
          0000FFFFFF0066330000FFFFFF00FFFFFF00FFFFF000FDFC7C00F3E82300D5AB
          0000CC990000CC990000D5AB0000D9B20000E3C700007F7E0000000000006633
          000066330000663300006633000066330000663300006633000094710000F9F7
          0000DBBA0000CC990000CC990000CC990000DBB70000A9A30000000000006633
          00009191910066330000FFFFFF00FFFFFF0066330000FFFFFF00FFFFFF007243
          0000FCF82F00DAB60000CC990000CC990000D3A60000C9C40000000000006633
          000066330000663300006633000066330000663300006633000066330000BAA2
          0000EFE30000D8B10000D5AB0000D7AF0000DAB60000DBD60000000000000000
          000000000000000000000000000000000000000000000000000000000000DEDC
          0000CBC60000BAB60000B8B30000B3AE0000AAA600009E990000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF00008001000080010000800100008001000080010000800100008001
          0000800000008000000080000000800000008000000080000000FF800000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
          00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00000000000000000000
          00FF800000FF000000FFFFFFFFFF000000FF000000FFFFFFFFFF000000FF0000
          00FFFFFFFFFF000000FF000000FFFFFFFFFF000000FF00000000000000000000
          00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00000000000000000000
          00FF800000FF000000FFFFFFFFFF000000FF000000FFFFFFFFFF000000FF0000
          00FFFFFFFFFF000000FF000000FFFFFFFFFF000000FF00000000000000000000
          00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00000000000000000000
          00FF800000FF000000FFFFFFFFFF000000FF000000FFFFFFFFFF000000FF0000
          00FFFFFFFFFF000000FF000000FFFFFFFFFF000000FF00000000000000000000
          00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00000000000000000000
          00FF800000FF000000FFFFFFFFFF000000FF000000FFFFFFFFFF000000FF0000
          00FFFFFFFFFF000000FF000000FFFFFFFFFF000000FF00000000000000000000
          00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00000000000000000000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
          00FFC0C0C0FF800000FFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFF8000
          00FFFFFFFFFFFFFFFFFF800000FFFFFFFFFF000000FF00000000000000000000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF00008001000080010000800100008001000080010000800100008001
          0000800100008001000080010000800100008001000080010000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000006633
          0000663300006633000066330000663300006633000066330000663300006633
          0000663300006633000066330000663300006633000000000000000000006633
          0000FFFFFF0066330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006633000000000000000000006633
          00006633000066330000FFFFFF006633000066330000FFFFFF00663300006633
          0000FFFFFF006633000066330000FFFFFF006633000000000000000000006633
          0000FFFFFF0066330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006633000000000000000000006633
          0000663300002C70000087CF8700376200003C5D0000A3DAA300465300005A3F
          0000FFFFFF006633000066330000FFFFFF006633000000000000000000006633
          0000FFFFFF001389000006AD060000B4000000B4000000B200001CB51C00069C
          0600EFF9EF00FFFFFF00FFFFFF00FFFFFF006633000000000000000000006633
          000066330000534600002EB32E0000C1000000CC000000CC000000BF00001489
          0000FFFFFF006633000066330000FFFFFF006633000000000000000000006633
          0000EDF8ED001F7E00000FAC0F0000C7000000CC000000CC000007B0070094D4
          9400FFFFFF00FFFFFF00FFFFFF00FFFFFF006633000000000000000000004C4D
          00000696000000B7000000CC000000CC000000CC000000CB0000089800005B3E
          0000FFFFFF006633000066330000FFFFFF00663300000000000000560000089D
          000000C3000000CC000000CB000000BB000017A9170000B7000028AE2800FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0066330000000000000099000000C6
          000000CC000000CA000005A60000168600003A5F000006980000346700006633
          00006633000066330000663300006633000066330000000000000064000004AF
          000000C30000079A000071C87100FFFFFF006633000070C67000CFECCF006633
          0000FFFFFF00FFFFFF0066330000FFFFFF00663300000000000000120000118A
          00000C9300004653000064350000663300006633000066330000663300006633
          0000663300006633000066330000663300006633000000000000000000000028
          0000002200000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF00008001000080010000800100008001000080010000800100008001
          00008001000080010000000100000001000000010000000100009FFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000006A3D20BFA55D
          2EEFB76E37FABB753BFBBE793FFBBF7C41FBBF7E44FBC08046FBC08448FBC084
          49FBC0854AFBC0854AFBBF844BFAB57D46F4986638E16A3D20BF8E512BDEF6F1
          ECFDF4EBE3FEFBF5F0FFFBF7F1FFFBF7F3FFFBF8F4FFFCF9F5FFFCF9F5FFFCF9
          F6FFFCF9F7FFFCFAF7FFFCFAF7FFF5EFEAFDE3D2C6F7946639DDBD6F3CFEFCF9
          F5FFECD0BCFFF9E4D6FFFEECDFFFFEEBDFFFFEEBDEFFFEEBDBFFFEEBDCFFFEEA
          DDFFFDEADBFFFDE8D8FFF8E0CDFFEACBB3FFF3EBE3FFC68A50FEC27646FFFDFB
          F8FFF9E3D2FFECCFB9FFF8E1D0FFFDE7D6FFF4D5BDFFE9BFA0FFE9BFA2FFF4D3
          BDFFFDE6D4FFF7DEC9FFEBCAB0FFF8DBC4FFF8F2ECFFC98C50FFC57D50FFFDFB
          F9FFFDE9D8FFF9E1D0FFEBCAB3FFECC5A7FFE3B698FFF7E7DDFFF7E8DEFFE3B6
          97FFECC3A4FFEAC5A9FFF8DAC2FFFCDFC6FFF8F3EDFFC88D50FFC9865BFFFDFB
          F9FFFDE8D7FFFDE6D4FFEDC6ABFFDCAA89FFF9ECE3FFFFFBF9FFFFFCFAFFF9EE
          E6FFDCA887FFEDBF9CFFFCDBC0FFFCDBC0FFF8F3EDFFC88C50FFCC8E66FFFDFB
          F9FFFDE5D3FFF1CCB2FFE3B596FFF9EAE0FFFFF9F5FFFEF3EAFFFEF4EDFFFFFB
          F9FFF9EDE5FFE3B08DFFF0C19EFFFCD7B7FFF8F3EDFFC88C50FFD09670FFFDFB
          F9FFF1CDB1FFE3B596FFF9E9DEFFFEF7F1FFFDEDE1FFFEEFE4FFFEF1E7FFFEF3
          EAFFFFFAF7FFF9ECE3FFE2AE8AFFF0BC95FFF8F4ECFFC88C50FFD29C7BFEFBF6
          F2FFE3B496FFF9E8DCFFFEF5EEFFFDE9DAFFFDEADCFFFDECDEFFFDEDE1FFFEEF
          E4FFFEF1E7FFFFFAF6FFF9EAE0FFE2AA85FFF1E4D9FFC78B50FEB9947DDCFCF9
          F7FEFCF5F1FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCFAFFFFFCFAFFFFFC
          FAFFFFFCFBFFFFFDFBFFFFFDFCFFFBF6F3FFF6EDE8FD93663ADB96735DBFC89A
          7CF0CD956EFBCA8E63FDCA8D61FDC98D5FFDC88B5CFDC78A5AFDC68957FDC587
          55FDC48552FDC3834FFDC2804CFCBB7F4BF79E6C40E36A3D20BF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000000000000314B
          62FFAC7D7EFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005084B2FF0F6F
          E1FF325F8CFFB87E7AFF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000032A0FEFF37A1
          FFFF106FE2FF325F8BFFB67D79FF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000037A4
          FEFF379FFFFF0E6DDEFF355F89FFBB7F79FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000037A4FEFF359EFFFF0F6FDEFF35608BFFA67B7FFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000038A5FEFF329DFFFF156DCEFF444F5BFF180E0E306A4340C18756
          53EF8A5755FE855452EF3A222272180E0E300000000000000000000000000000
          000000000000000000003BABFFFFA1CAE7FF5238348B875752EFBD9D8BFFEBE1
          C2FFFCFBDAFFE9DCBAFFB18B80FF835351EF2616164A00000000000000000000
          0000000000000000000000000000180E0E308E5D55EFEDD39FFFFFFFCCFFFFFF
          CFFFFFFFD0FFFFFFDEFFFFFFFAFFD7C0BFFF81504FEF180E0E30000000000000
          00000000000000000000000000003A2222729F7368FFFAD192FFFEF4C2FFFFFF
          D0FFFFFFDAFFFFFFF6FFFFFFFCFFFFFFFCFFA3786FFF3A222272000000000000
          0000000000000000000000000000875752EFEAC28BFFEDB478FFFBEEBBFFFFFF
          D3FFFFFFDCFFFFFFF4FFFFFFF4FFFFFFE2FFD8C5AAFF835352EF000000000000
          00000000000000000000000000008B5854FEFCDA98FFE9A167FFF4D199FFFEFC
          CCFFFFFFD5FFFFFFDAFFFFFFDCFFFFFFD7FFEDE2C2FF895554FE000000000000
          0000000000000000000000000000855452EFE7C796FFF0B778FFEEBA7BFFF6DD
          A6FFFEFBCCFFFFFFD3FFFFFFD1FFFFFFD7FFCBB198FF835250EF000000000000
          00000000000000000000000000003A222272B28B78FFFFFEDDFFF4D1A5FFEEBA
          7BFFF2C78FFFF8E1ABFFFCF0BAFFFCFACAFF976763FF3A222272000000000000
          0000000000000000000000000000180E0E30835351EFD4C1C0FFFFFEEEFFF7CC
          8CFFF0B473FFF7C788FFFCE3A5FFBA9580FF855451EF180E0E30000000000000
          0000000000000000000000000000000000002616164A81504FEFA57970FFD9C0
          96FFE7D39DFFD1AD8BFF986760FF855451EF2616164A00000000000000000000
          00000000000000000000000000000000000000000000180E0E303A2222728554
          51EF895653FE835250EF3A222272180E0E300000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000AB6B54FFBE5E47FFBE5E47FFA363
          47FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000A35F42FFFFB497FFFFB497FF9955
          38FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000A0583DFFFFE6CAFFFFDABEFFAC65
          4AFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000A45F4DFFFFB1A0FFFFA494FFB36D
          5CFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000884E40FFFFE5D6FFFFE5D6FF7F45
          37FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000007D594BFFFFE4D1FFD9BCA9FFDDBEABFFF2D5
          C3FF7A5647FF0000000000000000000000000000000000000000000000000000
          00000000000000000000985F5FFFFFEEDBFFFDE0CEFFFBE4D1FFFBE4D1FFF2D5
          C3FFECC5B6FF7F4F45FF00000000000000000000000000000000000000000000
          0000000000009D554FFFFFE0D3FFFFFFFEFFFFE0D3FFFFD1C6FFFFDCCAFFF8C6
          BAFFF7CFC4FFFBCAC0FF99514CFF000000000000000000000000000000000000
          0000925C40FFFFEEDBFFFFFFF6FFFFCCB7FFFFDCCAFFFFDCCAFFFFD0C1FFFFDC
          CAFFF7BFABFFFFCFBCFFFFCFBCFF91533DFF0000000000000000000000007966
          2FFFFFF9C9FFFFFFD8FFFFE6C3FFFFD5B0FFFFE6C3FFFFEFCAFFFFF5D3FFFFD5
          B0FFFFE6C3FFFFD5B0FFFFC69BFFFFE5B5FF79662FFF00000000000000006F51
          29FF976240FFA36347FFA86A53FF9B674FFF8F664FFF714D38FF6A4631FF976D
          57FF834E37FFA3664EFFAB6B54FF844F2DFF6F5129FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000013744558745469746C6500436865636B427574746F6E73
          3B8852EE91000001AE49444154785E75523B4E0331101D3B8988C459E869200D
          3D6C2810EC2E1F81448738028740B4900DA1CA878A8E0624DA1C068192F8C7CC
          D8DE4D36623FF67866DE9BE7B10500341E06D377D968741C38A08726E7C88ECB
          6A20B756F3CFDB8BED3DCC5934D12B4188CEF5D1D61AA05A099EE3EABE3FDDA1
          C2B42602618CE5E042D912E7960C7AFD2760A325416BCE97910010CF405B81EA
          44BC2E06AF70759E60BEF1CE4A818AFB0E807A0F04839F8A315C9E2551815822
          F069D6BA08887170985BBC4C103C823C4D7C13B55925D0CA2028281082E758BF
          4FE0DE0832049F669E40A94A81E4E685265AF4F59E279CE4504DD11FC32382D3
          937D066BF419FCB5A929B05A936EDA020286343349AF18428A95F3F4106CD923
          24A8375185E3B318CC8E0F9804C84EBB58B90B1CB550E668ED6A3D3086F2F938
          3304904C076C73136D751CACC48426D62E92637662CA0988715ED21BAA03DB12
          4CED184119EB9379103E31425C9C6559C4981A81D5BE079B6D5C86AAD68900E4
          F27C42645AB2ADE55024D0B3F9CFC7CDDDDB6EBCF31417C241F9843E88A0663E
          FBFEA2D38F32485B1BFF56B04B79FFD82E807F9D73E60F8705474B406D9F9D00
          00000049454E44AE426082}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000521800A9A451
          16FF9F4C13FF9C4810FF97430BFF944008FF8C3803FF893500FF883300FF8330
          00FF812C00FF7E2A00FF7B2700FF7B2400FF521800A900000000AC571CFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B2500FF00000000AF5A1FFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFDFFFFFF
          FDFFFFFFFAFFFFFFFAFFFDFDF8FFFFFFFFFF7D2700FF00000000B25F21FFFFFF
          FFFFFFFFFDFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFBFFFEFEFAFFFEFEFAFFFEFE
          FAFFFEFEFAFFFDFDF5FFFBFBF3FFFFFFFFFF802A00FF00000000BA6727FFFFFF
          FFFFFFFFFDFFFFFFFDFFFFFFFDFFFEFEFBFFFEFEFBFFFEFEFAFFFEFEF6FFFBFB
          F8FFFBFAF5FFFBFAF3FFFBF6F0FFFFFFFFFF863200FF00000000BE6A2AFFFFFF
          FFFFFFFFFDFFFEFEFBFFFEFEFDFFFEFEFBFFFEFEF8FFFDFDF6FFFBF8F5FFFBF8
          F2FFFBF6F0FFFBF5EDFFFBF2EDFFFFFFFFFF893500FF00000000C06D2CFFFFFF
          FFFFFEFEFDFFFEFEFBFFFEFEFAFFFDFDF8FFFDFBF5FFFBF8F2FFFBF6F0FFFBF5
          EFFFFBF2EDFFFAEFE8FFF6EDE4FFFFFFFFFF8E3803FF00000000C57030FFFFFF
          FFFFFEFEFAFFFDFDFAFFFDFBF8FFFBFAF3FFFBF6F2FFFBF5F0FFFBF3ECFFF6F0
          E7FFF5EDE2FFF5EAE1FFF3E4DDFFFFFFFFFF913D06FF00000000C67230FFFFFF
          FFFFFDFBF8FFFDFBF6FFFBF8F5FFFBF5F0FFFAF5EDFFF8F2EAFFF5EFE5FFF3E8
          E1FFF2E2DCFFEFE1D7FFEDDCCEFFFFFFFFFF964309FF00000000C97332FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A460EFF00000000CB7833FFCB78
          33FFCB7833FFCB7833FFCB7833FFCB7833FFCB7833FFCB7833FFCB7833FFCB78
          33FFCB7833FFCB7833FFCB7833FFCB7833FF9F4C13FF00000000CA7F42FDDD94
          57FFDD9457FFDD9457FFDD9457FFDD9457FFDD9457FFDD9457FFDD9457FFDD94
          57FFDD9457FFDD9457FFDD9457FFDD9457FFA05321FD00000000340F006BC382
          4DF4CB7833FFCB7732FFC87332FFC57030FFC06D2CFFBE6A2AFFBB6827FFB664
          25FFB56222FFB05E21FFAD5A1CFF9E6030F4340F006B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000FF0000
          00FF000000FF808000FF808080FF808000FF808080FF808000FF808080FF8080
          00FF808080FF808000FF808080FF808000FF808080FF808000FF000000FF0000
          00FF000000FF808080FF808000FF808080FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF808000FF808080FF000000FF0000
          00FF000000FF808000FF808080FF808000FF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF808080FF808000FF000000FF0000
          00FF000000FF808080FF808000FF808080FF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF808000FF808080FF000000FF0000
          00FF000000FF808000FF808080FF808000FF000000FFFFFFFFFF000000FF0000
          00FFFFFFFFFF000000FFFFFFFFFF000000FF808080FF808000FF000000FF0000
          00FF000000FF808080FF808000FF808080FF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF808000FF808080FF000000FF0000
          00FF000000FF808000FF808080FF808000FF000000FFFFFFFFFF000000FF0000
          00FFFFFFFFFF000000FFFFFFFFFF000000FF808080FF808000FF000000FF0000
          00FF000000FF808080FF808000FF808080FF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF808000FF808080FF000000FF0000
          00FF000000FF808000FF808080FF808000FF000000FFFFFFFFFF000000FF0000
          00FFFFFFFFFF000000FFFFFFFFFF000000FF808080FF808000FF000000FF0000
          00FF000000FF808080FF808000FF808080FF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF808000FF808080FF000000FF0000
          00FF000000FF808000FF808080FF808000FF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF808080FF808000FF000000FF0000
          00FF000000FF808080FF808000FF808080FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF808000FF808080FF000000FF0000
          00FF000000FF808000FF808080FF808000FF808080FF808000FF808080FF8080
          00FF808080FF808000FF808080FF808000FF808080FF808000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000008080000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          0000000000008080800000000000FFFFFF000000000000000000000000000000
          000000000000FFFFFF000000000000000000FFFFFF0000000000000000000000
          0000000000008080000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          0000000000008080800000000000FFFFFF000000000000000000000000000000
          000000000000FFFFFF000000000000000000FFFFFF0000000000000000000000
          0000000000008080000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          0000000000008080800000000000FFFFFF000000000000000000000000000000
          000000000000FFFFFF000000000000000000FFFFFF0000000000000000000000
          0000000000008080000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          0000000000008080800000000000FFFFFF000000000000000000000000000000
          000000000000FFFFFF000000000000000000FFFFFF0000000000000000000000
          0000000000008080000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          0000000000008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          0000000000008080000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008080800080800000808080008080000080808000808000008080
          8000808000008080800080800000808080008080000080808000000000000000
          0000000000008080000080808000808000008080800080800000808080008080
          0000808080008080000080808000808000008080800080800000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C0000000C0000000C0000000C0000000C0000000C0000000C0000000C000
          0000C0000000C0000000C0000000C0000000C0000000C0000000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000808000008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          000000000000808080008080000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          000000000000808000008080800000000000FFFFFF00FFFFFF00000000000000
          000000000000FFFFFF0000000000000000000000000000000000000000000000
          000000000000808080008080000000000000FFFFFF00FFFFFF00000000000000
          000000000000FFFFFF0000000000000000000000000000000000000000000000
          000000000000808000008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          000000000000808080008080000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          000000000000808000008080800000000000FFFFFF00FFFFFF00000000000000
          000000000000FFFFFF0000000000000000000000000000000000000000000000
          000000000000808080008080000000000000FFFFFF00FFFFFF00000000000000
          000000000000FFFFFF0000000000000000000000000000000000000000000000
          000000000000808000008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          000000000000808080008080000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          0000000000008080000080808000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008080800080800000808080008080000080808000808000008080
          8000808000008080800080800000808080008080000080808000000000000000
          0000000000008080000080808000808000008080800080800000808080008080
          0000808080008080000080808000808000008080800080800000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C0000000C0000000C0000000C0000000C0000000C0000000C0000000C000
          0000C0000000C0000000C0000000C0000000C0000000C0000000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008080800080808000000000000000000000000000000000000000
          0000808080000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008080
          8000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000808080000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080808000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080808000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000808080000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008080
          8000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008080800080808000000000000000000000000000000000000000
          0000808080000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000E7DF0000E7DF0000E79F0000E71F0000E61F
          0000E61F0000E71F0000E79F0000E7DF0000E7DF0000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008080
          8000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000808080000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080808000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008080800000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008080800000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080808000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000808080000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008080
          8000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFBF0000FF3F0000FE3F0000FC3F0000FC3F
          0000FC3F0000FC3F0000FE3F0000FF3F0000FFBF0000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008080800000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080808000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000808080000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008080
          8000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008080
          8000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000808080000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080808000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008080800000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000FCFF0000FC7F0000FC3F
          0000FC3F0000FC7F0000FCFF0000FDFF0000FFFF0000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000080808000000000000000000000000000000000000000
          0000808080008080800000000000000000000000000000000000000000000000
          0000000000000000000000000000808080000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008080800000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080808000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080808000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008080800000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000808080000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000080808000000000000000000000000000000000000000
          0000808080008080800000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000F7CF0000F3CF0000F3CF0000F1CF0000F0CF
          0000F0CF0000F1CF0000F3CF0000F3CF0000F7CF0000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000757878FF676767FF676767FF676767FF676767FF676767FF676767FF6767
          67FF676767FF676767FF666666FF757878FF0000000000000000000000000000
          0000676767FFC7C7C7FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
          D4FFD4D4D4FFD4D4D4FFC7C7C7FF676767FF0000000000000000000000000000
          0000676767FFDADADAFFFFFFFFFFFFFFFFFFDADADAFFFFFFFFFFFFFFFFFFDADA
          DAFFFFFFFFFFFFFFFFFFDADADAFF676767FF0000000000000000000000000000
          0000676767FFDFDFDFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFDFDF
          DFFFFFFFFFFFFFFFFFFFDFDFDFFF676767FF0000000000000000000000000000
          0000676767FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
          E4FFE4E4E4FFE4E4E4FFE4E4E4FF676767FF0000000000000000000000000000
          0000686868FFEAEAEAFFFFFFFFFFFFFFFFFFEAEAEAFFFFFFFFFFFFFFFFFFEAEA
          EAFF7575FFFF7575FFFFEAEAEAFF686868FF0000000000000000000000000000
          0000686868FFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEF
          EFFF7575FFFF7575FFFFEFEFEFFF686868FF0000000000000000000000000000
          0000686868FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FF686868FF0000000000000000000000000000
          0000686868FFCC6600FFCC6600FFCC6600FFCC6600FFCC6600FFCC6600FFCC66
          00FFCC6600FFCC6600FFCC6600FF686868FF0000000000000000000000000000
          0000686868FFCC6600FFCC6600FFCC6600FFCC6600FFCC6600FFCC6600FFCC66
          00FFCC6600FFCC6600FFCC6600FF686868FF0000000000000000000000000000
          00007C8080FF666666FF676767FF676767FF676767FF676767FF676767FF6767
          67FF676767FF676767FF676767FF7C8080FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000788282FF676767FF676767FF676767FF676767FF676767FF676767FF6767
          67FF676767FF676767FF676767FF788282FF0000000000000000000000000000
          0000676767FFC6C6C6FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
          D4FFD4D4D4FFD4D4D4FFC5C5C5FF676767FF0000000000000000000000000000
          0000676767FFDADADAFF996600FF996600FFDADADAFF996600FF996600FFDADA
          DAFF996600FF996600FFDADADAFF676767FF0000000000000000000000000000
          0000676767FFDFDFDFFF996600FF996600FFDFDFDFFF996600FF996600FFDFDF
          DFFF996600FF996600FFDFDFDFFF676767FF0000000000000000000000000000
          0000676767FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
          E4FFE4E4E4FFE4E4E4FFE4E4E4FF676767FF0000000000000000000000000000
          0000676767FFEAEAEAFF996600FF996600FFEAEAEAFF996600FF996600FFEAEA
          EAFF4646FFFF4646FFFFEAEAEAFF676767FF0000000000000000000000000000
          0000676767FFEFEFEFFF996600FF996600FFEFEFEFFF996600FF996600FFEFEF
          EFFF4646FFFF4646FFFFEFEFEFFF676767FF0000000000000000000000000000
          0000676767FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FF676767FF0000000000000000000000000000
          0000676767FFFAFAFAFF676767FF676767FF676767FF676767FF676767FF6767
          67FF676767FF676767FFFAFAFAFF676767FF0000000000000000000000000000
          0000676767FFFFFFFFFF676767FF676767FF676767FF676767FF676767FF6767
          67FF676767FF676767FFFFFFFFFF676767FF0000000000000000000000000000
          0000676767FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEBEBEBFF676767FF0000000000000000000000000000
          0000838D8DFF676767FF676767FF676767FF676767FF676767FF676767FF6767
          67FF676767FF676767FF676767FF828C8CFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000008080000080
          8000008080002222220022222200222222002222220022222200222222002222
          2200222222002222220000808000008080000080800000808000008080000080
          80000080800022222200FFFFFF00808080008080800080808000808080008080
          8000808080002222220000808000008080000080800000808000008080000080
          80000080800022222200FFFFFF0022222200BFBFBF0022222200BFBFBF002222
          2200808080002222220000808000008080000080800000808000008080000080
          80000080800022222200FFFFFF0022222200BFBFBF0022222200808080002222
          2200808080002222220000808000008080000080800000808000008080000080
          80000080800022222200FFFFFF0022222200BFBFBF0022222200BFBFBF002222
          2200808080002222220000808000008080000080800000808000008080000080
          80000080800022222200FFFFFF0022222200BFBFBF0022222200808080002222
          2200808080002222220000808000008080000080800000808000008080000080
          80000080800022222200FFFFFF0022222200BFBFBF0022222200BFBFBF002222
          2200808080002222220000808000008080000080800000808000008080000080
          80000080800022222200FFFFFF0022222200BFBFBF0022222200808080002222
          2200808080002222220000808000008080000080800000808000008080000080
          80000080800022222200FFFFFF0022222200BFBFBF0022222200BFBFBF002222
          2200808080002222220000808000008080000080800000808000008080000080
          80000080800022222200FFFFFF0022222200BFBFBF0022222200808080002222
          2200808080002222220000808000008080000080800000808000008080000080
          8000008080002222220080808000222222008080800022222200808080002222
          2200808080002222220000808000008080000080800000808000008080000080
          8000222222002222220022222200222222002222220022222200222222002222
          2200222222002222220022222200008080000080800000808000008080000080
          800022222200FFFFFF00BFBFBF00BFBFBF00BFBFBF0080808000808080008080
          8000808080008080800022222200008080000080800000808000008080000080
          8000222222002222220022222200222222002222220022222200222222002222
          2200222222002222220022222200008080000080800000808000008080000080
          8000008080000080800000808000222222008080800080808000808080002222
          2200008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000222222002222220022222200222222002222
          2200008080000080800000808000008080000080800000808000}
        MaskColor = clOlive
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000006A320D8F853E
          10B5AF5215EEBA5717FFB75717FFB65516FFB35416FFB15314FFAE5214FFAC50
          13FFA94F13FFA84E13FFA74D12FFA44D12FE9B4911F1803C0EC4A54D14DEFBCC
          ADFFF9CBADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9570FFCE936CFF994811EDBC5A19FEFDD1
          B5FFED9F6DFFFFFFFFFF4FC57FFF4FC57FFF4FC57FFF4FC57FFF4FC57FFF4FC5
          7FFF4FC57FFF4FC57FFFFFFFFFFFD18553FFD09670FFA44D12FEBF5C1BFFFED4
          B8FFEE9F6DFFFFFFFFFFC4E8C7FFC4E8C7FFC4E8C7FFC4E8C7FFC4E8C7FFC4E8
          C7FFC4E8C7FFC4E8C7FFFFFFFFFFD58957FFD49A76FFA74E13FFBF5A1BFFFFD6
          BBFFEE9F6CFFFFFFFFFF4FC57FFF4FC57FFF4FC57FFF4FC57FFF4FC57FFF4FC5
          7FFF4FC57FFF4FC57FFFFFFFFFFFD88C59FFD6A07AFFA94E13FFBD5918FFFFD9
          BFFFEF9F6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDD905DFFDBA581FFAA4F13FFBF5918FFFFDB
          C2FFEFA06DFFEFA06DFFEEA06DFFEFA06EFFEEA06EFFED9E6BFFEA9B69FFE99B
          68FFE89966FFE49663FFE39462FFE09461FFDFAA86FFAD5014FFBF5918FFFFDF
          C7FFF1A06DFFF1A06DFFEFA06EFFEFA06EFFEFA26EFFEE9F6CFFED9E6BFFEA9D
          69FFEA9A67FFE89966FFE59664FFE49664FFE5B18FFFB05214FFBF5918FFFFE3
          CBFFF1A26EFFF1A06DFFF1A26DFFEFA26EFFEFA06EFFEEA06EFFEE9F6CFFEC9D
          69FFEA9B68FFE99A66FFE79863FFE89966FFE9B795FFB25316FFBF5A18FFFFE4
          CEFFF4A471FFCF8452FFD08553FFD08655FFD38B5CFFD38B5DFFD18958FFCF84
          53FFCF8452FFCF8452FFCF8452FFE59866FFEEBD9BFFB55416FFBE5A18FEFFE8
          D0FFF6A571FFFFFCEEFFFFFCEEFFFFFDF1FFFFFFFEFFFFFFFFFFFFFFFFFFFFFD
          F3FFFFF6E7FFFFF3E4FFFFF3E3FFEA9D69FFF2C2A2FFB65516FFBC5818FAFFE9
          D4FFF6A772FFFFFFF7FFFFFFF7FFD08554FFFFFFF8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF8ECFFFFF6E7FFFFF3E4FFED9F6BFFF6C7A8FFB85717FFB55517F0FFEC
          D9FFF7A772FFFFFFFFFFFFFFFFFFCF8452FFFFFFF8FFFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFF7FFFFF7E9FFFFF4E7FFEEA06DFFFFDFC9FFB95817FEA34C14D8FFEC
          DAFFF8A975FFFFFFFFFFFFFFFFFFCF8452FFFFFFFEFFFFFFF9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFCEFFFFFF6E7FFFED9BDFFFCD9C1FFBA5E21F875370F9BFFED
          DAFFFFEDDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFDFFFFFF
          FFFFFFFFFFFFFFFFFBFFFEF7EBFEF8D6BEFBC17644EC4722096355280B716C33
          0E909A4813CCB35416EEBC5818FABE5A18FEBF5A18FFBF5918FFBF5918FFC05C
          1CFFC15E1EFFBF5D1DFFB35419EF984D1BCB3D1D085400000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000E0D3F4102010808000000000000000000000000000000000000
          0000000000000101070804043C41000000000000000000000000000000000000
          0000111040414845FFFF3735F7FD020208080000000000000000000000000000
          0000010108081816ECFC2724F6FF05043C410000000000000000000000001413
          41415250FFFF5F5CFFFF524FFFFF3835F6FC0202080800000000000000000101
          0808211FEEFC3936FEFF4543FFFF2724F6FF05043C4100000000000000000E0D
          2B2B5652FFFF615EFFFF6E6DFFFF5350FFFF3936F7FC02020808020108082A28
          F2FC3F3DFFFF5F5EFFFF4340FFFF2422F5FF0403282B00000000000000000000
          00000E0E2B2B5653FFFF625FFFFF726EFFFF5552FFFF3A38F7FC3533F6FD4946
          FFFF6463FFFF4947FFFF2C2AF7FF0505282B0000000000000000000000000000
          0000000000000F0E2B2B5755FFFF6360FFFF726FFFFF716DFFFF6D6BFFFF6B69
          FFFF514FFFFF3634FAFF0706292B000000000000000000000000000000000000
          000000000000000000000F0E2B2B5856FFFF7774FFFF5350FFFF514EFFFF6F6D
          FFFF403EFDFF09082A2B00000000000000000000000000000000000000000000
          00000000000000000000030308085754FDFD7C77FFFF5956FFFF5652FFFF7472
          FFFF3E3BF9FD0202080800000000000000000000000000000000000000000000
          00000000000003030808615EFCFC6D6AFFFF7F7DFFFF7D7AFFFF7B77FFFF7775
          FFFF5957FFFF3E3BF8FC02020808000000000000000000000000000000000000
          0000030308086A67FCFC7572FFFF8681FFFF7471FFFF605EFFFF5B58FFFF6A67
          FFFF7A77FFFF5B58FFFF3F3CF8FC020208080000000000000000000000000404
          0808716DFDFD7C78FFFF8A87FFFF7B77FFFF6965FFFF10102B2B0F0F2B2B5C59
          FFFF6B69FFFF7C78FFFF5C5AFFFF413DFAFC0101050500000000000000000E0E
          1F1F7875FFFF807DFFFF807DFFFF726EFFFF12112B2B00000000000000000F0F
          2B2B5E5AFFFF6C6AFFFF7D7BFFFF5E5AFFFF1D1B6E6F00000202000000000000
          00000E0E1F1F7875FFFF7774FFFF13122B2B0000000000000000000000000000
          0000100F2B2B605CFFFF6764FFFF3331A8A80C0B292900000000000000000000
          0000000000000E0E1F1F14132B2B000000000000000000000000000000000000
          000000000000100F2B2B26256F6F14133E3E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004040A0A000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          530000011C6943435069636300002891636060327074717265126060C8CD2B29
          0A72775288888C52603FCFC0C6C0CC000689C9C5058E01013E20765E7E5E2A03
          06F8768D8111445FD6059985298F17702517149500E93F406C94925A9CCCC0C0
          6800646797971400C519E700D92249D960F60610BB2824C819C83E0264F3A543
          D85740EC2408FB09885D04F40490FD05A43E1DCC66E2009B0361CB80D825A915
          207B199CF30B2A8B32D3334A140C2D2D2D151C53F2935215822B8B4B52738B15
          3CF392F38B0AF28B124B5253806A21EE030341884250886900355A6892E86F82
          00140F10D6E74070F8328A9D418821407269511994C9C8644C988F30638E0403
          83FF520606963F0831935E0686053A0C0CFC5311626A860C0C02FA0C0CFBE600
          00C0C64FFDA0891045000000206348524D00007A26000080840000FA00000080
          E8000075300000EA6000003A98000017709CBA513C000001AA504C5445000000
          00FFFF079F09007300007B00007C0007970074A698009B00019F01009900009E
          00008000138925B8DBFF55AAAA73A69690A8BC00400000BC00009C0077A79771
          A594A6A8D9009D00007500009F00FFB3FF9DAAC70097009CAAC776A79682A8A6
          008A00A8ABD5009A00B8ABED74A59680A6A6001F00A4A9D776A79886A6AEFFFF
          FF008B0098A9C470A59265A1836B9B8B00FF007BA69D47975D7FA69A6BA5865A
          A37479A99100A00100A001099D0B049E04019F0100A00000A000059F06019F02
          01A00104A005004200099F0B019F01019F02079F0895A7BE009400009500039C
          0506A10BDEABFF1EA126039F04019F01079E09B1ABE10B9F0E009E00019F0110
          A01337A24813A019029F02009F01069E0897A9C039A348019D02019F01029F02
          D5ACFF1CA125019F01009F000CA00F56A46D48A45A2AA036059E06019F01019E
          01029F03029F0200A0000B9F0F35A345FFB8FF2AA136099F0B009F00019F0113
          9F1834A144FFBEFF1FA028069F08019F010E9F1242A255179F1E039F04019F01
          0BA00E59A571139E1907A00963A47FACA4E095ACB392ABAF79A991009F00019F
          01009E00FFFFFF53FAAAD80000008A74524E5300000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000035941137BBF6A937B6F2A20232BAF1940602363A14
          012FC8F3960908C97A060321CFFB8D080FCBFA870124D5FD86120438CAF28A22
          D0FD7B160247C6E9C0861D044AC0FB881E48C4F69715459C1601040C015A6617
          8600000001624B47442B24B9E408000000097048597300000EC400000EC40195
          2B0E1B0000000774494D4507E40C0F15372BFAC4368C000001627A5458745261
          772070726F66696C652074797065206963630000388D9D545B8E83300CFCCF29
          F6087E9B1C870622EDFD2FB00E24145654DDEE208A3476ECF1234DDFA5A4AF06
          3548D0400C822242A240B851B6D8EAE2A4242E44A093669D09C04B6DE678194E
          4886C6CE1E811414A40C83AD56E355F8036A646D8A70100BD37228FB10E943FF
          39F483934BD7D22B604A26A6CEB6D78BA36C7BB84787A01FC0DC0FA01885EDE0
          1F30F814ED9468680F547A2658CDCFFCF2E42FFEEBC1B740DB3C76439523B39F
          7882E9A9E8CCE3A134792B6D1A3503085B0DE9D9C9B2B985858091737B28661B
          ADA8519EC6427078713B6F8B730A638E31B7E3E4D07E0D37630F7DE9E101C44B
          C8D8B5D4968DA69E73A2FC6E6CAFF0E9F8FF1FE8B81A2754D6B6C46391112D2E
          DD9DE31D621135BA68BF688C7BBAF52FBD7378671F422EA5E582DBBE489DF7BB
          26B5DC29669996F69D81F63DAA596F4B2363EC69DB5F063CD65CD20F7743E7E1
          2E4CDB86000000D34944415418D3636040028C4080CC676266616543E2B37370
          5A585A21F1B9B8AD6D6CED18787878F9F81918040404B9ED1DBA1C9D18849C85
          B94444C5C425245D5CBBDCDC3D183CBDBC7DA444A4A57CFDFCBB020283641882
          43BA42C3B865C32322BBA2A263E4E41962E3BAE2134412939253BA53D3B814E4
          19D23332BBB2B27372F37AF20B1495E41918380A8B8ABB4A4ABBBBCBCA955580
          7C0655B58ACAAAAEAEEA9A5A750D76B08334B5B4EBEA1B1A9B7474F5A04ED437
          306C6E696D3392873BDAD8A4BD43DBD40CC95BE6E69DE6E650360085362E6CCF
          6DF0540000002574455874646174653A63726561746500323032302D31322D31
          355432313A35353A33342B30303A303031F614CE000000257445587464617465
          3A6D6F6469667900323032302D31322D31355432313A35353A33342B30303A30
          3040ABAC7200000037744558746963633A636F7079726967687400436F707972
          6967687420313939392041646F62652053797374656D7320496E636F72706F72
          61746564316CFF6D00000020744558746963633A6465736372697074696F6E00
          41646F62652052474220283139393829B0BAEAF60000000049454E44AE426082}
      end>
  end
  object Tb_Bloco: TMSQuery
    Connection = Tela_Zip_Menu.DBDes
    SQL.Strings = (
      'exec Sc_Zip_S_Script_Bloco')
    CachedUpdates = True
    Left = 253
    Top = 312
    object Tb_BlocoTexto: TMemoField
      FieldName = 'Texto'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object DataSource1: TDataSource
    DataSet = Tb_Bloco
    Left = 249
    Top = 359
  end
end
