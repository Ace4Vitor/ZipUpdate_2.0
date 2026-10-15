object Tela_Zip_Scrypts: TTela_Zip_Scrypts
  Left = 0
  Top = 52
  Caption = 'Gerador de Scripts'
  ClientHeight = 622
  ClientWidth = 851
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 851
    Height = 622
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = TabGeraScript
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 622
    ClientRectRight = 851
    ClientRectTop = 24
    object TabGeraScript: TcxTabSheet
      Caption = 'Gera Script'
      ImageIndex = 0
      object Panel3: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 0
        Height = 57
        Width = 851
        object lblObj1: TcxLabel
          Left = 5
          Top = 9
          AutoSize = False
          Caption = 'Gerar Script de'
          Properties.Alignment.Horz = taCenter
          TabOrder = 0
          Transparent = True
          Height = 17
          Width = 83
          AnchorX = 47
        end
        object lookObj1: TcxLookupComboBox
          Left = 5
          Top = 26
          Properties.DropDownRows = 15
          Properties.GridMode = True
          Properties.KeyFieldNames = 'Id_TpObjeto'
          Properties.ListColumns = <
            item
              FieldName = 'TpObjeto'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = Ds_Obj1
          Properties.OnCloseUp = lookObj1PropertiesCloseUp
          Properties.OnNewLookupDisplayText = lookObj1PropertiesNewLookupDisplayText
          TabOrder = 1
          Width = 180
        end
        object lookObj2: TcxLookupComboBox
          Left = 192
          Top = 26
          Properties.DropDownRows = 30
          Properties.KeyFieldNames = 'Id_TpObjetoFilho'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = Ds_Obj2
          Properties.OnChange = lookObj2PropertiesChange
          TabOrder = 2
          Width = 180
        end
        object lblPesquisa: TcxLabel
          Left = 378
          Top = 9
          AutoSize = False
          Caption = 'Pesquisar Objeto'
          Properties.Alignment.Horz = taLeftJustify
          TabOrder = 3
          Transparent = True
          Height = 17
          Width = 93
        end
        object edPesquisa: TcxTextEdit
          Left = 374
          Top = 26
          Properties.OnChange = edPesquisaPropertiesChange
          TabOrder = 4
          Width = 200
        end
        object btnGeraScript: TcxButton
          Left = 584
          Top = 22
          Width = 87
          Height = 25
          Caption = 'Gerar Script'
          LookAndFeel.Kind = lfUltraFlat
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000000D744558745469746C65005363726970743B2073956200
            0000BC49444154785EBD92BD0AC23014467DA73E87A39B8FE0E81348C0C95D04
            DF2320B8893FE0EC1F4E82D22EA28282839F26F071E9A53101C10B079A5BCEA1
            81D600788C31F8C24BEFE8950289130FEC4F57B487330AEED9EFE201111CFA9C
            1E68F52774D5EE1F81815D21307CC74875203FDFD1EC8DB5EB77B7C713BBE305
            F58E2559F215ECF240B9140906E69B029CC5B61049C88281E93A47A33BA2AFE5
            D815485CFE10FF9579672D3B4707A061402222EB8020414FD56713067EE20D2A
            CB1DDC8FDC74E20000000049454E44AE426082}
          TabOrder = 5
          OnClick = btnGeraScriptClick
        end
        object bLimpaListas: TcxButton
          Left = 677
          Top = 22
          Width = 88
          Height = 25
          Caption = 'Limpar Lista'
          LookAndFeel.Kind = lfUltraFlat
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000005A744558745469746C650044656C6574653B44656C6574
            654974656D3B52656D6F76653B52656D6F76654974656D3B44656C6574654C69
            73743B4C6973743B52656D6F76654C6973743B4974656D3B4C6973743B436C65
            61723B457261736558E2170B0000008149444154785EC591C10980300C45DD29
            2BB889E0243D771A17700B110437F028783012F08B15FC2DAD60E191F0695ED1
            54AA5AC4D538E794B09F55A8801D1378EF274872045636487204015CC0F95700
            D2054BDFE9D0D4BACE2322EB2D33DA9800172131822C26C0C01BC2055C223657
            2CF8F6131EA4FE448EAD0AAFDD32C11A0FE2412B8463972A170000000049454E
            44AE426082}
          TabOrder = 6
          OnClick = bLimpaListasClick
        end
      end
      object pnBarra: TcxGroupBox
        Left = 0
        Top = 548
        Align = alBottom
        PanelStyle.Active = True
        TabOrder = 1
        Height = 50
        Width = 851
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
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 57
        Align = alClient
        PanelStyle.Active = True
        TabOrder = 2
        Height = 491
        Width = 851
        object grid5: TcxGrid
          Left = 689
          Top = 2
          Width = 160
          Height = 487
          Align = alRight
          TabOrder = 0
          object gtvLista5: TcxGridDBTableView
            PopupMenu = PopupMenu5
            DataController.DataSource = Ds_Lista5
            Images = ImgGrid
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object gtvLista5NmObjeto: TcxGridDBColumn
              DataBinding.FieldName = 'NmObjeto'
            end
          end
          object grid5Level1: TcxGridLevel
            GridView = gtvLista5
          end
        end
        object grid2: TcxGrid
          Left = 209
          Top = 2
          Width = 160
          Height = 487
          Align = alRight
          TabOrder = 1
          object gtvLista2: TcxGridDBTableView
            OnCellDblClick = gtvLista2CellDblClick
            DataController.DataSource = Ds_Lista2
            Images = ImgGrid
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GridLines = glNone
            OptionsView.GroupByBox = False
            object gtvLista2TpOperacao: TcxGridDBColumn
              Caption = 'A'#231#227'o'
              DataBinding.FieldName = 'TpOperacao'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = ImgGrid
              Properties.Items = <
                item
                  Description = 'Inc.'
                  ImageIndex = 0
                  Value = 'I'
                end
                item
                  Description = 'Exc.'
                  ImageIndex = 0
                  Value = 'D'
                end>
              Options.Editing = False
              Options.AutoWidthSizable = False
              Width = 40
            end
            object gtvLista2NmObjeto: TcxGridDBColumn
              DataBinding.FieldName = 'NmObjeto'
            end
            object gtvLista2TpObjeto: TcxGridDBColumn
              DataBinding.FieldName = 'TpObjeto'
              Visible = False
            end
            object gtvLista2CampoChave1: TcxGridDBColumn
              DataBinding.FieldName = 'CampoChave1'
              Visible = False
            end
            object gtvLista2CampoChave2: TcxGridDBColumn
              DataBinding.FieldName = 'CampoChave2'
              Visible = False
            end
            object gtvLista2CampoChave3: TcxGridDBColumn
              DataBinding.FieldName = 'CampoChave3'
              Visible = False
            end
            object gtvLista2CampoChave4: TcxGridDBColumn
              DataBinding.FieldName = 'CampoChave4'
              Visible = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = gtvLista2
          end
        end
        object grid4: TcxGrid
          Left = 529
          Top = 2
          Width = 160
          Height = 487
          Align = alRight
          TabOrder = 2
          object gtvLista4: TcxGridDBTableView
            PopupMenu = PopupMenu4
            OnCellDblClick = gtvLista4CellDblClick
            DataController.DataSource = Ds_Lista4
            Images = ImgGrid
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object gtvLista4NmObjeto: TcxGridDBColumn
              DataBinding.FieldName = 'NmObjeto'
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = gtvLista4
          end
        end
        object grid1: TcxGrid
          Left = 2
          Top = 2
          Width = 207
          Height = 487
          Align = alClient
          TabOrder = 3
          object gtvLista1: TcxGridDBTableView
            PopupMenu = PopupMenu1
            OnCellDblClick = gtvLista1CellDblClick
            DataController.DataSource = Ds_Lista1
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = gtvLista1TpObjeto
              end>
            Images = ImgGrid
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GridLines = glNone
            OptionsView.GroupByBox = False
            Styles.OnGetContentStyle = gtvLista1StylesGetContentStyle
            object gtvLista1TpOperacao: TcxGridDBColumn
              Caption = 'A'#231#227'o'
              DataBinding.FieldName = 'TpOperacao'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = ImgGrid
              Properties.Items = <
                item
                  Description = 'Inc.'
                  ImageIndex = 0
                  Value = 'I'
                end
                item
                  Description = 'Exc.'
                  ImageIndex = 1
                  Value = 'D'
                end>
              Options.Editing = False
              Options.AutoWidthSizable = False
              Width = 40
            end
            object gtvLista1Lg_Us_Alt: TcxGridDBColumn
              DataBinding.FieldName = 'Lg_Us_Alt'
              Options.Editing = False
              Options.AutoWidthSizable = False
              Width = 90
            end
            object gtvLista1Lg_Dt_Alt: TcxGridDBColumn
              DataBinding.FieldName = 'Lg_Dt_Alt'
              Options.Editing = False
              Options.AutoWidthSizable = False
              Width = 115
            end
            object gtvLista1TpObjeto: TcxGridDBColumn
              DataBinding.FieldName = 'TpObjeto'
              Options.Editing = False
              Options.AutoWidthSizable = False
              Width = 65
            end
            object gtvLista1NmObjeto: TcxGridDBColumn
              DataBinding.FieldName = 'NmObjeto'
              Options.Editing = False
            end
            object gtvLista1CampoChave1: TcxGridDBColumn
              DataBinding.FieldName = 'CampoChave1'
              Visible = False
              Options.Editing = False
            end
            object gtvLista1CampoChave2: TcxGridDBColumn
              DataBinding.FieldName = 'CampoChave2'
              Visible = False
              Options.Editing = False
            end
            object gtvLista1CampoChave3: TcxGridDBColumn
              DataBinding.FieldName = 'CampoChave3'
              Visible = False
              Options.Editing = False
            end
            object gtvLista1CampoChave4: TcxGridDBColumn
              DataBinding.FieldName = 'CampoChave4'
              Visible = False
              Options.Editing = False
            end
            object gtvLista1Flag: TcxGridDBColumn
              DataBinding.FieldName = 'Flag'
              Visible = False
              Options.Editing = False
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = gtvLista1
          end
        end
        object Grid3: TcxGrid
          Left = 369
          Top = 2
          Width = 160
          Height = 487
          Align = alRight
          TabOrder = 4
          object gtvLista3: TcxGridDBTableView
            PopupMenu = PopupMenu3
            OnCellDblClick = gtvLista3CellDblClick
            DataController.DataSource = Ds_Lista3
            Images = ImgGrid
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GridLines = glNone
            OptionsView.GroupByBox = False
            object gtvLista3TpOperacao: TcxGridDBColumn
              Caption = 'A'#231#227'o'
              DataBinding.FieldName = 'TpOperacao'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = ImgGrid
              Properties.Items = <
                item
                  Description = 'Inc.'
                  ImageIndex = 0
                  Value = 'I'
                end
                item
                  Description = 'Exc.'
                  ImageIndex = 1
                  Value = 'D'
                end>
              Options.Editing = False
              Options.AutoWidthSizable = False
              Width = 45
            end
            object gtvLista3TpObjeto: TcxGridDBColumn
              DataBinding.FieldName = 'TpObjeto'
              Visible = False
            end
            object gtvLista3NmObjeto: TcxGridDBColumn
              DataBinding.FieldName = 'NmObjeto'
            end
            object gtvLista3CampoChave1: TcxGridDBColumn
              DataBinding.FieldName = 'CampoChave1'
              Visible = False
            end
            object gtvLista3CampoChave2: TcxGridDBColumn
              DataBinding.FieldName = 'CampoChave2'
              Visible = False
            end
            object gtvLista3CampoChave3: TcxGridDBColumn
              DataBinding.FieldName = 'CampoChave3'
              Visible = False
            end
            object gtvLista3CampoChave4: TcxGridDBColumn
              DataBinding.FieldName = 'CampoChave4'
              Visible = False
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = gtvLista3
          end
        end
      end
    end
    object TabVisualizaScript: TcxTabSheet
      Caption = 'Visualiza Script'
      ImageIndex = 1
      object mmoScript: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          '')
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ScrollBars = ssBoth
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Courier New'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 548
        Width = 851
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 548
        Align = alBottom
        PanelStyle.Active = True
        TabOrder = 1
        Height = 50
        Width = 851
        object cxButton1: TcxButton
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
          OnClick = cxButton1Click
        end
        object bExporta: TcxButton
          AlignWithMargins = True
          Left = 51
          Top = 5
          Width = 40
          Height = 40
          Hint = 'Salvar script'
          Align = alLeft
          LookAndFeel.Kind = lfUltraFlat
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F4000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
            00097048597300000EC400000EC401952B0E1B0000001F744558745469746C65
            004578706F72743B48746D6C3B4578706F7274546F48746D6C3B468AC4C40000
            06DF494441545847BD577B8C54E515FFCD7367777617961596DD611650AAC634
            2D214D51FB40D0E2335A5F511363883531A589899A5A209600897F94F8688AA5
            2A5A35BE35064850493129113482B60908C1A8D807B5B8ECEEC0EEBAAFB977EE
            F4F73BDFBDB3B3BBB3E05F3D3367CEF7BAE7FCBEF39D73BE3BB1320955147527
            CA5A546B2E168B211E8F9BFC363409401004D8B6EB08FE73A29F9334628365C4
            F829DB870F91ADA5AFD8066C25169EDF869FFC707E05C499808C03A0A600FCF1
            A5FDB8E78E8BC2D1DA542CFAF04A017CAF8451CFC7F0B08FEE9343E81F1846C9
            F770C9450B904824CE08221ECA0A0984DB27E073E7BE4F2304E5F965E322FB62
            DAB64D07F447401768EDEE7D47B19486473C60D79ECFF8ACEFF48DED71124D02
            6054720F94A9542DDA3750A6872C194FC4C12F92FC49CADD84325AA465D2D28B
            BF8362097867F711789E675E9D0A444D0F2C5E980FDB745DF49C0C471DB5CB81
            9D33BF8825643E86D1E1A24D2708EAB21F9F470FC4B0E3DD43A705115BBDE5E3
            F281A305535D0E1705546ECCBE64299441E0B3EDE224084A95750B17CCC2DA5B
            2FC4932FBF8F8DABAF834F0F6A9DE45BEF1E64A01571EDF2EF23954A4DCA90D8
            55ABFE52EE386F1115CAB094F36133164AB2499E3F7F0D0CBD6BEE9617B4F3DE
            CFDEC7B6B53760D3B37FC51FD6DFC4714B1CD35762B06C7DFBEFDC9D871BAFFE
            0192C9A4818828A99F2D2B5AAD23BA79F33134651AF0E73BC7C622D25C443BEF
            5D60FDAE537D3A0FA4EA1298D694C1DDAB5E36F0EE98B4B28C2B977D17078EF4
            5A502A33AAC90088AA9547543DF6C64A171713A9CC62213B0D993456DCF2237C
            3334C214F5988ACA1A6650A984A4B9FC6B7A43BE1B4F155FC8C054464E4BDCAD
            E2269D741E689F390D7366CF40AE6D3A72B3C992EDD3ED28B46E6220C6E527ED
            B49607BE0D5915A417B4C9742A81743A814C2685FA6C1A597263B6CE58D1522B
            0BE272E054BB8FC6A7F28CC6F7AEF99EF64062A90EA5A25CB541B5224ECFA408
            8C09541340EC8A0776965BE72FC4C088AA96F239AA5EC44CF70631220F52D8F5
            C05CF35277FF00D74859295CC72CF87C2F3EDCF40BAED5844D9A10296BEA5371
            6C786C27D6FCEAA7686A6AB24C8828F6E0331F95F77FDA4D633468469D2CD140
            94EF2E2DA339E57F580B38AE6A79E10539FC7EE5F21098532C24513BC36359F7
            C80EAC59B904CDCDCDE3017017954714A5434343F8DBE12E2C597C0E068698EB
            1C8F6E45DB97ADE656C3419FC12540911AF74B49802639D0589FC29E7D9F63D1
            05671980BABABAB18B6A2280C1C1413CBCE503ACBFEF72F41340C5269739958E
            F454C0F54FBFFA0EBEFCD7710CF5F6A033DF4197D363BC21BDC083CF0BC1E3CD
            E8F1B6F4598E4FB266641A9B71EE3973B0E137775A651CF3054958C4DA9533AA
            7BC95A63C46E34E211C0D17F7E85796D2D3874A20BF7DD73BB011349AAE9FA6E
            70C55DBFC6B967E771F8D3A35694AC34DB4C1545209CF150898D87AC0F1B76DE
            3CFF1215C913F29EE6BB4F0DA3AB3084AE9383948358BAF4E7B874D98D38DE3B
            68EF09FF3EF65FF74C7844350128F0C24E45986133AE3663205CA79DA8DA496A
            CE32872BA45FAC809B3E6316DA66646D8D0C475254DB03E1A47EA594FA8C9D71
            B10362E72D00BE24AF5C0EDA8B0AD93285EB52E90C52F519D32B2FC9F0941E30
            E3B65026C6FAB6236B4BB1266444EE7747200F28D84C0757CB0B5A2B7EEAB93F
            E1C5E71FB57689400322AC06302E0BF4E2D0D7D787871E7F0F0FAFBD1E858151
            7B30226B1A02E79D81817EACD9B0199D1DB3F0C9C14F4CB915300B62495733A2
            F70C712E3F0FDDDD3DD8FAD2EFD0DADA3AE68108872D0C8D6848EE94358DB9F3
            75183417E8C583BB11B775E4307B4EDEB8BDB313ED73E6A263EE7C1AA4EC9C87
            0E4A8D998ED29807C6A56144AA7C0E48D4A7359664E70209DE618452A2229FAE
            57DACABDAF6C59E7164C41D7DC722FDF2353955810D58C8128092C90649C542E
            DBC519B203A352AC00B4424330221D5BA15F3C8242DF087AD8EEA1EC257BA345
            679C806B025069D4EB92EABDCC4E6F4C611AB9394B296E4CB31D72431A0D7C0B
            0A14500A44C68F2802AD63B2A30ACF5F5E2C168B7604F2DCA420B44544A752FC
            C40B1FE0CB63276DB742E28476EDFE1DB98132FF01E5F0C22B6F229F6B474F6F
            2F16DDFE4B33A0FF0854154A675C5E3DF4FC46649B5B70E2EBAFB0FDB54791CF
            E7C76781502913464646303A3A6A80A2E9AA6515EAEAEAC2FDBF7D121DB91C7A
            588A7F76FF5AD6016754C63D198F98EBF73EB20AF50D8D3855E8C1F6D71F4327
            83751C0035C50222AE65B49A0A850256AFDB842FFE719C6F43494C5B7C9B33CE
            CB48E03D4AC588FA76BF1C7E9DFF2192C877B4E0894DEB3073E6CCF100223A93
            E18854525537746CD1998AAA9F9FA84B3196CD66D1D2D26297514D00FF3F02FE
            07D85E6CA889DFD30B0000000049454E44AE426082}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bExportaClick
        end
      end
    end
  end
  object SaveDialog: TSaveDialog
    Filter = 'Arquivo de Scrypt Sql (*.sql)|*.sql'
    Left = 424
    Top = 573
  end
  object Tb_Obj2: TMSQuery
    SQL.Strings = (
      'exec Sc_Zip_S_TpObjeto2'
      ':Id_TpObjeto')
    CachedUpdates = True
    Left = 62
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'Id_TpObjeto'
        ParamType = ptInput
        Value = nil
      end>
    object Tb_Obj2Id_TpObjetoFilho: TStringField
      FieldName = 'Id_TpObjetoFilho'
      Size = 3
    end
    object Tb_Obj2Descricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
  end
  object Tb_Proc3: TMSQuery
    SQL.Strings = (
      'exec Sc_Zip_S_Filtra_Procedures2'
      ':Procedure')
    CachedUpdates = True
    Left = 18
    Top = 392
    ParamData = <
      item
        DataType = ftString
        Name = 'Procedure'
        ParamType = ptInput
        Value = nil
      end>
    object Tb_Proc3Id_Tela: TStringField
      FieldName = 'Id_Tela'
      Size = 50
    end
  end
  object Tb_TabCol: TMSQuery
    SQL.Strings = (
      'exec Sc_Zip_S_Filtra_Tables_Columns'
      ':Tabela')
    CachedUpdates = True
    Left = 68
    Top = 392
    ParamData = <
      item
        DataType = ftString
        Name = 'Tabela'
        ParamType = ptInput
        Value = nil
      end>
    object Tb_TabColColuna: TStringField
      FieldName = 'Coluna'
      Size = 100
    end
  end
  object Ds_Obj2: TDataSource
    DataSet = Tb_Obj2
    Left = 62
    Top = 216
  end
  object Tb_Obj1: TMSQuery
    SQL.Strings = (
      'exec Sc_Zip_S_TpObjeto1')
    CachedUpdates = True
    Left = 14
    Top = 168
    object Tb_Obj1Id_TpObjeto: TStringField
      FieldName = 'Id_TpObjeto'
      FixedChar = True
      Size = 2
    end
    object Tb_Obj1TpObjeto: TStringField
      FieldName = 'TpObjeto'
      Size = 15
    end
  end
  object Ds_Obj1: TDataSource
    DataSet = Tb_Obj1
    Left = 14
    Top = 217
  end
  object Tb_Script: TMSQuery
    SQL.Strings = (
      'exec Sc_Zip_S_Scrypt'
      ':IdObj1,'
      ':IdObj2,'
      ':TpOperacao,'
      ':CampoChave1,'
      ':CampoChave2,'
      ':CampoChave3,'
      ':CampoChave4,'
      ':Usuario,'
      ':Versao')
    CachedUpdates = True
    Left = 60
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'IdObj1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'IdObj2'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TpOperacao'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CampoChave1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CampoChave2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CampoChave3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CampoChave4'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Usuario'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Versao'
        ParamType = ptInput
        Value = nil
      end>
    object Tb_ScriptScript: TMemoField
      FieldName = 'Script'
      BlobType = ftMemo
    end
    object Tb_ScriptTipoScript: TStringField
      FieldName = 'TipoScript'
      Size = 50
    end
  end
  object PopupMenu3: TPopupMenu
    Images = Tela_Zip_Menu.ImgPopupMenu
    Left = 512
    Top = 104
    object ExcluirLinha2: TMenuItem
      Caption = 'Excluir Linha'
      ImageIndex = 0
      OnClick = ExcluirLinha2Click
    end
    object ImportarLista2: TMenuItem
      Caption = 'Importar Lista'
      ImageIndex = 3
      OnClick = ImportarLista2Click
    end
  end
  object PopupMenu4: TPopupMenu
    Images = Tela_Zip_Menu.ImgPopupMenu
    Left = 672
    Top = 104
    object ExcluirLinha3: TMenuItem
      Caption = 'Excluir Linha'
      ImageIndex = 0
      OnClick = ExcluirLinha3Click
    end
  end
  object PopupMenu1: TPopupMenu
    Images = Tela_Zip_Menu.ImgPopupMenu
    Left = 192
    Top = 104
    object ExluirLinha0: TMenuItem
      Caption = 'Excluir Linha'
      ImageIndex = 0
      OnClick = ExluirLinha0Click
    end
  end
  object Sp_Descarta: TMSStoredProc
    StoredProcName = 'Sc_Zip_M_DescartaObjetoPendente;1'
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL Sc_Zip_M_DescartaObjetoPendente;1 (:V_TpOb' +
        'jeto, :V_TpOperacao, :V_CampoChave1, :V_CampoChave2, :V_CampoCha' +
        've3, :V_CampoChave4)}')
    CachedUpdates = True
    Left = 320
    Top = 387
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_TpObjeto'
        ParamType = ptInput
        Size = 15
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_TpOperacao'
        ParamType = ptInput
        Size = 1
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_CampoChave1'
        ParamType = ptInput
        Size = 255
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_CampoChave2'
        ParamType = ptInput
        Size = 255
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_CampoChave3'
        ParamType = ptInput
        Size = 255
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_CampoChave4'
        ParamType = ptInput
        Size = 255
        Value = nil
      end>
    CommandStoredProcName = 'Sc_Zip_M_DescartaObjetoPendente;1'
  end
  object Tb_Exec: TMSQuery
    ParamCheck = False
    CachedUpdates = True
    Left = 144
    Top = 394
  end
  object ComputerInfo: TJvComputerInfoEx
    Left = 504
    Top = 574
  end
  object Sp_Confirma: TMSStoredProc
    StoredProcName = 'Sc_Zip_M_ConfirmaExportacaoObjetoPendente;1'
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL Sc_Zip_M_ConfirmaExportacaoObjetoPendente;' +
        '1 (:V_TpObjeto, :V_TpOperacao, :V_CampoChave1, :V_CampoChave2, :' +
        'V_CampoChave3, :V_CampoChave4, :V_Versao)}')
    CachedUpdates = True
    Left = 432
    Top = 395
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_TpObjeto'
        ParamType = ptInput
        Size = 15
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_TpOperacao'
        ParamType = ptInput
        Size = 1
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_CampoChave1'
        ParamType = ptInput
        Size = 255
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_CampoChave2'
        ParamType = ptInput
        Size = 255
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_CampoChave3'
        ParamType = ptInput
        Size = 255
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_CampoChave4'
        ParamType = ptInput
        Size = 255
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_Versao'
        ParamType = ptInput
        Size = 5
        Value = nil
      end>
    CommandStoredProcName = 'Sc_Zip_M_ConfirmaExportacaoObjetoPendente;1'
  end
  object Tb_Bloco: TMSQuery
    SQL.Strings = (
      'exec Sc_Zip_S_Script_Bloco')
    CachedUpdates = True
    Left = 13
    Top = 288
    object Tb_BlocoTexto: TMemoField
      FieldName = 'Texto'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object PopupMenu5: TPopupMenu
    Images = Tela_Zip_Menu.ImgPopupMenu
    Left = 792
    Top = 104
    object ExcluirLinha4: TMenuItem
      Caption = 'Excluir Linha'
      ImageIndex = 0
      OnClick = ExcluirLinha4Click
    end
  end
  object Up_Lista1: TMSUpdateSQL
    Left = 272
    Top = 184
  end
  object Tb_Lista1: TMSQuery
    SQL.Strings = (
      'exec Sc_Zip_S_TpObjeto_Pendente')
    CachedUpdates = True
    UpdateObject = Up_Lista1
    Left = 274
    Top = 240
    object Tb_Lista1Lg_Us_Alt: TStringField
      DisplayLabel = 'Alterado por'
      FieldName = 'Lg_Us_Alt'
      Size = 10
    end
    object Tb_Lista1Lg_Dt_Alt: TDateTimeField
      DisplayLabel = 'Data da altera'#231#227'o'
      FieldName = 'Lg_Dt_Alt'
    end
    object Tb_Lista1TpObjeto: TStringField
      FieldName = 'TpObjeto'
      Size = 10
    end
    object Tb_Lista1NmObjeto: TStringField
      FieldName = 'NmObjeto'
      ReadOnly = True
      Size = 100
    end
    object Tb_Lista1CampoChave1: TStringField
      FieldName = 'CampoChave1'
      ReadOnly = True
      Size = 100
    end
    object Tb_Lista1CampoChave2: TStringField
      FieldName = 'CampoChave2'
      ReadOnly = True
      Size = 10
    end
    object Tb_Lista1CampoChave3: TStringField
      FieldName = 'CampoChave3'
      ReadOnly = True
      Size = 10
    end
    object Tb_Lista1CampoChave4: TStringField
      FieldName = 'CampoChave4'
      ReadOnly = True
      Size = 10
    end
    object Tb_Lista1TpOperacao: TStringField
      FieldName = 'TpOperacao'
      Size = 15
    end
    object Tb_Lista1Flag: TStringField
      FieldName = 'Flag'
      Size = 1
    end
  end
  object Ds_Lista1: TDataSource
    DataSet = Tb_Lista1
    Left = 274
    Top = 296
  end
  object Up_Lista2: TMSUpdateSQL
    Left = 328
    Top = 184
  end
  object Tb_Lista2: TMSQuery
    SQL.Strings = (
      'exec Sc_Zip_S_TpObjeto_Consulta'
      ':TpObjeto,'
      ':NmObjeto,'
      ':Sigla')
    CachedUpdates = True
    UpdateObject = Up_Lista2
    Left = 330
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TpObjeto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NmObjeto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Sigla'
        Value = nil
      end>
    object Tb_Lista2TpObjeto: TStringField
      FieldName = 'TpObjeto'
      ReadOnly = True
      Size = 10
    end
    object Tb_Lista2NmObjeto: TStringField
      FieldName = 'NmObjeto'
      ReadOnly = True
      Size = 250
    end
    object Tb_Lista2CampoChave1: TStringField
      FieldName = 'CampoChave1'
      ReadOnly = True
      Size = 100
    end
    object Tb_Lista2CampoChave2: TStringField
      FieldName = 'CampoChave2'
      ReadOnly = True
      Size = 10
    end
    object Tb_Lista2CampoChave3: TStringField
      FieldName = 'CampoChave3'
      ReadOnly = True
      Size = 10
    end
    object Tb_Lista2CampoChave4: TStringField
      FieldName = 'CampoChave4'
      ReadOnly = True
      Size = 10
    end
    object Tb_Lista2TpOperacao: TStringField
      FieldName = 'TpOperacao'
      ReadOnly = True
      Size = 1
    end
  end
  object Ds_Lista2: TDataSource
    DataSet = Tb_Lista2
    Left = 330
    Top = 296
  end
  object Up_Lista3: TMSUpdateSQL
    Left = 392
    Top = 184
  end
  object Tb_Lista3: TMSQuery
    SQL.Strings = (
      'select'#9'TpObjeto'#9'= Convert(varchar(10),'#39#39'),'
      'NmObjeto'#9'= Convert(varchar(100),'#39#39'),'
      #9#9'CampoChave1'#9#9'= Convert(varchar(100),'#39#39'),'
      #9#9'CampoChave2'#9#9'= Convert(varchar(10),'#39#39'),'
      #9#9'CampoChave3'#9#9'= Convert(varchar(10),'#39#39'),'
      #9#9'CampoChave4'#9#9'= Convert(varchar(10),'#39#39'),'
      #9#9'TpOperacao'#9'= Convert(varchar(15),'#39#39')'
      'where 2 =1')
    CachedUpdates = True
    UpdateObject = Up_Lista3
    Left = 394
    Top = 240
    object Tb_Lista3TpObjeto: TStringField
      FieldName = 'TpObjeto'
      Size = 10
    end
    object Tb_Lista3CampoChave1: TStringField
      FieldName = 'CampoChave1'
      Size = 50
    end
    object Tb_Lista3CampoChave2: TStringField
      FieldName = 'CampoChave2'
      Size = 10
    end
    object Tb_Lista3CampoChave3: TStringField
      FieldName = 'CampoChave3'
      Size = 10
    end
    object Tb_Lista3CampoChave4: TStringField
      FieldName = 'CampoChave4'
      Size = 10
    end
    object Tb_Lista3TpOperacao: TStringField
      FieldName = 'TpOperacao'
      Size = 15
    end
    object Tb_Lista3NmObjeto: TStringField
      FieldName = 'NmObjeto'
      Size = 100
    end
  end
  object Ds_Lista3: TDataSource
    DataSet = Tb_Lista3
    Left = 394
    Top = 296
  end
  object Up_Lista4: TMSUpdateSQL
    Left = 448
    Top = 184
  end
  object Tb_Lista4: TMSQuery
    SQL.Strings = (
      'select'#9'NmObjeto = Convert(varchar(100),'#39#39')'
      'where 2 =1')
    CachedUpdates = True
    UpdateObject = Up_Lista4
    AfterOpen = Tb_Lista4AfterOpen
    Left = 450
    Top = 240
    object Tb_Lista4NmObjeto: TStringField
      FieldName = 'NmObjeto'
      Size = 100
    end
  end
  object Ds_Lista4: TDataSource
    DataSet = Tb_Lista4
    Left = 450
    Top = 296
  end
  object Up_Lista5: TMSUpdateSQL
    Left = 504
    Top = 184
  end
  object Tb_Lista5: TMSQuery
    SQL.Strings = (
      'select'#9'NmObjeto = Convert(varchar(100),'#39#39')'
      'where 2 =1')
    CachedUpdates = True
    UpdateObject = Up_Lista5
    Left = 506
    Top = 240
    object Tb_Lista5NmObjeto: TStringField
      FieldName = 'NmObjeto'
      Size = 100
    end
  end
  object Ds_Lista5: TDataSource
    DataSet = Tb_Lista5
    Left = 506
    Top = 296
  end
  object ImgGrid: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 25755875
    ImageInfo = <
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
          E8000075300000EA6000003A98000017709CBA513C00000231504C5445000000
          1DB21D18AE181AAF1A12A9120AA30A029B02049D0400970026B8262ABB2A29BA
          292DBD2D49D0490DA40D009400008D00008F000089001FB31F0087000080001C
          B11C25B825008400007E0008A108007500007C00007200039D0330C230008300
          007300007000009300006B00008E00007600006500006300006600008A000081
          00005C00006100008200007D00005E00007B00007900005B00005A0000740000
          8500005900005800006800006200005F00005D000098000095001BB11B2ABB2A
          29BA2920B42012A912059D05009400008C0025B82533C1333FC93F029702008D
          0000850009A4092BBB2B008F0000840000740016AD162DBC2D008300007B0010
          A810007900008C00079F07007500006700019701007100006000008E00006A00
          008700008A00006B00006200007F00008100006100005300007900007900007A
          00006700006000005800006D00007200006F00006C00006700006200005D0000
          4F0000560000520045CC453EC83E29BA2910A71043CB435EDC5E6AE46A60DE60
          46CD4623B623079F0752D55273E97384F38475EA7555D7552EBE2E0CA40C0091
          0051D45171E87180F18054D6542DBD2D0BA30B0082001DB11D3FC83F59D95964
          E0645BDA5B41CA4120B320069E06008E0000800022B52236C33637C43724B624
          0DA50D019501008800007B0008A00813AA1317AD1709A109019601008C000081
          00007400009000029702008A00007800008300008700008400007E0000760000
          6B00007A00007900007000FFFFFF0918DD790000007974524E53000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000404033D89B0AF883C
          030E88EFEF860D0489FE86033EF0EF3C8B8805B2AF04B3B0048C8940F1EF3D04
          8B88030F8BF1F0890E04408CB3B28B3E040505350C1A7D00000001624B4744BA
          A3B147DA000000097048597300002E2300002E230178A53F760000000774494D
          4507E40B0D14330C2249384F000001627A5458745261772070726F66696C6520
          74797065206963630000388D9D545B8E83300CFCCF29F6087E9B1C870622EDFD
          2FB00E24145654DDEE208A3476ECF1234DDFA5A4AF063548D0400C822242A240
          B851B6D8EAE2A4242E44A093669D09C04B6DE678194E4886C6CE1E811414A40C
          83AD56E355F8036A646D8A70100BD37228FB10E943FF39F483934BD7D22B604A
          26A6CEB6D78BA36C7BB84787A01FC0DC0FA01885EDE01F30F814ED9468680F54
          7A2658CDCFFCF2E42FFEEBC1B740DB3C76439523B39F7882E9A9E8CCE3A13479
          2B6D1A3503085B0DE9D9C9B2B985858091737B28661BADA8519EC6427078713B
          6F8B730A638E31B7E3E4D07E0D37630F7DE9E101C44BC8D8B5D4968DA69E73A2
          FC6E6CAFF0E9F8FF1FE8B81A2754D6B6C46391112D2EDD9DE31D621135BA68BF
          688C7BBAF52FBD7378671F422EA5E582DBBE489DF7BB26B5DC29669996F69D81
          F63DAA596F4B2363EC69DB5F063CD65CD20F7743E7E12E4CDB860000010A4944
          415418D363600002462666165636760E0608E0E4E2E6E1B5B5E3E317101402F1
          85B9B8ED1D1C9D9C5D5CDD844444810262E2EE1E9E9555D5355EDE3E12920C0C
          5262BE7EB575F50D8D4DCDFE018192D20C6CCC41C12DAD6DED1D9D5DDD21A132
          B20C72F261D53DBD7DADFD1326764F0A575064E088889C3C65EAB4E93366CE9A
          3D272A5A8941392266E2DC7955F3172C5CB478496C9C0A832A7FFCA2A5CB962F
          5BB172D5EA35096AEA0C822289496B17AD5BD9BD7ED286E4140D4D062DEDD4B4
          8D9B166FDABC65EBB6F40C1D5D06063DFDCCACECED3BB6EECCC9CDD33100BA54
          DFD028BFA0B0A8B8A4B4CC58C704E41969535345B3F20A530373130BA87F2DD5
          35ADAC756CC0D200EE634EBAD1095C220000002574455874646174653A637265
          61746500323032302D31312D31335432303A35313A30362B30303A30300C5C94
          B60000002574455874646174653A6D6F6469667900323032302D31312D313354
          32303A35313A30362B30303A30307D012C0A00000037744558746963633A636F
          7079726967687400436F7079726967687420313939392041646F626520537973
          74656D7320496E636F72706F7261746564316CFF6D0000002074455874696363
          3A6465736372697074696F6E0041646F62652052474220283139393829B0BAEA
          F60000000049454E44AE426082}
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
          E8000075300000EA6000003A98000017709CBA513C0000025E504C5445000000
          FF1E1EFF1818FF1A1AFF1212FF0A0AFF0202FF0404FD0000FF2626FF2B2BFF2A
          2AFF2E2EFF4949FE0D0DF90000EE0000F10000E50000FF1F1FE40000E10000D2
          0000FF1C1CDA0000CB0000FF0808CC0000B20000C70000AB0000FF0303FF3131
          DB0000AE0000A30000F70000940000B80000810000E200007C0000850000E700
          00640000750000D60000C800006A0000C40000BE00006200006500005C0101B4
          0000AF0000AD0000E60000B300006B00005B01015F01015702028C0000840000
          7800006E00006300006600005D0101FF0000FF1B1BFF2B2BFF2929FF2020FF12
          12FE0505F90000ED0000FF2626FF3434FF4040FA0202ED0000DD0000FF0909FF
          2B2BEF0000DB0000B60000FF1717FF2D2DD90000C40000FF1010BD0000FC0000
          FF0707B40000890000F10000FB0101A60000740000F00000910000E10000E700
          00940000780000CF0000D20000750000460000BF0000C00000BF00008800006F
          00005801019D0000A90000A200009700008900007800006600003B0202520000
          440000FF4646FF3E3EFF2929FF1010FF4444FF6060FF6C6CFF6262FF2323FE07
          07FF5353FE7575FD8585FE7777FF5656FF2F2FFF0C0CF30000FF2A2AFF5252FF
          7272FD8282FE7474FF5555FF2D2DFF0B0BD60000FF1D1DFF3F3FFF5A5AFF6565
          FF5C5CFF4242FF2020FE0606EE0000D00000FF2222FF3737FF3838FF2424FF0D
          0DF80101E30000C40000FE0909FF1313FF1818FF1414FF0909FA0101EA0000D2
          0000B10000F20000F90101FA0202E70000D40000BA0000D80000E00000E10000
          D90000CB0000B60000940000C00000BD0000B40000A20000FFFFFF5735A40B00
          00008274524E5300000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000004033D89B0AF883C030E88EFEF860D0489FE86
          033EF0EF3C8B8805B2AF0405B3B0048C8940F1EF3D048B88030F8BF1F0890E04
          408CB3B28B3E04050510C2C21400000001624B4744C96ABD675C000000097048
          597300002E2300002E230178A53F760000000774494D4507E40B0D14252B9BDB
          38F3000001627A5458745261772070726F66696C652074797065206963630000
          388D9D545B8E83300CFCCF29F6087E9B1C870622EDFD2FB00E24145654DDEE20
          8A3476ECF1234DDFA5A4AF063548D0400C822242A240B851B6D8EAE2A4242E44
          A093669D09C04B6DE678194E4886C6CE1E811414A40C83AD56E355F8036A646D
          8A70100BD37228FB10E943FF39F483934BD7D22B604A26A6CEB6D78BA36C7BB8
          4787A01FC0DC0FA01885EDE01F30F814ED9468680F547A2658CDCFFCF2E42FFE
          EBC1B740DB3C76439523B39F7882E9A9E8CCE3A134792B6D1A3503085B0DE9D9
          C9B2B985858091737B28661BADA8519EC6427078713B6F8B730A638E31B7E3E4
          D07E0D37630F7DE9E101C44BC8D8B5D4968DA69E73A2FC6E6CAFF0E9F8FF1FE8
          B81A2754D6B6C46391112D2EDD9DE31D621135BA68BF688C7BBAF52FBD737867
          1F422EA5E582DBBE489DF7BB26B5DC29669996F69D81F63DAA596F4B2363EC69
          DB5F063CD65CD20F7743E7E12E4CDB860000010D4944415418D3636000024626
          66165636760E0608E0E4E2E6E17573E3E317101402F185B9B8DD3D3CBDBC7D7C
          FD4444C58002E29CFE01814DCD2DAD41C12112920C0C52E2A1616DED1D9D4D5D
          DDE11191D2320C6CCC51D13DBD7DFD13264E9A1C132B2BC720AF103765EAB4E9
          3366CE9A3D794EBCA212034742E2DC79F3172C5CB478C9D26549C9CA0C2A29A9
          9396AF98B772D5EA356BD7A5A5AB3208F067AC59BF61E3A6CD5BB66EDB9EA9A6
          CE20A89195BD63E7AE9D9377EFD99B93ABA9C5A02D9697BF6FFFDA03070F1D3E
          5250A8A3CBC0A0A75F545C72F4D8F113A565E53A064097EA1B1A55545655D7D4
          D6D51B9B98823C63666E6E61D9D068656D636B07F5AFBDBA83A393B38B2B880D
          00C46954FAE566404B0000002574455874646174653A63726561746500323032
          302D31312D31335432303A33373A33312B30303A3030A2DF17DF000000257445
          5874646174653A6D6F6469667900323032302D31312D31335432303A33373A33
          312B30303A3030D382AF6300000037744558746963633A636F70797269676874
          00436F7079726967687420313939392041646F62652053797374656D7320496E
          636F72706F7261746564316CFF6D00000020744558746963633A646573637269
          7074696F6E0041646F62652052474220283139393829B0BAEAF6000000004945
          4E44AE426082}
      end>
  end
end
