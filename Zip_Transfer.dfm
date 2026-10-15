object Tela_Zip_Transfer: TTela_Zip_Transfer
  Left = 0
  Top = 0
  Caption = 'Utilit'#225'rio para atualiza'#231#227'o autom'#225'tica'
  ClientHeight = 549
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object PageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 846
    Height = 549
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = TabVersoes
    Properties.CustomButtons.Buttons = <>
    OnChange = PageControl1Change
    ExplicitWidth = 850
    ExplicitHeight = 550
    ClientRectBottom = 549
    ClientRectRight = 846
    ClientRectTop = 24
    object TabVersoes: TcxTabSheet
      Caption = 'Configura'#231#245'es'
      ExplicitTop = 0
      object Panel4: TcxGroupBox
        Left = 0
        Top = 476
        Align = alBottom
        PanelStyle.Active = True
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnClick = Panel4Click
        Height = 50
        Width = 846
        object btProximo1: TcxButton
          AlignWithMargins = True
          Left = 801
          Top = 5
          Width = 40
          Height = 40
          Hint = 'Pr'#243'ximo'
          Align = alRight
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C00000012744558745469746C6500466F72776172643B4E657874
            EB6FF6E1000001D249444154785EC597314BC3401886CD543A8A8A25E0962D9B
            A39BA3D02E45A4E8E0A2500787FC8204E792D9BFE03F10DA7F20B55610712864
            737070102C8AE67C2BEF701CD75C92A3DCF02C1FDFBDDF1BEEBBEF2E6B4208A7
            FC073A57B765F0410FA4600432302719632973FC127AA50D84200153204A32E5
            9AD0C68007FA604CD11C0C410CDA20004D1230163327E79A3135BCAA065A6000
            04B901DDB2FBBAC8E51A4106D4341B60E23517CE40041A559B6BB10644D410D4
            6C990C78D2974FC0A16D972F34A825A8ED1519E84B5FAE14B73631A3767F9981
            506AB8A8406C07BC285DFF053A061391D498A1CE4022355CC320E683678D896E
            514F488D99A8067C9EDD5C163198D8064F8A896F7064381D396BF9B2811E0586
            15F7760B3C28267EC071C19A21F37AB28194C1B846836D807B8D89D325F93173
            52D9C088C176CD2E5F07778A895F70A6C96D3367241BC8180C946461490E2E14
            CD8039996C60CE60536BC0DEC4A5A4D9647CBE4A036A3F9CEB0CAC7C0B58FCC4
            BC05F64DC893A01F4CE626B43F8613A5F82738301F43FB41B4A929FE01F62B0D
            2275145B4CC177B05767149B2F2373F137B05BF632AA7D1DB3F8A352FC158416
            D7B1AB0789FB2799FB47A9FB67B9FB1F13F7BF66EE7F4E9DF2078107D681EE1E
            B7560000000049454E44AE426082}
          OptionsImage.Layout = blGlyphRight
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TabStop = False
          OnClick = btProximo1Click
          ExplicitLeft = 805
        end
        object btnSair: TcxButton
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
          TabOrder = 1
          TabStop = False
          OnClick = btnSairClick
        end
      end
      object pnlVersoes: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        PanelStyle.Active = True
        TabOrder = 1
        OnDblClick = pnlVersoesDblClick
        ExplicitWidth = 850
        ExplicitHeight = 476
        DesignSize = (
          846
          475)
        Height = 475
        Width = 846
        object btnEditar: TcxButton
          AlignWithMargins = True
          Left = 90
          Top = 10
          Width = 75
          Height = 25
          Hint = 'editar a vers'#227'o selecionada'
          Caption = 'Editar'
          Enabled = False
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C00000020744558745469746C6500456469743B426172733B5269
            62626F6E3B5374616E646172643B3013C3DB0000007A49444154785EADCF310E
            8020104451EFB4E7F052869AF37817636B6F6BE18A461940339255921FAA7981
            46553F1501E79C92D6F3160A907340DEFB1188010867016200D238C0FB070819
            0064078669D6B6EBAFA41EC038436A018C9030808FF917EAC7A1E60DC8FF8C64
            DFDC80A20800C1B80410C0A3A767A76D009B2652851552D30000000049454E44
            AE426082}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnEditarClick
        end
        object btnIncluir: TcxButton
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 75
          Height = 25
          Hint = 'Gera um novo N'#186' de Vers'#227'o'
          Caption = 'Incluir'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000002C744558745469746C65004164643B4974656D3B416464
            4974656D3B426172733B526962626F6E3B4974656D3B506C75734E32EF810000
            006249444154785ED5D3C10980300C85E1EEE41C2E2539671E9771110F461E34
            A287BE48444A0B3FC9217CB71633FBD4B58888918E3A270AB007405537205900
            637724033CE2006F54605E56E400F67E000A013FA2FD0A30AC786F3F530834BB
            1FB780139B0320D9EACDD2140000000049454E44AE426082}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnIncluirClick
        end
        object mmoDesc_RotinasSql: TcxDBMemo
          Left = 340
          Top = 318
          TabStop = False
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataBinding.DataField = 'Desc_RotinasSql'
          DataBinding.DataSource = Ds_Ver
          Properties.ReadOnly = True
          Properties.ScrollBars = ssVertical
          TabOrder = 2
          ExplicitWidth = 532
          ExplicitHeight = 146
          Height = 145
          Width = 528
        end
        object edtUsuario: TcxDBTextEdit
          Left = 613
          Top = 58
          TabStop = False
          DataBinding.DataField = 'Usuario'
          DataBinding.DataSource = Ds_Ver
          Properties.ReadOnly = True
          TabOrder = 3
          Width = 96
        end
        object edtNomePC: TcxDBTextEdit
          Left = 715
          Top = 58
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'Nomepc'
          DataBinding.DataSource = Ds_Ver
          Properties.ReadOnly = True
          TabOrder = 4
          ExplicitWidth = 129
          Width = 125
        end
        object edtDataPubl: TcxDBTextEdit
          Left = 502
          Top = 58
          TabStop = False
          DataBinding.DataField = 'Data_Publicacao'
          DataBinding.DataSource = Ds_Ver
          Properties.ReadOnly = True
          TabOrder = 5
          Width = 100
        end
        object cxGrid1: TcxGrid
          Left = 10
          Top = 41
          Width = 318
          Height = 422
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 6
          TabStop = False
          ExplicitHeight = 423
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            
            DataController.DataSource = Ds_Ver
            
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.CellEndEllipsis = True
            OptionsView.CellAutoHeight = True
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1Id_Versao: TcxGridDBColumn
              DataBinding.FieldName = 'Id_Versao'
              Width = 58
            end
            object cxGrid1DBTableView1Status: TcxGridDBColumn
              DataBinding.FieldName = 'Status'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = Img_Tela
              Properties.Items = <
                item
                  Description = 'PENDENTE'
                  ImageIndex = 1
                  Value = 'PENDENTE'
                end
                item
                  Description = 'PUBLICADA'
                  ImageIndex = 0
                  Value = 'PUBLICADA'
                end>
              Width = 94
            end
            object cxGrid1DBTableView1Data_Versao: TcxGridDBColumn
              DataBinding.FieldName = 'Data_Publicacao'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object cxLabel3: TcxLabel
          Left = 613
          Top = 41
          Caption = 'Usu'#225'rio'
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 712
          Top = 41
          Caption = 'Nome PC'
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 402
          Top = 41
          Caption = 'Status'
          Transparent = True
        end
        object cxLabel6: TcxLabel
          Left = 340
          Top = 300
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = 'Descri'#231#227'o das Rotinas do Sql'
          Transparent = True
          ExplicitWidth = 197
          Height = 17
          Width = 193
        end
        object cxLabel7: TcxLabel
          Left = 502
          Top = 41
          Caption = 'Data da Publica'#231#227'o'
          Transparent = True
        end
        object edtStatus: TcxDBTextEdit
          Left = 402
          Top = 58
          TabStop = False
          DataBinding.DataField = 'Status'
          DataBinding.DataSource = Ds_Ver
          Properties.ReadOnly = True
          TabOrder = 12
          Width = 92
        end
        object edtVersao: TcxDBTextEdit
          Left = 340
          Top = 58
          TabStop = False
          DataBinding.DataField = 'Id_Versao'
          DataBinding.DataSource = Ds_Ver
          Properties.ReadOnly = True
          TabOrder = 13
          Width = 50
        end
        object FileListBox1: TJvFileListBox
          Left = 715
          Top = 3
          Width = 121
          Height = 15
          BevelKind = bkFlat
          Color = clBtnFace
          Mask = '*.AAA'
          ShowGlyphs = True
          TabOrder = 14
          Visible = False
          ForceFileExtensions = True
          BorderStyle = bsNone
        end
        object Label10: TcxLabel
          Left = 340
          Top = 41
          Caption = 'Vers'#227'o'
          Transparent = True
        end
        object Label11: TcxLabel
          Left = 340
          Top = 79
          Caption = 'Descri'#231#227'o'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object mmoDescricao: TcxMemo
          Left = 340
          Top = 97
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 17
          ExplicitWidth = 532
          Height = 201
          Width = 528
        end
        object btnSalvar: TcxButton
          Left = 253
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Salvar'
          Enabled = False
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
            00097048597300000EC300000EC301C76FA8640000027249444154384F8593ED
            4B536118C6CFBF901BE7AC57F0CFE9832FB8C95E70612D96A10D0DEA435F2448
            410A1452B18DDA90994E32B2982FD976A61823149DB4C42965B08D6DB69DB594
            694DCFD5FD9C336348D905D7CED9739EEB77DFCF739EC3E92C6207B94FB08496
            05B328E9CCE22F9D2528D318E85EF185A6102E5D99C745AB8873E660BEBA39B8
            A433CD1A38269D25E4DACC01CC27F5937CA4DE2A2A91BFEDCBF27CAC54BADC19
            C90AC6291B2798431B9B59E08EEF409D456A78B00A99AE0C50A9FC21902A0281
            988CF9D821AA9BC503D6C1F718016E8FEE97A7A90086639063B1A719FA49ED01
            B73C123E6C03826956E6D89AA31906282A93980D5D110550A92C0DB0EA895DA0
            D59DC358B808C13803EA202847D240C7481112B5C85CA0855756DFA5FFC7E138
            F9E6D31D0C2FFC00DF38C50022561204F0EE29ADEBA97A6377044D0F3FC24A36
            F5AC414FE3ECD9B1ED4349B8021278839F00F49A96E28063B8406B23D3D5319C
            87C3C32CA1CD2D51C52C5A5C3BB03B33B00DA5607F92C6C07406BCFEB50A08D3
            862861B21A241384855B9FE594966F380940C1EB83497202BD9349681B5EA980
            852D06C8972DFDA9AE84A9728B2BA3846D14BCD61FC7D5FEAFE81EDF86B67E82
            010210630470E7CB5BF67F59FB3EE3FEC8163475E3E0CED326CEAD436997A9F3
            7DDDA966323FDAC03DCF3A34B53E0234899889CAD4810A08A7174F3593B1E713
            EE3AA304180577D6F24EF6AF1D1140FD18FE56B5D24CFAAE35B40F465055E395
            39DE14F832B15CC2C4D2C993FF6FB50FACA2EDF10A03E4E8630AF4F2C6393F59
            128C6FE9784E2B278C37BC81563F49AFEA2534F52F68C37CD4F218854695CA67
            6ABC85AADAE78BBF01CBAB0D446C0501820000000049454E44AE426082}
          TabOrder = 18
          OnClick = btnSalvarClick
        end
        object btnCancelar: TcxButton
          Left = 171
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          Enabled = False
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
            00097048597300000EC300000EC301C76FA864000001EF49444154384F9D917F
            4B53511CC647108CFE191154FFC8A5124A1704AD2DADDCF56A560E9CBAE97EE8
            D84C97E6D69C9B5B134D56FF14F44A7A57BD0031827EACADBBF3E99CE35D3636
            897AE0C239F77B3ECF79BEDFE3FA57B1BE7ECE59F64AECEC1862FBA5D7D9F648
            24D25EB1102F8A7024E8FC3A9182A9EE42A586C86DF7982898D40A643710A199
            0FE26168C829FD011FBC3EFEB6CA886CEEB7894824BC2CA521F702F60F506B3B
            3851C4E53AA30F50AFBB45A1D466F715BC7B0FB57D78B68948CBC80A4EA66033
            8FAE2FA5B0C72C1B9FEFAC863B2293718BE7799B7215DEBC855205D232726219
            3672D2744FAF5B0F4C1BD3743B58B7B44966D5265790ADD4614FC65569AA3588
            2769DD0F9E0E77A44D16E26D6A326E2C099118942B0A6EFF15561251D9732CA1
            5F83B92884E7A150A41D1CA779CB7FEA136B6978310E2B6B502C4BB00479D98E
            1AE0EC3CAD3B01BE5C1BEA6F22A2512F511937B3AA9F91C822CD917B76C3E76F
            F3681AD6B2F0789AC6F04D8E0606BA4DC48C8455AFE9A7F2D62D1DBD1918D503
            C330DD5F6F0CDB8C99B29E81F149BE5D1DE4E8FCA51313110A5BCC4520250FCC
            46F8E11FE99A3686E1FE6C5CB145601426A7F83E789D43CF05CB291FEB6770C2
            62EA8984EFF69DB632F974F1B2DD17EEA8713B60A9C8CEB6471FA5C9A1C7D31F
            FE3FB95CBF00908647AA43633A000000000049454E44AE426082}
          TabOrder = 19
          OnClick = btnCancelarClick
        end
      end
    end
    object TabListaDiretorio: TcxTabSheet
      Caption = 'Lista de Diret'#243'rios'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TcxGroupBox
        Left = 0
        Top = 477
        Align = alBottom
        PanelStyle.Active = True
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          846
          50)
        Height = 50
        Width = 846
        object cbExeAuto: TcxCheckBox
          Left = 492
          Top = 16
          Anchors = [akTop, akRight]
          Caption = 'Executar todos os passos automaticamente'
          ParentFont = False
          Properties.Alignment = taRightJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
          Transparent = True
          OnClick = cbExeAutoClick
          ExplicitLeft = 500
        end
        object btAnterior2: TcxButton
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
          TabOrder = 1
          OnClick = btAnterior2Click
        end
        object btProximo2: TcxButton
          AlignWithMargins = True
          Left = 801
          Top = 5
          Width = 40
          Height = 40
          Hint = 'Pr'#243'ximo'
          Align = alRight
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C00000012744558745469746C6500466F72776172643B4E657874
            EB6FF6E1000001D249444154785EC597314BC3401886CD543A8A8A25E0962D9B
            A39BA3D02E45A4E8E0A2500787FC8204E792D9BFE03F10DA7F20B55610712864
            737070102C8AE67C2BEF701CD75C92A3DCF02C1FDFBDDF1BEEBBEF2E6B4208A7
            FC073A57B765F0410FA4600432302719632973FC127AA50D84200153204A32E5
            9AD0C68007FA604CD11C0C410CDA20004D1230163327E79A3135BCAA065A6000
            04B901DDB2FBBAC8E51A4106D4341B60E23517CE40041A559B6BB10644D410D4
            6C990C78D2974FC0A16D972F34A825A8ED1519E84B5FAE14B73631A3767F9981
            506AB8A8406C07BC285DFF053A061391D498A1CE4022355CC320E683678D896E
            514F488D99A8067C9EDD5C163198D8064F8A896F7064381D396BF9B2811E0586
            15F7760B3C28267EC071C19A21F37AB28194C1B846836D807B8D89D325F93173
            52D9C088C176CD2E5F07778A895F70A6C96D3367241BC8180C946461490E2E14
            CD8039996C60CE60536BC0DEC4A5A4D9647CBE4A036A3F9CEB0CAC7C0B58FCC4
            BC05F64DC893A01F4CE626B43F8613A5F82738301F43FB41B4A929FE01F62B0D
            2275145B4CC177B05767149B2F2373F137B05BF632AA7D1DB3F8A352FC158416
            D7B1AB0789FB2799FB47A9FB67B9FB1F13F7BF66EE7F4E9DF2078107D681EE1E
            B7560000000049454E44AE426082}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btProximo2Click
          ExplicitLeft = 809
        end
      end
      object ListViewDiretorios: TListView
        Left = 0
        Top = 0
        Width = 846
        Height = 475
        Align = alClient
        Columns = <
          item
            AutoSize = True
            Caption = 'Diret'#243'rio'
            MaxWidth = 600
          end
          item
            AutoSize = True
            Caption = 'Diret'#243'rio de Publica'#231#227'o'
            MaxWidth = 600
          end>
        SortType = stBoth
        TabOrder = 1
        ViewStyle = vsReport
        ExplicitWidth = 854
        ExplicitHeight = 477
      end
    end
    object TabIncluiArquivos: TcxTabSheet
      Caption = 'Transfere arquivos para o banco'
      ImageIndex = 2
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Lista2: TFileListBox
        Left = 0
        Top = 0
        Width = 854
        Height = 477
        Align = alClient
        ItemHeight = 13
        TabOrder = 0
      end
      object Panel3: TcxGroupBox
        Left = 0
        Top = 477
        Align = alBottom
        PanelStyle.Active = True
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        Height = 50
        Width = 846
        object btTransfere: TcxButton
          AlignWithMargins = True
          Left = 801
          Top = 5
          Width = 40
          Height = 40
          Hint = 'Finalizar'
          Align = alRight
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C00000012744558745469746C6500466F72776172643B4E657874
            EB6FF6E1000001D249444154785EC597314BC3401886CD543A8A8A25E0962D9B
            A39BA3D02E45A4E8E0A2500787FC8204E792D9BFE03F10DA7F20B55610712864
            737070102C8AE67C2BEF701CD75C92A3DCF02C1FDFBDDF1BEEBBEF2E6B4208A7
            FC073A57B765F0410FA4600432302719632973FC127AA50D84200153204A32E5
            9AD0C68007FA604CD11C0C410CDA20004D1230163327E79A3135BCAA065A6000
            04B901DDB2FBBAC8E51A4106D4341B60E23517CE40041A559B6BB10644D410D4
            6C990C78D2974FC0A16D972F34A825A8ED1519E84B5FAE14B73631A3767F9981
            506AB8A8406C07BC285DFF053A061391D498A1CE4022355CC320E683678D896E
            514F488D99A8067C9EDD5C163198D8064F8A896F7064381D396BF9B2811E0586
            15F7760B3C28267EC071C19A21F37AB28194C1B846836D807B8D89D325F93173
            52D9C088C176CD2E5F07778A895F70A6C96D3367241BC8180C946461490E2E14
            CD8039996C60CE60536BC0DEC4A5A4D9647CBE4A036A3F9CEB0CAC7C0B58FCC4
            BC05F64DC893A01F4CE626B43F8613A5F82738301F43FB41B4A929FE01F62B0D
            2275145B4CC177B05767149B2F2373F137B05BF632AA7D1DB3F8A352FC158416
            D7B1AB0789FB2799FB47A9FB67B9FB1F13F7BF66EE7F4E9DF2078107D681EE1E
            B7560000000049454E44AE426082}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btTransfereClick
          ExplicitLeft = 809
        end
      end
    end
    object TabValidaArquivos: TcxTabSheet
      Caption = 'Valida os Arquivos'
      ImageIndex = 4
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TcxGroupBox
        Left = 0
        Top = 477
        Align = alBottom
        PanelStyle.Active = True
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        Height = 50
        Width = 846
        object btnValidaArquivo: TcxButton
          AlignWithMargins = True
          Left = 801
          Top = 5
          Width = 40
          Height = 40
          Hint = 'Finalizar'
          Align = alRight
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C00000012744558745469746C6500466F72776172643B4E657874
            EB6FF6E1000001D249444154785EC597314BC3401886CD543A8A8A25E0962D9B
            A39BA3D02E45A4E8E0A2500787FC8204E792D9BFE03F10DA7F20B55610712864
            737070102C8AE67C2BEF701CD75C92A3DCF02C1FDFBDDF1BEEBBEF2E6B4208A7
            FC073A57B765F0410FA4600432302719632973FC127AA50D84200153204A32E5
            9AD0C68007FA604CD11C0C410CDA20004D1230163327E79A3135BCAA065A6000
            04B901DDB2FBBAC8E51A4106D4341B60E23517CE40041A559B6BB10644D410D4
            6C990C78D2974FC0A16D972F34A825A8ED1519E84B5FAE14B73631A3767F9981
            506AB8A8406C07BC285DFF053A061391D498A1CE4022355CC320E683678D896E
            514F488D99A8067C9EDD5C163198D8064F8A896F7064381D396BF9B2811E0586
            15F7760B3C28267EC071C19A21F37AB28194C1B846836D807B8D89D325F93173
            52D9C088C176CD2E5F07778A895F70A6C96D3367241BC8180C946461490E2E14
            CD8039996C60CE60536BC0DEC4A5A4D9647CBE4A036A3F9CEB0CAC7C0B58FCC4
            BC05F64DC893A01F4CE626B43F8613A5F82738301F43FB41B4A929FE01F62B0D
            2275145B4CC177B05767149B2F2373F137B05BF632AA7D1DB3F8A352FC158416
            D7B1AB0789FB2799FB47A9FB67B9FB1F13F7BF66EE7F4E9DF2078107D681EE1E
            B7560000000049454E44AE426082}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnValidaArquivoClick
          ExplicitLeft = 809
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 846
        Height = 475
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 854
        ExplicitHeight = 477
        object cxGrid2DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = Ds_VerArq
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView1Id_Versao: TcxGridDBColumn
            Caption = 'Vers'#227'o'
            DataBinding.FieldName = 'Id_Versao'
            Width = 105
          end
          object cxGrid2DBTableView1Diretorio: TcxGridDBColumn
            Caption = 'Diret'#243'rio'
            DataBinding.FieldName = 'Diretorio'
            Width = 192
          end
          object cxGrid2DBTableView1NomeArquivo: TcxGridDBColumn
            Caption = 'Nome do Arquivo'
            DataBinding.FieldName = 'NomeArquivo'
            Width = 262
          end
          object cxGrid2DBTableView1Id_TipoApp: TcxGridDBColumn
            Caption = 'Tipo de Aplica'#231#227'o do Arquivo'
            DataBinding.FieldName = 'Id_TipoApp'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Id_TipoApp'
            Properties.ListColumns = <
              item
                FieldName = 'Desc_TipoApp'
              end>
            Properties.ListSource = Ds_TipoApp
            Width = 167
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
    object TabFinalizaPublicacao: TcxTabSheet
      Caption = 'Finaliza a Publica'#231#227'o'
      ImageIndex = 3
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel5: TcxGroupBox
        Left = 0
        Top = 477
        Align = alBottom
        PanelStyle.Active = True
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        Height = 50
        Width = 846
        object btConcluir: TcxButton
          AlignWithMargins = True
          Left = 801
          Top = 5
          Width = 40
          Height = 40
          Hint = 'Finalizar'
          Align = alRight
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C00000012744558745469746C6500466F72776172643B4E657874
            EB6FF6E1000001D249444154785EC597314BC3401886CD543A8A8A25E0962D9B
            A39BA3D02E45A4E8E0A2500787FC8204E792D9BFE03F10DA7F20B55610712864
            737070102C8AE67C2BEF701CD75C92A3DCF02C1FDFBDDF1BEEBBEF2E6B4208A7
            FC073A57B765F0410FA4600432302719632973FC127AA50D84200153204A32E5
            9AD0C68007FA604CD11C0C410CDA20004D1230163327E79A3135BCAA065A6000
            04B901DDB2FBBAC8E51A4106D4341B60E23517CE40041A559B6BB10644D410D4
            6C990C78D2974FC0A16D972F34A825A8ED1519E84B5FAE14B73631A3767F9981
            506AB8A8406C07BC285DFF053A061391D498A1CE4022355CC320E683678D896E
            514F488D99A8067C9EDD5C163198D8064F8A896F7064381D396BF9B2811E0586
            15F7760B3C28267EC071C19A21F37AB28194C1B846836D807B8D89D325F93173
            52D9C088C176CD2E5F07778A895F70A6C96D3367241BC8180C946461490E2E14
            CD8039996C60CE60536BC0DEC4A5A4D9647CBE4A036A3F9CEB0CAC7C0B58FCC4
            BC05F64DC893A01F4CE626B43F8613A5F82738301F43FB41B4A929FE01F62B0D
            2275145B4CC177B05767149B2F2373F137B05BF632AA7D1DB3F8A352FC158416
            D7B1AB0789FB2799FB47A9FB67B9FB1F13F7BF66EE7F4E9DF2078107D681EE1E
            B7560000000049454E44AE426082}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btConcluirClick
          ExplicitLeft = 809
        end
      end
    end
  end
  object Tb_Script: TMSQuery
    ParamCheck = False
    Left = 104
    Top = 170
  end
  object Tb_Ver: TMSQuery
    SQL.Strings = (
      'exec Sc_Zip_S_Versao')
    CachedUpdates = True
    UpdateObject = Up_Ver
    AfterOpen = Tb_VerAfterOpen
    AfterScroll = Tb_VerAfterScroll
    Left = 24
    Top = 168
    object Tb_VerId_Versao: TStringField
      DisplayLabel = 'N'#186' Vers'#227'o'
      FieldName = 'Id_Versao'
      FixedChar = True
      Size = 5
    end
    object Tb_VerStatus: TStringField
      FieldName = 'Status'
      Size = 10
    end
    object Tb_VerData_Publicacao: TDateTimeField
      DisplayLabel = 'Data Publica'#231#227'o'
      FieldName = 'Data_Publicacao'
    end
    object Tb_VerNomepc: TStringField
      FieldName = 'Nomepc'
      Size = 30
    end
    object Tb_VerUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object Tb_VerDescricao: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      BlobType = ftMemo
    end
    object Tb_VerDesc_Tecnica: TMemoField
      DisplayLabel = 'Descri'#231#227'o T'#233'cnica'
      FieldName = 'Desc_Tecnica'
      BlobType = ftMemo
    end
    object Tb_VerDesc_RotinasSql: TMemoField
      DisplayLabel = 'Descri'#231#227'o das Rotinas do Sql'
      FieldName = 'Desc_RotinasSql'
      BlobType = ftMemo
    end
  end
  object Ds_Ver: TDataSource
    DataSet = Tb_Ver
    Left = 24
    Top = 224
  end
  object Tb_Proc4: TMSQuery
    SQL.Strings = (
      'exec Sc_Zip_S_Log_Objeto')
    Left = 98
    Top = 240
    object Tb_Proc4nm_maquina: TStringField
      FieldName = 'nm_maquina'
      Size = 50
    end
    object Tb_Proc4Nm_ObjectType: TStringField
      FieldName = 'Nm_ObjectType'
      Size = 50
    end
    object Tb_Proc4Nm_Objeto: TStringField
      FieldName = 'Nm_Objeto'
      Size = 50
    end
    object Tb_Proc4data: TStringField
      FieldName = 'data'
      Size = 10
    end
    object Tb_Proc4Flag: TStringField
      FieldName = 'Flag'
      Required = True
      Size = 1
    end
  end
  object sp_Log_Objeto: TMSStoredProc
    StoredProcName = 'dbo.Sc_Zip_U_Log_Objeto;1'
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL dbo.Sc_Zip_U_Log_Objeto;1 (:V_Objeto, :V_V' +
        'ersao)}')
    CachedUpdates = True
    Left = 56
    Top = 491
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_Objeto'
        ParamType = ptInput
        Size = 255
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_Versao'
        ParamType = ptInput
        Size = 6
        Value = nil
      end>
    CommandStoredProcName = 'dbo.Sc_Zip_U_Log_Objeto;1'
  end
  object Up_Ver: TMSUpdateSQL
    InsertSQL.Strings = (
      'exec Sc_Zip_I_Versao'
      ':Id_Versao,'
      ':Status,'
      ':Data_Publicacao,'
      ':Usuario,'
      ':Nomepc,'
      ':Descricao,'
      ':Desc_Tecnica,'
      ':Desc_RotinasSql')
    ModifySQL.Strings = (
      'exec Sc_Zip_U_Versao'
      ':Old_Id_Versao,'
      ':Status,'
      ':Data_Publicacao,'
      ':Usuario,'
      ':Nomepc,'
      ':Descricao,'
      ':Desc_Tecnica,'
      ':Desc_RotinasSql')
    Left = 26
    Top = 116
  end
  object sp_PublicaVersao: TMSStoredProc
    StoredProcName = 'Sc_Zip_M_Versao_Publica;1'
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL Sc_Zip_M_Versao_Publica;1 (:V_Id_Versao, :' +
        'V_Usuario, :V_NomePc)}')
    CachedUpdates = True
    Left = 288
    Top = 483
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_Id_Versao'
        ParamType = ptInput
        Size = 5
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_Usuario'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_NomePc'
        ParamType = ptInput
        Size = 30
        Value = nil
      end>
    CommandStoredProcName = 'Sc_Zip_M_Versao_Publica;1'
  end
  object sp_ExcluiArquivo: TMSStoredProc
    StoredProcName = 'Sc_Zip_M_Versao_Arquivo_Exclui;1'
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL Sc_Zip_M_Versao_Arquivo_Exclui;1 (:V_Id_Ve' +
        'rsao)}')
    CachedUpdates = True
    Left = 400
    Top = 484
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_Id_Versao'
        ParamType = ptInput
        Size = 5
        Value = nil
      end>
    CommandStoredProcName = 'Sc_Zip_M_Versao_Arquivo_Exclui;1'
  end
  object sp_IncluiArquivo: TMSStoredProc
    StoredProcName = 'Sc_Zip_M_Versao_Arquivo_Inclui;1'
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL Sc_Zip_M_Versao_Arquivo_Inclui;1 (:V_Id_Ve' +
        'rsao, :V_Diretorio, :V_NomeArquivo, :V_Arquivo)}')
    CachedUpdates = True
    Left = 184
    Top = 484
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_Id_Versao'
        ParamType = ptInput
        Size = 5
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_Diretorio'
        ParamType = ptInput
        Size = 80
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_NomeArquivo'
        ParamType = ptInput
        Size = 80
        Value = nil
      end
      item
        DataType = ftBlob
        Name = 'V_Arquivo'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'Sc_Zip_M_Versao_Arquivo_Inclui;1'
  end
  object Tb_VerArq: TMSQuery
    SQL.Strings = (
      'exec Sc_Zip_S_Versao_Arquivo'
      ':Id_Versao')
    CachedUpdates = True
    UpdateObject = Up_VerArq
    BeforeOpen = Tb_VerArqBeforeOpen
    Left = 379
    Top = 170
    ParamData = <
      item
        DataType = ftString
        Name = 'Id_Versao'
        ParamType = ptInput
        Size = 5
        Value = nil
      end>
    object Tb_VerArqId_Versao: TStringField
      FieldName = 'Id_Versao'
      FixedChar = True
      Size = 5
    end
    object Tb_VerArqDiretorio: TStringField
      FieldName = 'Diretorio'
      Size = 80
    end
    object Tb_VerArqNomeArquivo: TStringField
      FieldName = 'NomeArquivo'
      Size = 80
    end
    object Tb_VerArqId_TipoApp: TIntegerField
      FieldName = 'Id_TipoApp'
    end
  end
  object Up_VerArq: TMSUpdateSQL
    ModifySQL.Strings = (
      'exec Sc_Zip_U_Versao_Arquivo'
      ':Old_Id_Versao,'
      ':Old_Diretorio,'
      ':Old_NomeArquivo,'
      ':Id_TipoApp'#9)
    Left = 379
    Top = 122
  end
  object Ds_VerArq: TDataSource
    DataSet = Tb_VerArq
    Left = 379
    Top = 226
  end
  object Tb_TipoApp: TMSQuery
    SQL.Strings = (
      'exec Sc_Vrs_S_TipoApp')
    Left = 464
    Top = 176
    object Tb_TipoAppId_TipoApp: TIntegerField
      FieldName = 'Id_TipoApp'
    end
    object Tb_TipoAppDesc_TipoApp: TStringField
      FieldName = 'Desc_TipoApp'
      Size = 40
    end
  end
  object Ds_TipoApp: TDataSource
    DataSet = Tb_TipoApp
    Left = 467
    Top = 226
  end
  object Img_Tela: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 21495832
    ImageInfo = <
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
          00000000000000000000000000000026256E007225EF009900FF009900FF0072
          25EF0026256E0000000000000000000000000000000000000000000000000000
          00000000000000000000004C32BF00A000FF00B200FF00B800FF00B800FF00B2
          00FF00A000FF004C32BF00000000000000000000000000000000000000000000
          0000000000000026256E009900FF00B200FF00C000FF00C200FF00C200FF00C0
          00FF00B200FF009900FF0026256E000000000000000000000000000000000000
          000000000000007225EF009900FF00B200FF00C000FF00C200FF00C200FF00C0
          00FF00B200FF009900FF007225EF000000000000000000000000000000000000
          000000000000009900FF009900FF03A103FF1EBB1EFF2EC52EFF2EC52EFF1EBB
          1EFF03A103FF009900FF009900FF000000000000000000000000000000000000
          000000000000009900FF009900FF46B546FF5EBF5EFF5EBF5EFF5EBF5EFF5EBF
          5EFF46B546FF009900FF009900FF000000000000000000000000000000000000
          000000000000007225EF009900FF8CD18CFF8CD18CFF8CD18CFF8CD18CFF8CD1
          8CFF8CD18CFF009900FF007225EF000000000000000000000000000000000000
          00000000000000262570009900FF8AD08AFFB9E3B9FFB9E3B9FFB9E3B9FFB9E3
          B9FF8AD08AFF009900FF00262570000000000000000000000000000000000000
          00000000000000000000004D32C00E9F0EFF90D390FFD8EFD8FFD8EFD8FF90D3
          90FF0E9F0EFF004D32C000000000000000000000000000000000000000000000
          000000000000000000000000000000262570007225EF009900FF009900FF0072
          25EF002625700000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000040489200909AFB009FC7FF009FC7FF0090
          9AFB004048920000000000000000000000000000000000000000000000000000
          00000000000000000000007076DF00A7D1FF00BBEAFF00C1F1FF00C1F1FF00BB
          EAFF00A7D1FF007076DF00000000000000000000000000000000000000000000
          00000000000000404892009FC7FF00BBEAFF00CAFCFF00CCFFFF00CCFFFF00CA
          FCFF00BBEAFF009FC7FF00404892000000000000000000000000000000000000
          00000000000000909AFB009FC7FF00BBEAFF00CCFFFF00CCFFFF00CCFFFF00CC
          FFFF00BBEAFF009FC7FF00909AFB000000000000000000000000000000000000
          000000000000009FC7FF009FC7FF03CDFFFF22D3FFFF34D6FFFF34D6FFFF22D3
          FFFF03CDFFFF009FC7FF009FC7FF000000000000000000000000000000000000
          000000000000009FC7FF009FC7FF51DCFFFF6CE2FFFF6CE2FFFF6CE2FFFF6CE2
          FFFF51DCFFFF009FC7FF009FC7FF000000000000000000000000000000000000
          00000000000000909AFB009FC7FFA2DCEBFFA2ECFFFFA2ECFFFFA2ECFFFFA2EC
          FFFFA2DCEBFF009FC7FF00909AFB000000000000000000000000000000000000
          00000000000000404994009FC7FFA2DCEAFFD8F0F6FFD8F7FFFFD8F7FFFFD8F0
          F6FFA2DCEAFF009FC7FF00404994000000000000000000000000000000000000
          00000000000000000000007177E010A5CBFFA0DBEAFFEFF9FBFFEFF9FBFFA0DB
          EAFF10A5CBFF007177E000000000000000000000000000000000000000000000
          00000000000000000000000000000040499400919CFB009FC7FF009FC7FF0091
          9CFB004049940000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000324936AD987127FECC6600FFCC6600FF9871
          27FE324936AD0000000000000000000000000000000000000000000000000000
          00000000000000000000656B3CEFCF6F00FFD68500FFD88B00FFD88B00FFD685
          00FFCF6F00FF656B3CEF00000000000000000000000000000000000000000000
          000000000000324936ADCC6600FFD68500FFDB940AFFDC9724FFDC9724FFDB94
          0AFFD68500FFCC6600FF324936AD000000000000000000000000000000000000
          000000000000987127FECC6600FFD68500FFDC9524FFDC9715FFDC9715FFDC95
          24FFD68500FFCC6600FF987127FE000000000000000000000000000000000000
          000000000000CC6600FFCC6600FFD07103FFDB941EFFDFA02EFFDFA02EFFDB94
          1EFFD07103FFCC6600FFCC6600FF000000000000000000000000000000000000
          000000000000CC6600FFCC6600FFDA9046FFDF9E5EFFDF9E5EFFDF9E5EFFDF9E
          5EFFDA9046FFCC6600FFCC6600FF000000000000000000000000000000000000
          000000000000987127FECC6600FFE8BA8CFFE8BA8CFFE8BA8CFFE8BA8CFFE8BA
          8CFFE8BA8CFFCC6600FF987127FE000000000000000000000000000000000000
          000000000000334A37AFCC6600FFE8B98AFFF1D5B9FFF1D5B9FFF1D5B9FFF1D5
          B9FFE8B98AFFCC6600FF334A37AF000000000000000000000000000000000000
          00000000000000000000676C3BF0CF6E0EFFE9BC90FFF7E8D8FFF7E8D8FFE9BC
          90FFCF6E0EFF676C3BF000000000000000000000000000000000000000000000
          0000000000000000000000000000334A37AF997127FECC6600FFCC6600FF9971
          27FE334A37AF0000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000313F000094BF0000C6FF0000C6FF0000
          94BF0000313F0000000000000000000000000000000000000000000000000000
          000000000000000000000000637F0000CFFF0000E6FF0000ECFF0000ECFF0000
          E6FF0000CFFF0000637F00000000000000000000000000000000000000000000
          0000000000000000313F0000C6FF0000E6FF0000F7FF0000F9FF0000F9FF0000
          F7FF0000E6FF0000C6FF0000313F000000000000000000000000000000000000
          000000000000000094BF0000C6FF0000E6FF0000F8FF0000F9FF0000F9FF0000
          F8FF0000E6FF0000C6FF000094BF000000000000000000000000000000000000
          0000000000000000C6FF0000C6FF0303D0FF1E1EE9FF2E2EEFFF2E2EEFFF1E1E
          E9FF0303D0FF0000C6FF0000C6FF000000000000000000000000000000000000
          0000000000000000C6FF0000C6FF4646D6FF5E5EDBFF5E5EDBFF5E5EDBFF5E5E
          DBFF4646D6FF0000C6FF0000C6FF000000000000000000000000000000000000
          000000000000000094BF0000C6FF8C8CE6FF8C8CE6FF8C8CE6FF8C8CE6FF8C8C
          E6FF8C8CE6FF0000C6FF000094BF000000000000000000000000000000000000
          000000000000000032400000C6FF8A8AE5FFB9B9EFFFB9B9EFFFB9B9EFFFB9B9
          EFFF8A8AE5FF0000C6FF00003240000000000000000000000000000000000000
          00000000000000000000000063800E0EC9FF9090E6FFD8D8F6FFD8D8F6FF9090
          E6FF0E0EC9FF0000638000000000000000000000000000000000000000000000
          000000000000000000000000000000003240000095C00000C6FF0000C6FF0000
          95C0000032400000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000506253C1A79D8BFFACACACFFACACACFFA79D
          8BFF506253C10000000000000000000000000000000000000000000000000000
          00000000000000000000898B73F7B2B2B2FFC0C0C0FFC4C4C4FFC4C4C4FFC0C0
          C0FFB2B2B2FF898B73F700000000000000000000000000000000000000000000
          000000000000506253C1ACACACFFC0C0C0FFCACACAFFCCCCCCFFCCCCCCFFCACA
          CAFFC0C0C0FFACACACFF506253C1000000000000000000000000000000000000
          000000000000A79D8BFFACACACFFC0C0C0FFCBCBCBFFCCCCCCFFCCCCCCFFCBCB
          CBFFC0C0C0FFACACACFFA79D8BFF000000000000000000000000000000000000
          000000000000ACACACFFACACACFFB3B3B3FFC8C8C8FFCFCFCFFFCFCFCFFFC8C8
          C8FFB3B3B3FFACACACFFACACACFF000000000000000000000000000000000000
          000000000000ACACACFFACACACFFC5C5C5FFCECECEFFCECECEFFCECECEFFCECE
          CEFFC5C5C5FFACACACFFACACACFF000000000000000000000000000000000000
          000000000000A79D8BFFACACACFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDE
          DEFFDEDEDEFFACACACFFA79D8BFF000000000000000000000000000000000000
          000000000000516354C3ACACACFFDEDEDEFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
          EFFFDEDEDEFFACACACFF516354C3000000000000000000000000000000000000
          00000000000000000000898C74F8B1B1B1FFE0E0E0FFFAFAFAFFFAFAFAFFE0E0
          E0FFB1B1B1FF898C74F800000000000000000000000000000000000000000000
          0000000000000000000000000000516354C3A89D8BFFACACACFFACACACFFA89D
          8BFF516354C30000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C6F7ED02A9AE2FF0099FFFF0099FFFF2A9A
          E2FF3C6F7ED00000000000000000000000000000000000000000000000000000
          000000000000000000004593B9FB009FFFFF00AFFFFF00B3FFFF00B3FFFF00AF
          FFFF009FFFFF4593B9FB00000000000000000000000000000000000000000000
          0000000000003C6F7ED00099FFFF00AFFFFF00BAFFFF00BCFFFF00BCFFFF00BA
          FFFF00AFFFFF0099FFFF3C6F7ED0000000000000000000000000000000000000
          0000000000002A9AE2FF0099FFFF00AFFFFF00BBFFFF00BCFFFF00BCFFFF00BB
          FFFF00AFFFFF0099FFFF2A9AE2FF000000000000000000000000000000000000
          0000000000000099FFFF0099FFFF03A0FFFF22BAFFFF33C2FFFF33C2FFFF22BA
          FFFF03A0FFFF0099FFFF0099FFFF000000000000000000000000000000000000
          0000000000000099FFFF0099FFFF4EB8FFFF68C3FFFF68C3FFFF68C3FFFF68C3
          FFFF4EB8FFFF0099FFFF0099FFFF000000000000000000000000000000000000
          0000000000002A9AE2FF0099FFFF9BD7FFFF9BD7FFFF9BD7FFFF9BD7FFFF9BD7
          FFFF9BD7FFFF0099FFFF2A9AE2FF000000000000000000000000000000000000
          0000000000003D707FD20099FFFF9AD6FFFFCDEBFFFFCDEBFFFFCDEBFFFFCDEB
          FFFF9AD6FFFF0099FFFF3D707FD2000000000000000000000000000000000000
          000000000000000000004593BAFC109FFFFFA0D9FFFFEFF9FFFFEFF9FFFFA0D9
          FFFF109FFFFF4593BAFC00000000000000000000000000000000000000000000
          00000000000000000000000000003D707FD22A9AE2FF0099FFFF0099FFFF2A9A
          E2FF3D707FD20000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000375E68DC284557FF282828FF282828FF2845
          57FF375E68DC0000000000000000000000000000000000000000000000000000
          00000000000000000000375D71FD323232FF4A4A4AFF505050FF505050FF4A4A
          4AFF323232FF375D71FD00000000000000000000000000000000000000000000
          000000000000375E68DC282828FF4A4A4AFF5B5B5BFF5E5E5EFF5E5E5EFF5B5B
          5BFF4A4A4AFF282828FF375E68DC000000000000000000000000000000000000
          000000000000284557FF282828FF4A4A4AFF5C5C5CFF5E5E5EFF5E5E5EFF5C5C
          5CFF4A4A4AFF282828FF284557FF000000000000000000000000000000000000
          000000000000282828FF282828FF343434FF5F5F5FFF6F6F6FFF6F6F6FFF5F5F
          5FFF343434FF282828FF282828FF000000000000000000000000000000000000
          000000000000282828FF282828FF636363FF777777FF777777FF777777FF7777
          77FF636363FF282828FF282828FF000000000000000000000000000000000000
          000000000000284557FF282828FF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E
          9EFF9E9E9EFF282828FF284557FF000000000000000000000000000000000000
          000000000000375E69DD282828FF9D9D9DFFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
          C4FF9D9D9DFF282828FF375E69DD000000000000000000000000000000000000
          00000000000000000000375E72FE343434FFA1A1A1FFDEDEDEFFDEDEDEFFA1A1
          A1FF343434FF375E72FE00000000000000000000000000000000000000000000
          0000000000000000000000000000375E69DD284456FF282828FF282828FF2844
          56FF375E69DD0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object sp_StatusPendente: TMSStoredProc
    StoredProcName = 'Sc_Zip_M_StatusPendente;1'
    SQL.Strings = (
      '{:RETURN_VALUE = CALL Sc_Zip_M_StatusPendente;1 (:V_Id_Versao)}')
    Left = 512
    Top = 484
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftString
        Name = 'V_Id_Versao'
        ParamType = ptInput
        Size = 5
        Value = nil
      end>
    CommandStoredProcName = 'Sc_Zip_M_StatusPendente;1'
  end
end
