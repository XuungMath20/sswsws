local MarketplaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local redzlib = {
    Themes = {
        Slayer = {
            ["Color Hub 1"] = ColorSequence.new({
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)),
                ColorSequenceKeypoint.new(0.50, Color3.fromRGB(20, 0, 30)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))
            }),
            ["Color Hub 2"] = Color3.fromRGB(0, 0, 0),
            ["Color Stroke"] = Color3.fromRGB(150, 0, 255),
            ["Color Theme"] = Color3.fromRGB(180, 0, 255),
            ["Color Text"] = Color3.fromRGB(255, 255, 255),
            ["Color Dark Text"] = Color3.fromRGB(150, 100, 200),
            ["Color Bg"] = Color3.fromRGB(8, 8, 12),
            ["Color Element"] = Color3.fromRGB(18, 18, 24)
        },
    },
    Info = { Version = "2.0.0" },
    Save = { UISize = {580, 420}, TabSize = 145, Theme = "Slayer" },
    Settings = {}, Connection = {}, Instances = {}, Elements = {}, Options = {}, Flags = {}, Tabs = {},
    Icons = (function()
        return {
            ["accessibility"] = "rbxassetid://10709751939",
            ["activity"] = "rbxassetid://10709752035",
            ["airvent"] = "rbxassetid://10709752131",
            ["airplay"] = "rbxassetid://10709752254",
            ["alarmcheck"] = "rbxassetid://10709752405",
            ["alarmclock"] = "rbxassetid://10709752630",
            ["alarmclockoff"] = "rbxassetid://10709752508",
            ["alarmminus"] = "rbxassetid://10709752732",
            ["alarmplus"] = "rbxassetid://10709752825",
            ["album"] = "rbxassetid://10709752906",
            ["alertcircle"] = "rbxassetid://10709752996",
            ["alertoctagon"] = "rbxassetid://10709753064",
            ["alerttriangle"] = "rbxassetid://10709753149",
            ["aligncenter"] = "rbxassetid://10709753570",
            ["aligncenterhorizontal"] = "rbxassetid://10709753272",
            ["aligncentervertical"] = "rbxassetid://10709753421",
            ["alignendhorizontal"] = "rbxassetid://10709753692",
            ["alignendvertical"] = "rbxassetid://10709753808",
            ["alignhorizontaldistributecenter"] = "rbxassetid://10747779791",
            ["alignhorizontaldistributeend"] = "rbxassetid://10747784534",
            ["alignhorizontaldistributestart"] = "rbxassetid://10709754118",
            ["alignhorizontaljustifycenter"] = "rbxassetid://10709754204",
            ["alignhorizontaljustifyend"] = "rbxassetid://10709754317",
            ["alignhorizontaljustifystart"] = "rbxassetid://10709754436",
            ["alignhorizontalspacearound"] = "rbxassetid://10709754590",
            ["alignhorizontalspacebetween"] = "rbxassetid://10709754749",
            ["alignjustify"] = "rbxassetid://10709759610",
            ["alignleft"] = "rbxassetid://10709759764",
            ["alignright"] = "rbxassetid://10709759895",
            ["alignstarthorizontal"] = "rbxassetid://10709760051",
            ["alignstartvertical"] = "rbxassetid://10709760244",
            ["alignverticaldistributecenter"] = "rbxassetid://10709760351",
            ["alignverticaldistributeend"] = "rbxassetid://10709760434",
            ["alignverticaldistributestart"] = "rbxassetid://10709760612",
            ["alignverticaljustifycenter"] = "rbxassetid://10709760814",
            ["alignverticaljustifyend"] = "rbxassetid://10709761003",
            ["alignverticaljustifystart"] = "rbxassetid://10709761176",
            ["alignverticalspacearound"] = "rbxassetid://10709761324",
            ["alignverticalspacebetween"] = "rbxassetid://10709761434",
            ["anchor"] = "rbxassetid://10709761530",
            ["angry"] = "rbxassetid://10709761629",
            ["annoyed"] = "rbxassetid://10709761722",
            ["aperture"] = "rbxassetid://10709761813",
            ["apple"] = "rbxassetid://10709761889",
            ["archive"] = "rbxassetid://10709762233",
            ["archiverestore"] = "rbxassetid://10709762058",
            ["armchair"] = "rbxassetid://10709762327",
            ["arrowbigdown"] = "rbxassetid://10747796644",
            ["arrowbigleft"] = "rbxassetid://10709762574",
            ["arrowbigright"] = "rbxassetid://10709762727",
            ["arrowbigup"] = "rbxassetid://10709762879",
            ["arrowdown"] = "rbxassetid://10709767827",
            ["arrowdowncircle"] = "rbxassetid://10709763034",
            ["arrowdownleft"] = "rbxassetid://10709767656",
            ["arrowdownright"] = "rbxassetid://10709767750",
            ["arrowleft"] = "rbxassetid://10709768114",
            ["arrowleftcircle"] = "rbxassetid://10709767936",
            ["arrowleftright"] = "rbxassetid://10709768019",
            ["arrowright"] = "rbxassetid://10709768347",
            ["arrowrightcircle"] = "rbxassetid://10709768226",
            ["arrowup"] = "rbxassetid://10709768939",
            ["arrowupcircle"] = "rbxassetid://10709768432",
            ["arrowupdown"] = "rbxassetid://10709768538",
            ["arrowupleft"] = "rbxassetid://10709768661",
            ["arrowupright"] = "rbxassetid://10709768787",
            ["asterisk"] = "rbxassetid://10709769095",
            ["atsign"] = "rbxassetid://10709769286",
            ["award"] = "rbxassetid://10709769406",
            ["axe"] = "rbxassetid://10709769508",
            ["axis3d"] = "rbxassetid://10709769598",
            ["baby"] = "rbxassetid://10709769732",
            ["backpack"] = "rbxassetid://10709769841",
            ["baggageclaim"] = "rbxassetid://10709769935",
            ["banana"] = "rbxassetid://10709770005",
            ["banknote"] = "rbxassetid://10709770178",
            ["barchart"] = "rbxassetid://10709773755",
            ["barchart2"] = "rbxassetid://10709770317",
            ["barchart3"] = "rbxassetid://10709770431",
            ["barchart4"] = "rbxassetid://10709770560",
            ["barcharthorizontal"] = "rbxassetid://10709773669",
            ["barcode"] = "rbxassetid://10747360675",
            ["baseline"] = "rbxassetid://10709773863",
            ["bath"] = "rbxassetid://10709773963",
            ["battery"] = "rbxassetid://10709774640",
            ["batterycharging"] = "rbxassetid://10709774068",
            ["batteryfull"] = "rbxassetid://10709774206",
            ["batterylow"] = "rbxassetid://10709774370",
            ["batterymedium"] = "rbxassetid://10709774513",
            ["beaker"] = "rbxassetid://10709774756",
            ["bed"] = "rbxassetid://10709775036",
            ["beddouble"] = "rbxassetid://10709774864",
            ["bedsingle"] = "rbxassetid://10709774968",
            ["beer"] = "rbxassetid://10709775167",
            ["bell"] = "rbxassetid://10709775704",
            ["bellminus"] = "rbxassetid://10709775241",
            ["belloff"] = "rbxassetid://10709775320",
            ["bellplus"] = "rbxassetid://10709775448",
            ["bellring"] = "rbxassetid://10709775560",
            ["bike"] = "rbxassetid://10709775894",
            ["binary"] = "rbxassetid://10709776050",
            ["bitcoin"] = "rbxassetid://10709776126",
            ["bluetooth"] = "rbxassetid://10709776655",
            ["bluetoothconnected"] = "rbxassetid://10709776240",
            ["bluetoothoff"] = "rbxassetid://10709776344",
            ["bluetoothsearching"] = "rbxassetid://10709776501",
            ["bold"] = "rbxassetid://10747813908",
            ["bomb"] = "rbxassetid://10709781460",
            ["bone"] = "rbxassetid://10709781605",
            ["book"] = "rbxassetid://10709781824",
            ["bookopen"] = "rbxassetid://10709781717",
            ["bookmark"] = "rbxassetid://10709782154",
            ["bookmarkminus"] = "rbxassetid://10709781919",
            ["bookmarkplus"] = "rbxassetid://10709782044",
            ["bot"] = "rbxassetid://10709782230",
            ["box"] = "rbxassetid://10709782497",
            ["boxselect"] = "rbxassetid://10709782342",
            ["boxes"] = "rbxassetid://10709782582",
            ["briefcase"] = "rbxassetid://10709782662",
            ["brush"] = "rbxassetid://10709782758",
            ["bug"] = "rbxassetid://10709782845",
            ["building"] = "rbxassetid://10709783051",
            ["building2"] = "rbxassetid://10709782939",
            ["bus"] = "rbxassetid://10709783137",
            ["cake"] = "rbxassetid://10709783217",
            ["calculator"] = "rbxassetid://10709783311",
            ["calendar"] = "rbxassetid://10709789505",
            ["calendarcheck"] = "rbxassetid://10709783474",
            ["calendarcheck2"] = "rbxassetid://10709783392",
            ["calendarclock"] = "rbxassetid://10709783577",
            ["calendardays"] = "rbxassetid://10709783673",
            ["calendarheart"] = "rbxassetid://10709783835",
            ["calendarminus"] = "rbxassetid://10709783959",
            ["calendaroff"] = "rbxassetid://10709788784",
            ["calendarplus"] = "rbxassetid://10709788937",
            ["calendarrange"] = "rbxassetid://10709789053",
            ["calendarsearch"] = "rbxassetid://10709789200",
            ["calendarx"] = "rbxassetid://10709789407",
            ["calendarx2"] = "rbxassetid://10709789329",
            ["camera"] = "rbxassetid://10709789686",
            ["cameraoff"] = "rbxassetid://10747822677",
            ["car"] = "rbxassetid://10709789810",
            ["carrot"] = "rbxassetid://10709789960",
            ["cast"] = "rbxassetid://10709790097",
            ["charge"] = "rbxassetid://10709790202",
            ["check"] = "rbxassetid://10709790644",
            ["checkcircle"] = "rbxassetid://10709790387",
            ["checkcircle2"] = "rbxassetid://10709790298",
            ["checksquare"] = "rbxassetid://10709790537",
            ["chefhat"] = "rbxassetid://10709790757",
            ["cherry"] = "rbxassetid://10709790875",
            ["chevrondown"] = "rbxassetid://10709790948",
            ["chevronfirst"] = "rbxassetid://10709791015",
            ["chevronlast"] = "rbxassetid://10709791130",
            ["chevronleft"] = "rbxassetid://10709791281",
            ["chevronright"] = "rbxassetid://10709791437",
            ["chevronup"] = "rbxassetid://10709791523",
            ["chevronsdown"] = "rbxassetid://10709796864",
            ["chevronsdownup"] = "rbxassetid://10709791632",
            ["chevronsleft"] = "rbxassetid://10709797151",
            ["chevronsleftright"] = "rbxassetid://10709797006",
            ["chevronsright"] = "rbxassetid://10709797382",
            ["chevronsrightleft"] = "rbxassetid://10709797274",
            ["chevronsup"] = "rbxassetid://10709797622",
            ["chevronsupdown"] = "rbxassetid://10709797508",
            ["chrome"] = "rbxassetid://10709797725",
            ["circle"] = "rbxassetid://10709798174",
            ["circledot"] = "rbxassetid://10709797837",
            ["circleellipsis"] = "rbxassetid://10709797985",
            ["circleslashed"] = "rbxassetid://10709798100",
            ["citrus"] = "rbxassetid://10709798276",
            ["clapperboard"] = "rbxassetid://10709798350",
            ["clipboard"] = "rbxassetid://10709799288",
            ["clipboardcheck"] = "rbxassetid://10709798443",
            ["clipboardcopy"] = "rbxassetid://10709798574",
            ["clipboardedit"] = "rbxassetid://10709798682",
            ["clipboardlist"] = "rbxassetid://10709798792",
            ["clipboardsignature"] = "rbxassetid://10709798890",
            ["clipboardtype"] = "rbxassetid://10709798999",
            ["clipboardx"] = "rbxassetid://10709799124",
            ["clock"] = "rbxassetid://10709805144",
            ["clock1"] = "rbxassetid://10709799535",
            ["clock10"] = "rbxassetid://10709799718",
            ["clock11"] = "rbxassetid://10709799818",
            ["clock12"] = "rbxassetid://10709799962",
            ["clock2"] = "rbxassetid://10709803876",
            ["clock3"] = "rbxassetid://10709803989",
            ["clock4"] = "rbxassetid://10709804164",
            ["clock5"] = "rbxassetid://10709804291",
            ["clock6"] = "rbxassetid://10709804435",
            ["clock7"] = "rbxassetid://10709804599",
            ["clock8"] = "rbxassetid://10709804784",
            ["clock9"] = "rbxassetid://10709804996",
            ["cloud"] = "rbxassetid://10709806740",
            ["cloudcog"] = "rbxassetid://10709805262",
            ["clouddrizzle"] = "rbxassetid://10709805371",
            ["cloudfog"] = "rbxassetid://10709805477",
            ["cloudhail"] = "rbxassetid://10709805596",
            ["cloudlightning"] = "rbxassetid://10709805727",
            ["cloudmoon"] = "rbxassetid://10709805942",
            ["cloudmoonrain"] = "rbxassetid://10709805838",
            ["cloudoff"] = "rbxassetid://10709806060",
            ["cloudrain"] = "rbxassetid://10709806277",
            ["cloudrainwind"] = "rbxassetid://10709806166",
            ["cloudsnow"] = "rbxassetid://10709806374",
            ["cloudsun"] = "rbxassetid://10709806631",
            ["cloudsunrain"] = "rbxassetid://10709806475",
            ["cloudy"] = "rbxassetid://10709806859",
            ["clover"] = "rbxassetid://10709806995",
            ["code"] = "rbxassetid://10709810463",
            ["code2"] = "rbxassetid://10709807111",
            ["codepen"] = "rbxassetid://10709810534",
            ["codesandbox"] = "rbxassetid://10709810676",
            ["coffee"] = "rbxassetid://10709810814",
            ["cog"] = "rbxassetid://10709810948",
            ["coins"] = "rbxassetid://10709811110",
            ["columns"] = "rbxassetid://10709811261",
            ["command"] = "rbxassetid://10709811365",
            ["compass"] = "rbxassetid://10709811445",
            ["component"] = "rbxassetid://10709811595",
            ["conciergebell"] = "rbxassetid://10709811706",
            ["connection"] = "rbxassetid://10747361219",
            ["contact"] = "rbxassetid://10709811834",
            ["contrast"] = "rbxassetid://10709811939",
            ["cookie"] = "rbxassetid://10709812067",
            ["copy"] = "rbxassetid://10709812159",
            ["copyleft"] = "rbxassetid://10709812251",
            ["copyright"] = "rbxassetid://10709812311",
            ["cornerdownleft"] = "rbxassetid://10709812396",
            ["cornerdownright"] = "rbxassetid://10709812485",
            ["cornerleftdown"] = "rbxassetid://10709812632",
            ["cornerleftup"] = "rbxassetid://10709812784",
            ["cornerrightdown"] = "rbxassetid://10709812939",
            ["cornerrightup"] = "rbxassetid://10709813094",
            ["cornerupleft"] = "rbxassetid://10709813185",
            ["cornerupright"] = "rbxassetid://10709813281",
            ["cpu"] = "rbxassetid://10709813383",
            ["croissant"] = "rbxassetid://10709818125",
            ["crop"] = "rbxassetid://10709818245",
            ["cross"] = "rbxassetid://10709818399",
            ["crosshair"] = "rbxassetid://10709818534",
            ["crown"] = "rbxassetid://10709818626",
            ["cupsoda"] = "rbxassetid://10709818763",
            ["curlybraces"] = "rbxassetid://10709818847",
            ["currency"] = "rbxassetid://10709818931",
            ["database"] = "rbxassetid://10709818996",
            ["delete"] = "rbxassetid://10709819059",
            ["diamond"] = "rbxassetid://10709819149",
            ["dice1"] = "rbxassetid://10709819266",
            ["dice2"] = "rbxassetid://10709819361",
            ["dice3"] = "rbxassetid://10709819508",
            ["dice4"] = "rbxassetid://10709819670",
            ["dice5"] = "rbxassetid://10709819801",
            ["dice6"] = "rbxassetid://10709819896",
            ["dices"] = "rbxassetid://10723343321",
            ["diff"] = "rbxassetid://10723343416",
            ["disc"] = "rbxassetid://10723343537",
            ["divide"] = "rbxassetid://10723343805",
            ["dividecircle"] = "rbxassetid://10723343636",
            ["dividesquare"] = "rbxassetid://10723343737",
            ["dollarsign"] = "rbxassetid://10723343958",
            ["download"] = "rbxassetid://10723344270",
            ["downloadcloud"] = "rbxassetid://10723344088",
            ["droplet"] = "rbxassetid://10723344432",
            ["droplets"] = "rbxassetid://10734883356",
            ["drumstick"] = "rbxassetid://10723344737",
            ["edit"] = "rbxassetid://10734883598",
            ["edit2"] = "rbxassetid://10723344885",
            ["edit3"] = "rbxassetid://10723345088",
            ["egg"] = "rbxassetid://10723345518",
            ["eggfried"] = "rbxassetid://10723345347",
            ["electricity"] = "rbxassetid://10723345749",
            ["electricityoff"] = "rbxassetid://10723345643",
            ["equal"] = "rbxassetid://10723345990",
            ["equalnot"] = "rbxassetid://10723345866",
            ["eraser"] = "rbxassetid://10723346158",
            ["euro"] = "rbxassetid://10723346372",
            ["expand"] = "rbxassetid://10723346553",
            ["externallink"] = "rbxassetid://10723346684",
            ["eye"] = "rbxassetid://10723346959",
            ["eyeoff"] = "rbxassetid://10723346871",
            ["factory"] = "rbxassetid://10723347051",
            ["fan"] = "rbxassetid://10723354359",
            ["fastforward"] = "rbxassetid://10723354521",
            ["feather"] = "rbxassetid://10723354671",
            ["figma"] = "rbxassetid://10723354801",
            ["file"] = "rbxassetid://10723374641",
            ["filearchive"] = "rbxassetid://10723354921",
            ["fileaudio"] = "rbxassetid://10723355148",
            ["fileaudio2"] = "rbxassetid://10723355026",
            ["fileaxis3d"] = "rbxassetid://10723355272",
            ["filebadge"] = "rbxassetid://10723355622",
            ["filebadge2"] = "rbxassetid://10723355451",
            ["filebarchart"] = "rbxassetid://10723355887",
            ["filebarchart2"] = "rbxassetid://10723355746",
            ["filebox"] = "rbxassetid://10723355989",
            ["filecheck"] = "rbxassetid://10723356210",
            ["filecheck2"] = "rbxassetid://10723356100",
            ["fileclock"] = "rbxassetid://10723356329",
            ["filecode"] = "rbxassetid://10723356507",
            ["filecog"] = "rbxassetid://10723356830",
            ["filecog2"] = "rbxassetid://10723356676",
            ["filediff"] = "rbxassetid://10723357039",
            ["filedigit"] = "rbxassetid://10723357151",
            ["filedown"] = "rbxassetid://10723357322",
            ["fileedit"] = "rbxassetid://10723357495",
            ["fileheart"] = "rbxassetid://10723357637",
            ["fileimage"] = "rbxassetid://10723357790",
            ["fileinput"] = "rbxassetid://10723357933",
            ["filejson"] = "rbxassetid://10723364435",
            ["filejson2"] = "rbxassetid://10723364361",
            ["filekey"] = "rbxassetid://10723364605",
            ["filekey2"] = "rbxassetid://10723364515",
            ["filelinechart"] = "rbxassetid://10723364725",
            ["filelock"] = "rbxassetid://10723364957",
            ["filelock2"] = "rbxassetid://10723364861",
            ["fileminus"] = "rbxassetid://10723365254",
            ["fileminus2"] = "rbxassetid://10723365086",
            ["fileoutput"] = "rbxassetid://10723365457",
            ["filepiechart"] = "rbxassetid://10723365598",
            ["fileplus"] = "rbxassetid://10723365877",
            ["fileplus2"] = "rbxassetid://10723365766",
            ["filequestion"] = "rbxassetid://10723365987",
            ["filescan"] = "rbxassetid://10723366167",
            ["filesearch"] = "rbxassetid://10723366550",
            ["filesearch2"] = "rbxassetid://10723366340",
            ["filesignature"] = "rbxassetid://10723366741",
            ["filespreadsheet"] = "rbxassetid://10723366962",
            ["filesymlink"] = "rbxassetid://10723367098",
            ["fileterminal"] = "rbxassetid://10723367244",
            ["filetext"] = "rbxassetid://10723367380",
            ["filetype"] = "rbxassetid://10723367606",
            ["filetype2"] = "rbxassetid://10723367509",
            ["fileup"] = "rbxassetid://10723367734",
            ["filevideo"] = "rbxassetid://10723373884",
            ["filevideo2"] = "rbxassetid://10723367834",
            ["filevolume"] = "rbxassetid://10723374172",
            ["filevolume2"] = "rbxassetid://10723374030",
            ["filewarning"] = "rbxassetid://10723374276",
            ["filex"] = "rbxassetid://10723374544",
            ["filex2"] = "rbxassetid://10723374378",
            ["files"] = "rbxassetid://10723374759",
            ["film"] = "rbxassetid://10723374981",
            ["filter"] = "rbxassetid://10723375128",
            ["fingerprint"] = "rbxassetid://10723375250",
            ["flag"] = "rbxassetid://10723375890",
            ["flagoff"] = "rbxassetid://10723375443",
            ["flagtriangleleft"] = "rbxassetid://10723375608",
            ["flagtriangleright"] = "rbxassetid://10723375727",
            ["flame"] = "rbxassetid://10723376114",
            ["flashlight"] = "rbxassetid://10723376471",
            ["flashlightoff"] = "rbxassetid://10723376365",
            ["flaskconical"] = "rbxassetid://10734883986",
            ["flaskround"] = "rbxassetid://10723376614",
            ["fliphorizontal"] = "rbxassetid://10723376884",
            ["fliphorizontal2"] = "rbxassetid://10723376745",
            ["flipvertical"] = "rbxassetid://10723377138",
            ["flipvertical2"] = "rbxassetid://10723377026",
            ["flower"] = "rbxassetid://10747830374",
            ["flower2"] = "rbxassetid://10723377305",
            ["focus"] = "rbxassetid://10723377537",
            ["folder"] = "rbxassetid://10723387563",
            ["folderarchive"] = "rbxassetid://10723384478",
            ["foldercheck"] = "rbxassetid://10723384605",
            ["folderclock"] = "rbxassetid://10723384731",
            ["folderclosed"] = "rbxassetid://10723384893",
            ["foldercog"] = "rbxassetid://10723385213",
            ["foldercog2"] = "rbxassetid://10723385036",
            ["folderdown"] = "rbxassetid://10723385338",
            ["folderedit"] = "rbxassetid://10723385445",
            ["folderheart"] = "rbxassetid://10723385545",
            ["folderinput"] = "rbxassetid://10723385721",
            ["folderkey"] = "rbxassetid://10723385848",
            ["folderlock"] = "rbxassetid://10723386005",
            ["folderminus"] = "rbxassetid://10723386127",
            ["folderopen"] = "rbxassetid://10723386277",
            ["folderoutput"] = "rbxassetid://10723386386",
            ["folderplus"] = "rbxassetid://10723386531",
            ["foldersearch"] = "rbxassetid://10723386787",
            ["foldersearch2"] = "rbxassetid://10723386674",
            ["foldersymlink"] = "rbxassetid://10723386930",
            ["foldertree"] = "rbxassetid://10723387085",
            ["folderup"] = "rbxassetid://10723387265",
            ["folderx"] = "rbxassetid://10723387448",
            ["folders"] = "rbxassetid://10723387721",
            ["forminput"] = "rbxassetid://10723387841",
            ["forward"] = "rbxassetid://10723388016",
            ["frame"] = "rbxassetid://10723394389",
            ["framer"] = "rbxassetid://10723394565",
            ["frown"] = "rbxassetid://10723394681",
            ["fuel"] = "rbxassetid://10723394846",
            ["functionsquare"] = "rbxassetid://10723395041",
            ["gamepad"] = "rbxassetid://10723395457",
            ["gamepad2"] = "rbxassetid://10723395215",
            ["gauge"] = "rbxassetid://10723395708",
            ["gavel"] = "rbxassetid://10723395896",
            ["gem"] = "rbxassetid://10723396000",
            ["ghost"] = "rbxassetid://10723396107",
            ["gift"] = "rbxassetid://10723396402",
            ["giftcard"] = "rbxassetid://10723396225",
            ["gitbranch"] = "rbxassetid://10723396676",
            ["gitbranchplus"] = "rbxassetid://10723396542",
            ["gitcommit"] = "rbxassetid://10723396812",
            ["gitcompare"] = "rbxassetid://10723396954",
            ["gitfork"] = "rbxassetid://10723397049",
            ["gitmerge"] = "rbxassetid://10723397165",
            ["gitpullrequest"] = "rbxassetid://10723397431",
            ["gitpullrequestclosed"] = "rbxassetid://10723397268",
            ["gitpullrequestdraft"] = "rbxassetid://10734884302",
            ["glass"] = "rbxassetid://10723397788",
            ["glass2"] = "rbxassetid://10723397529",
            ["glasswater"] = "rbxassetid://10723397678",
            ["glasses"] = "rbxassetid://10723397895",
            ["globe"] = "rbxassetid://10723404337",
            ["globe2"] = "rbxassetid://10723398002",
            ["grab"] = "rbxassetid://10723404472",
            ["graduationcap"] = "rbxassetid://10723404691",
            ["grape"] = "rbxassetid://10723404822",
            ["grid"] = "rbxassetid://10723404936",
            ["griphorizontal"] = "rbxassetid://10723405089",
            ["gripvertical"] = "rbxassetid://10723405236",
            ["hammer"] = "rbxassetid://10723405360",
            ["hand"] = "rbxassetid://10723405649",
            ["handmetal"] = "rbxassetid://10723405508",
            ["harddrive"] = "rbxassetid://10723405749",
            ["hardhat"] = "rbxassetid://10723405859",
            ["hash"] = "rbxassetid://10723405975",
            ["haze"] = "rbxassetid://10723406078",
            ["headphones"] = "rbxassetid://10723406165",
            ["heart"] = "rbxassetid://10723406885",
            ["heartcrack"] = "rbxassetid://10723406299",
            ["hearthandshake"] = "rbxassetid://10723406480",
            ["heartoff"] = "rbxassetid://10723406662",
            ["heartpulse"] = "rbxassetid://10723406795",
            ["helpcircle"] = "rbxassetid://10723406988",
            ["hexagon"] = "rbxassetid://10723407092",
            ["highlighter"] = "rbxassetid://10723407192",
            ["history"] = "rbxassetid://10723407335",
            ["home"] = "rbxassetid://10723407389",
            ["hourglass"] = "rbxassetid://10723407498",
            ["icecream"] = "rbxassetid://10723414308",
            ["image"] = "rbxassetid://10723415040",
            ["imageminus"] = "rbxassetid://10723414487",
            ["imageoff"] = "rbxassetid://10723414677",
            ["imageplus"] = "rbxassetid://10723414827",
            ["import"] = "rbxassetid://10723415205",
            ["inbox"] = "rbxassetid://10723415335",
            ["indent"] = "rbxassetid://10723415494",
            ["indianrupee"] = "rbxassetid://10723415642",
            ["infinity"] = "rbxassetid://10723415766",
            ["info"] = "rbxassetid://10723415903",
            ["inspect"] = "rbxassetid://10723416057",
            ["italic"] = "rbxassetid://10723416195",
            ["japaneseyen"] = "rbxassetid://10723416363",
            ["joystick"] = "rbxassetid://10723416527",
            ["key"] = "rbxassetid://10723416652",
            ["keyboard"] = "rbxassetid://10723416765",
            ["lamp"] = "rbxassetid://10723417513",
            ["lampceiling"] = "rbxassetid://10723416922",
            ["lampdesk"] = "rbxassetid://10723417016",
            ["lampfloor"] = "rbxassetid://10723417131",
            ["lampwalldown"] = "rbxassetid://10723417240",
            ["lampwallup"] = "rbxassetid://10723417356",
            ["landmark"] = "rbxassetid://10723417608",
            ["languages"] = "rbxassetid://10723417703",
            ["laptop"] = "rbxassetid://10723423881",
            ["laptop2"] = "rbxassetid://10723417797",
            ["lasso"] = "rbxassetid://10723424235",
            ["lassoselect"] = "rbxassetid://10723424058",
            ["laugh"] = "rbxassetid://10723424372",
            ["layers"] = "rbxassetid://10723424505",
            ["layout"] = "rbxassetid://10723425376",
            ["layoutdashboard"] = "rbxassetid://10723424646",
            ["layoutgrid"] = "rbxassetid://10723424838",
            ["layoutlist"] = "rbxassetid://10723424963",
            ["layouttemplate"] = "rbxassetid://10723425187",
            ["leaf"] = "rbxassetid://10723425539",
            ["library"] = "rbxassetid://10723425615",
            ["lifebuoy"] = "rbxassetid://10723425685",
            ["lightbulb"] = "rbxassetid://10723425852",
            ["lightbulboff"] = "rbxassetid://10723425762",
            ["linechart"] = "rbxassetid://10723426393",
            ["link"] = "rbxassetid://10723426722",
            ["link2"] = "rbxassetid://10723426595",
            ["link2off"] = "rbxassetid://10723426513",
            ["list"] = "rbxassetid://10723433811",
            ["listchecks"] = "rbxassetid://10734884548",
            ["listend"] = "rbxassetid://10723426886",
            ["listminus"] = "rbxassetid://10723426986",
            ["listmusic"] = "rbxassetid://10723427081",
            ["listordered"] = "rbxassetid://10723427199",
            ["listplus"] = "rbxassetid://10723427334",
            ["liststart"] = "rbxassetid://10723427494",
            ["listvideo"] = "rbxassetid://10723427619",
            ["listx"] = "rbxassetid://10723433655",
            ["loader"] = "rbxassetid://10723434070",
            ["loader2"] = "rbxassetid://10723433935",
            ["locate"] = "rbxassetid://10723434557",
            ["locatefixed"] = "rbxassetid://10723434236",
            ["locateoff"] = "rbxassetid://10723434379",
            ["lock"] = "rbxassetid://10723434711",
            ["login"] = "rbxassetid://10723434830",
            ["logout"] = "rbxassetid://10723434906",
            ["luggage"] = "rbxassetid://10723434993",
            ["magnet"] = "rbxassetid://10723435069",
            ["mail"] = "rbxassetid://10734885430",
            ["mailcheck"] = "rbxassetid://10723435182",
            ["mailminus"] = "rbxassetid://10723435261",
            ["mailopen"] = "rbxassetid://10723435342",
            ["mailplus"] = "rbxassetid://10723435443",
            ["mailquestion"] = "rbxassetid://10723435515",
            ["mailsearch"] = "rbxassetid://10734884739",
            ["mailwarning"] = "rbxassetid://10734885015",
            ["mailx"] = "rbxassetid://10734885247",
            ["mails"] = "rbxassetid://10734885614",
            ["map"] = "rbxassetid://10734886202",
            ["mappin"] = "rbxassetid://10734886004",
            ["mappinoff"] = "rbxassetid://10734885803",
            ["maximize"] = "rbxassetid://10734886735",
            ["maximize2"] = "rbxassetid://10734886496",
            ["medal"] = "rbxassetid://10734887072",
            ["megaphone"] = "rbxassetid://10734887454",
            ["megaphoneoff"] = "rbxassetid://10734887311",
            ["meh"] = "rbxassetid://10734887603",
            ["menu"] = "rbxassetid://10734887784",
            ["messagecircle"] = "rbxassetid://10734888000",
            ["messagesquare"] = "rbxassetid://10734888228",
            ["mic"] = "rbxassetid://10734888864",
            ["mic2"] = "rbxassetid://10734888430",
            ["micoff"] = "rbxassetid://10734888646",
            ["microscope"] = "rbxassetid://10734889106",
            ["microwave"] = "rbxassetid://10734895076",
            ["milestone"] = "rbxassetid://10734895310",
            ["minimize"] = "rbxassetid://10734895698",
            ["minimize2"] = "rbxassetid://10734895530",
            ["minus"] = "rbxassetid://10734896206",
            ["minuscircle"] = "rbxassetid://10734895856",
            ["minussquare"] = "rbxassetid://10734896029",
            ["monitor"] = "rbxassetid://10734896881",
            ["monitoroff"] = "rbxassetid://10734896360",
            ["monitorspeaker"] = "rbxassetid://10734896512",
            ["moon"] = "rbxassetid://10734897102",
            ["morehorizontal"] = "rbxassetid://10734897250",
            ["morevertical"] = "rbxassetid://10734897387",
            ["mountain"] = "rbxassetid://10734897956",
            ["mountainsnow"] = "rbxassetid://10734897665",
            ["mouse"] = "rbxassetid://10734898592",
            ["mousepointer"] = "rbxassetid://10734898476",
            ["mousepointer2"] = "rbxassetid://10734898194",
            ["mousepointerclick"] = "rbxassetid://10734898355",
            ["move"] = "rbxassetid://10734900011",
            ["move3d"] = "rbxassetid://10734898756",
            ["movediagonal"] = "rbxassetid://10734899164",
            ["movediagonal2"] = "rbxassetid://10734898934",
            ["movehorizontal"] = "rbxassetid://10734899414",
            ["movevertical"] = "rbxassetid://10734899821",
            ["music"] = "rbxassetid://10734905958",
            ["music2"] = "rbxassetid://10734900215",
            ["music3"] = "rbxassetid://10734905665",
            ["music4"] = "rbxassetid://10734905823",
            ["navigation"] = "rbxassetid://10734906744",
            ["navigation2"] = "rbxassetid://10734906332",
            ["navigation2off"] = "rbxassetid://10734906144",
            ["navigationoff"] = "rbxassetid://10734906580",
            ["network"] = "rbxassetid://10734906975",
            ["newspaper"] = "rbxassetid://10734907168",
            ["octagon"] = "rbxassetid://10734907361",
            ["option"] = "rbxassetid://10734907649",
            ["outdent"] = "rbxassetid://10734907933",
            ["package"] = "rbxassetid://10734909540",
            ["package2"] = "rbxassetid://10734908151",
            ["packagecheck"] = "rbxassetid://10734908384",
            ["packageminus"] = "rbxassetid://10734908626",
            ["packageopen"] = "rbxassetid://10734908793",
            ["packageplus"] = "rbxassetid://10734909016",
            ["packagesearch"] = "rbxassetid://10734909196",
            ["packagex"] = "rbxassetid://10734909375",
            ["paintbucket"] = "rbxassetid://10734909847",
            ["paintbrush"] = "rbxassetid://10734910187",
            ["paintbrush2"] = "rbxassetid://10734910030",
            ["palette"] = "rbxassetid://10734910430",
            ["palmtree"] = "rbxassetid://10734910680",
            ["paperclip"] = "rbxassetid://10734910927",
            ["partypopper"] = "rbxassetid://10734918735",
            ["pause"] = "rbxassetid://10734919336",
            ["pausecircle"] = "rbxassetid://10735024209",
            ["pauseoctagon"] = "rbxassetid://10734919143",
            ["pentool"] = "rbxassetid://10734919503",
            ["pencil"] = "rbxassetid://10734919691",
            ["percent"] = "rbxassetid://10734919919",
            ["personstanding"] = "rbxassetid://10734920149",
            ["phone"] = "rbxassetid://10734921524",
            ["phonecall"] = "rbxassetid://10734920305",
            ["phoneforwarded"] = "rbxassetid://10734920508",
            ["phoneincoming"] = "rbxassetid://10734920694",
            ["phonemissed"] = "rbxassetid://10734920845",
            ["phoneoff"] = "rbxassetid://10734921077",
            ["phoneoutgoing"] = "rbxassetid://10734921288",
            ["piechart"] = "rbxassetid://10734921727",
            ["piggybank"] = "rbxassetid://10734921935",
            ["pin"] = "rbxassetid://10734922324",
            ["pinoff"] = "rbxassetid://10734922180",
            ["pipette"] = "rbxassetid://10734922497",
            ["pizza"] = "rbxassetid://10734922774",
            ["plane"] = "rbxassetid://10734922971",
            ["play"] = "rbxassetid://10734923549",
            ["playcircle"] = "rbxassetid://10734923214",
            ["plus"] = "rbxassetid://10734924532",
            ["pluscircle"] = "rbxassetid://10734923868",
            ["plussquare"] = "rbxassetid://10734924219",
            ["podcast"] = "rbxassetid://10734929553",
            ["pointer"] = "rbxassetid://10734929723",
            ["poundsterling"] = "rbxassetid://10734929981",
            ["power"] = "rbxassetid://10734930466",
            ["poweroff"] = "rbxassetid://10734930257",
            ["printer"] = "rbxassetid://10734930632",
            ["puzzle"] = "rbxassetid://10734930886",
            ["quote"] = "rbxassetid://10734931234",
            ["radio"] = "rbxassetid://10734931596",
            ["radioreceiver"] = "rbxassetid://10734931402",
            ["rectanglehorizontal"] = "rbxassetid://10734931777",
            ["rectanglevertical"] = "rbxassetid://10734932081",
            ["recycle"] = "rbxassetid://10734932295",
            ["redo"] = "rbxassetid://10734932822",
            ["redo2"] = "rbxassetid://10734932586",
            ["refreshccw"] = "rbxassetid://10734933056",
            ["refreshcw"] = "rbxassetid://10734933222",
            ["refrigerator"] = "rbxassetid://10734933465",
            ["regex"] = "rbxassetid://10734933655",
            ["repeat"] = "rbxassetid://10734933966",
            ["repeat1"] = "rbxassetid://10734933826",
            ["reply"] = "rbxassetid://10734934252",
            ["replyall"] = "rbxassetid://10734934132",
            ["rewind"] = "rbxassetid://10734934347",
            ["rocket"] = "rbxassetid://10734934585",
            ["rockingchair"] = "rbxassetid://10734939942",
            ["rotate3d"] = "rbxassetid://10734940107",
            ["rotateccw"] = "rbxassetid://10734940376",
            ["rotatecw"] = "rbxassetid://10734940654",
            ["rss"] = "rbxassetid://10734940825",
            ["ruler"] = "rbxassetid://10734941018",
            ["russianruble"] = "rbxassetid://10734941199",
            ["sailboat"] = "rbxassetid://10734941354",
            ["save"] = "rbxassetid://10734941499",
            ["scale"] = "rbxassetid://10734941912",
            ["scale3d"] = "rbxassetid://10734941739",
            ["scaling"] = "rbxassetid://10734942072",
            ["scan"] = "rbxassetid://10734942565",
            ["scanface"] = "rbxassetid://10734942198",
            ["scanline"] = "rbxassetid://10734942351",
            ["scissors"] = "rbxassetid://10734942778",
            ["screenshare"] = "rbxassetid://10734943193",
            ["screenshareoff"] = "rbxassetid://10734942967",
            ["scroll"] = "rbxassetid://10734943448",
            ["search"] = "rbxassetid://10734943674",
            ["send"] = "rbxassetid://10734943902",
            ["separatorhorizontal"] = "rbxassetid://10734944115",
            ["separatorvertical"] = "rbxassetid://10734944326",
            ["server"] = "rbxassetid://10734949856",
            ["servercog"] = "rbxassetid://10734944444",
            ["servercrash"] = "rbxassetid://10734944554",
            ["serveroff"] = "rbxassetid://10734944668",
            ["settings"] = "rbxassetid://10734950309",
            ["settings2"] = "rbxassetid://10734950020",
            ["share"] = "rbxassetid://10734950813",
            ["share2"] = "rbxassetid://10734950553",
            ["sheet"] = "rbxassetid://10734951038",
            ["shield"] = "rbxassetid://10734951847",
            ["shieldalert"] = "rbxassetid://10734951173",
            ["shieldcheck"] = "rbxassetid://10734951367",
            ["shieldclose"] = "rbxassetid://10734951535",
            ["shieldoff"] = "rbxassetid://10734951684",
            ["shirt"] = "rbxassetid://10734952036",
            ["shoppingbag"] = "rbxassetid://10734952273",
            ["shoppingcart"] = "rbxassetid://10734952479",
            ["shovel"] = "rbxassetid://10734952773",
            ["showerhead"] = "rbxassetid://10734952942",
            ["shrink"] = "rbxassetid://10734953073",
            ["shrub"] = "rbxassetid://10734953241",
            ["shuffle"] = "rbxassetid://10734953451",
            ["sidebar"] = "rbxassetid://10734954301",
            ["sidebarclose"] = "rbxassetid://10734953715",
            ["sidebaropen"] = "rbxassetid://10734954000",
            ["sigma"] = "rbxassetid://10734954538",
            ["signal"] = "rbxassetid://10734961133",
            ["signalhigh"] = "rbxassetid://10734954807",
            ["signallow"] = "rbxassetid://10734955080",
            ["signalmedium"] = "rbxassetid://10734955336",
            ["signalzero"] = "rbxassetid://10734960878",
            ["siren"] = "rbxassetid://10734961284",
            ["skipback"] = "rbxassetid://10734961526",
            ["skipforward"] = "rbxassetid://10734961809",
            ["skull"] = "rbxassetid://10734962068",
            ["slack"] = "rbxassetid://10734962339",
            ["slash"] = "rbxassetid://10734962600",
            ["slice"] = "rbxassetid://10734963024",
            ["sliders"] = "rbxassetid://10734963400",
            ["slidershorizontal"] = "rbxassetid://10734963191",
            ["smartphone"] = "rbxassetid://10734963940",
            ["smartphonecharging"] = "rbxassetid://10734963671",
            ["smile"] = "rbxassetid://10734964441",
            ["smileplus"] = "rbxassetid://10734964188",
            ["snowflake"] = "rbxassetid://10734964600",
            ["sofa"] = "rbxassetid://10734964852",
            ["sortasc"] = "rbxassetid://10734965115",
            ["sortdesc"] = "rbxassetid://10734965287",
            ["speaker"] = "rbxassetid://10734965419",
            ["sprout"] = "rbxassetid://10734965572",
            ["square"] = "rbxassetid://10734965702",
            ["star"] = "rbxassetid://10734966248",
            ["starhalf"] = "rbxassetid://10734965897",
            ["staroff"] = "rbxassetid://10734966097",
            ["stethoscope"] = "rbxassetid://10734966384",
            ["sticker"] = "rbxassetid://10734972234",
            ["stickynote"] = "rbxassetid://10734972463",
            ["stopcircle"] = "rbxassetid://10734972621",
            ["stretchhorizontal"] = "rbxassetid://10734972862",
            ["stretchvertical"] = "rbxassetid://10734973130",
            ["strikethrough"] = "rbxassetid://10734973290",
            ["subscript"] = "rbxassetid://10734973457",
            ["sun"] = "rbxassetid://10734974297",
            ["sundim"] = "rbxassetid://10734973645",
            ["sunmedium"] = "rbxassetid://10734973778",
            ["sunmoon"] = "rbxassetid://10734973999",
            ["sunsnow"] = "rbxassetid://10734974130",
            ["sunrise"] = "rbxassetid://10734974522",
            ["sunset"] = "rbxassetid://10734974689",
            ["superscript"] = "rbxassetid://10734974850",
            ["swissfranc"] = "rbxassetid://10734975024",
            ["switchcamera"] = "rbxassetid://10734975214",
            ["sword"] = "rbxassetid://10734975486",
            ["swords"] = "rbxassetid://10734975692",
            ["syringe"] = "rbxassetid://10734975932",
            ["table"] = "rbxassetid://10734976230",
            ["table2"] = "rbxassetid://10734976097",
            ["tablet"] = "rbxassetid://10734976394",
            ["tag"] = "rbxassetid://10734976528",
            ["tags"] = "rbxassetid://10734976739",
            ["target"] = "rbxassetid://10734977012",
            ["tent"] = "rbxassetid://10734981750",
            ["terminal"] = "rbxassetid://10734982144",
            ["terminalsquare"] = "rbxassetid://10734981995",
            ["textcursor"] = "rbxassetid://10734982395",
            ["textcursorinput"] = "rbxassetid://10734982297",
            ["thermometer"] = "rbxassetid://10734983134",
            ["thermometersnowflake"] = "rbxassetid://10734982571",
            ["thermometersun"] = "rbxassetid://10734982771",
            ["thumbsdown"] = "rbxassetid://10734983359",
            ["thumbsup"] = "rbxassetid://10734983629",
            ["ticket"] = "rbxassetid://10734983868",
            ["timer"] = "rbxassetid://10734984606",
            ["timeroff"] = "rbxassetid://10734984138",
            ["timerreset"] = "rbxassetid://10734984355",
            ["toggleleft"] = "rbxassetid://10734984834",
            ["toggleright"] = "rbxassetid://10734985040",
            ["tornado"] = "rbxassetid://10734985247",
            ["toybrick"] = "rbxassetid://10747361919",
            ["train"] = "rbxassetid://10747362105",
            ["trash"] = "rbxassetid://10747362393",
            ["trash2"] = "rbxassetid://10747362241",
            ["treedeciduous"] = "rbxassetid://10747362534",
            ["treepine"] = "rbxassetid://10747362748",
            ["trees"] = "rbxassetid://10747363016",
            ["trendingdown"] = "rbxassetid://10747363205",
            ["trendingup"] = "rbxassetid://10747363465",
            ["triangle"] = "rbxassetid://10747363621",
            ["trophy"] = "rbxassetid://10747363809",
            ["truck"] = "rbxassetid://10747364031",
            ["tv"] = "rbxassetid://10747364593",
            ["tv2"] = "rbxassetid://10747364302",
            ["type"] = "rbxassetid://10747364761",
            ["umbrella"] = "rbxassetid://10747364971",
            ["underline"] = "rbxassetid://10747365191",
            ["undo"] = "rbxassetid://10747365484",
            ["undo2"] = "rbxassetid://10747365359",
            ["unlink"] = "rbxassetid://10747365771",
            ["unlink2"] = "rbxassetid://10747397871",
            ["unlock"] = "rbxassetid://10747366027",
            ["upload"] = "rbxassetid://10747366434",
            ["uploadcloud"] = "rbxassetid://10747366266",
            ["usb"] = "rbxassetid://10747366606",
            ["user"] = "rbxassetid://10747373176",
            ["usercheck"] = "rbxassetid://10747371901",
            ["usercog"] = "rbxassetid://10747372167",
            ["userminus"] = "rbxassetid://10747372346",
            ["userplus"] = "rbxassetid://10747372702",
            ["userx"] = "rbxassetid://10747372992",
            ["users"] = "rbxassetid://10747373426",
            ["utensils"] = "rbxassetid://10747373821",
            ["utensilscrossed"] = "rbxassetid://10747373629",
            ["venetianmask"] = "rbxassetid://10747374003",
            ["verified"] = "rbxassetid://10747374131",
            ["vibrate"] = "rbxassetid://10747374489",
            ["vibrateoff"] = "rbxassetid://10747374269",
            ["video"] = "rbxassetid://10747374938",
            ["videooff"] = "rbxassetid://10747374721",
            ["view"] = "rbxassetid://10747375132",
            ["voicemail"] = "rbxassetid://10747375281",
            ["volume"] = "rbxassetid://10747376008",
            ["volume1"] = "rbxassetid://10747375450",
            ["volume2"] = "rbxassetid://10747375679",
            ["volumex"] = "rbxassetid://10747375880",
            ["wallet"] = "rbxassetid://10747376205",
            ["wand"] = "rbxassetid://10747376565",
            ["wand2"] = "rbxassetid://10747376349",
            ["watch"] = "rbxassetid://10747376722",
            ["waves"] = "rbxassetid://10747376931",
            ["webcam"] = "rbxassetid://10747381992",
            ["wifi"] = "rbxassetid://10747382504",
            ["wifioff"] = "rbxassetid://10747382268",
            ["wind"] = "rbxassetid://10747382750",
            ["wraptext"] = "rbxassetid://10747383065",
            ["wrench"] = "rbxassetid://10747383470",
            ["x"] = "rbxassetid://10747384394",
            ["xcircle"] = "rbxassetid://10747383819",
            ["xoctagon"] = "rbxassetid://10747384037",
            ["xsquare"] = "rbxassetid://10747384217",
            ["zoomin"] = "rbxassetid://10747384552",
            ["zoomout"] = "rbxassetid://10747384679"
        }
    end)()
}

local ViewportSize = workspace.CurrentCamera.ViewportSize
local UIScale = math.clamp(ViewportSize.Y / 500, 0.7, 1.4)

local Settings = redzlib.Settings
local Flags = redzlib.Flags

local SetProps, SetChildren, InsertTheme, Create
do
    InsertTheme = function(Instance, Type)
        table.insert(redzlib.Instances, { Instance = Instance, Type = Type })
        return Instance
    end

    SetChildren = function(Instance, Children)
        if Children then
            for _, Child in pairs(Children) do
                Child.Parent = Instance
            end
        end
        return Instance
    end

    SetProps = function(Instance, Props)
        if Props then
            for prop, value in pairs(Props) do
                Instance[prop] = value
            end
        end
        return Instance
    end

    Create = function(...)
        local args = { ... }
        if type(args) ~= "table" then return end
        local new = Instance.new(args[1])
        if type(args[2]) == "table" then
            SetProps(new, args[2])
            SetChildren(new, args[3])
        elseif typeof(args[2]) == "Instance" then
            new.Parent = args[2]
            SetProps(new, args[3])
            SetChildren(new, args[4])
        end
        return new
    end

    local function LoadSave(file)
        if readfile and isfile and isfile(file) then
            local ok, decode = pcall(function()
                return HttpService:JSONDecode(readfile(file))
            end)
            if ok and type(decode) == "table" then
                if decode.UISize then redzlib.Save.UISize = decode.UISize end
                if decode.TabSize then redzlib.Save.TabSize = decode.TabSize end
                if decode.Theme and redzlib.Themes[decode.Theme] then redzlib.Save.Theme = decode.Theme end
            end
        end
    end
    pcall(LoadSave, "Slayer_library_config.json")
end

local Funcs = {}
do
    function Funcs:InsertCallback(tab, func)
        if type(func) == "function" then
            table.insert(tab, func)
        end
        return func
    end

    function Funcs:FireCallback(tab, ...)
        for _, v in ipairs(tab) do
            if type(v) == "function" then
                task.spawn(v, ...)
            end
        end
    end

    function Funcs:GetConnectionFunctions(ConnectedFuncs, func)
        local Connected = { Function = func, Connected = true }
        function Connected:Disconnect()
            if self.Connected then
                local idx = table.find(ConnectedFuncs, self.Function)
                if idx then table.remove(ConnectedFuncs, idx) end
                self.Connected = false
            end
        end
        function Connected:Fire(...)
            if self.Connected then
                task.spawn(self.Function, ...)
            end
        end
        return Connected
    end

    function Funcs:GetCallback(Configs, index)
        local func = Configs[index] or Configs.Callback or function() end
        if type(func) == "table" then
            return ({ function(Value) func[1][func[2]] = Value end })
        end
        return { func }
    end
end

local Connections, Connection = {}, redzlib.Connection
do
    local function NewConnectionList(List)
        for _, CoName in ipairs(List) do
            local ConnectedFuncs, Connect = {}, {}
            Connection[CoName] = Connect
            Connections[CoName] = ConnectedFuncs
            Connect.Name = CoName
            function Connect:Connect(func)
                if type(func) == "function" then
                    table.insert(ConnectedFuncs, func)
                    return Funcs:GetConnectionFunctions(ConnectedFuncs, func)
                end
            end
            function Connect:Once(func)
                if type(func) == "function" then
                    local Connected
                    local _NFunc
                    _NFunc = function(...)
                        task.spawn(func, ...)
                        Connected:Disconnect()
                    end
                    Connected = Funcs:GetConnectionFunctions(ConnectedFuncs, _NFunc)
                    return Connected
                end
            end
        end
    end

    function Connection:FireConnection(CoName, ...)
        local list = type(CoName) == "string" and Connections[CoName] or Connections[CoName.Name]
        if list then
            for _, Func in pairs(list) do
                task.spawn(Func, ...)
            end
        end
    end

    NewConnectionList({ "FlagsChanged", "ThemeChanged", "FileSaved", "OptionAdded" })
end

local GetFlag, SetFlag, CheckFlag
do
    CheckFlag = function(Name)
        return type(Name) == "string" and Flags[Name] ~= nil
    end
    GetFlag = function(Name)
        return type(Name) == "string" and Flags[Name]
    end
    SetFlag = function(Flag, Value)
        if Flag and (Value ~= Flags[Flag] or type(Value) == "table") then
            Flags[Flag] = Value
            Connection:FireConnection("FlagsChanged", Flag, Value)
        end
    end

    local saveBusy
    Connection.FlagsChanged:Connect(function()
        local ScriptFile = Settings.ScriptFile
        if not saveBusy and ScriptFile and writefile then
            saveBusy = true
            task.wait(0.15)
            local ok, Encoded = pcall(function()
                return HttpService:JSONEncode(Flags)
            end)
            if ok then
                pcall(writefile, ScriptFile, Encoded)
            end
            saveBusy = false
        end
    end)
end

local ScreenGui = Create("ScreenGui", CoreGui, {
    Name = "Slayer_Library",
    ResetOnSpawn = false,
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling
}, {
    Create("UIScale", { Scale = UIScale, Name = "Scale" })
})

local oldGui = CoreGui:FindFirstChild("Slayer_Library")
if oldGui and oldGui ~= ScreenGui then
    oldGui:Destroy()
end

local ClickSound = Instance.new("Sound", ScreenGui)
ClickSound.SoundId = "rbxassetid://9120390912"
ClickSound.Volume = 0.25

local function PlaySound()
    ClickSound:Play()
end

local function HookButton(btn)
    if btn:IsA("TextButton") or btn:IsA("ImageButton") then
        btn.MouseButton1Click:Connect(PlaySound)
    end
end

task.spawn(function()
    for _, d in pairs(ScreenGui:GetDescendants()) do
        HookButton(d)
    end
    ScreenGui.DescendantAdded:Connect(function(new)
        task.wait(0.05)
        HookButton(new)
    end)
end)

local function CreateTween(Instance, Prop, NewVal, Time)
    local info = TweenInfo.new(Time or 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(Instance, info, { [Prop] = NewVal })
    tween:Play()
    return tween
end

local function MakeDrag(Instance)
    Instance.Active = true
    Instance.AutoButtonColor = false

    local DragStart, StartPos, InputOn

    local function Update(Input)
        local delta = Input.Position - DragStart
        local pos = UDim2.new(
            StartPos.X.Scale,
            StartPos.X.Offset + delta.X / UIScale,
            StartPos.Y.Scale,
            StartPos.Y.Offset + delta.Y / UIScale
        )
        Instance.Position = pos
    end

    Instance.InputBegan:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
            StartPos = Instance.Position
            DragStart = Input.Position
            InputOn = true
            Input.Changed:Connect(function()
                if Input.UserInputState == Enum.UserInputState.End then
                    InputOn = false
                end
            end)
            while InputOn and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                RunService.Heartbeat:Wait()
                Update(Input)
            end
        end
    end)
    return Instance
end

local Theme = redzlib.Themes[redzlib.Save.Theme]

local function AddEle(Name, Func)
    redzlib.Elements[Name] = Func
end

AddEle("Corner", function(parent, radius)
    return Create("UICorner", parent, { CornerRadius = radius or UDim.new(0, 8) })
end)

AddEle("Stroke", function(parent, color, thickness)
    return InsertTheme(Create("UIStroke", parent, {
        Color = color or Theme["Color Stroke"],
        Thickness = thickness or 1,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        LineJoinMode = Enum.LineJoinMode.Round
    }), "Stroke")
end)

AddEle("Button", function(parent, props, callback)
    local btn = InsertTheme(SetProps(Create("TextButton", parent, {
        Text = "",
        Size = UDim2.fromScale(1, 1),
        BackgroundColor3 = Theme["Color Element"],
        BackgroundTransparency = 0.3,
        AutoButtonColor = false,
        BorderSizePixel = 0
    }), props), "Frame")
    Create("UICorner", btn, { CornerRadius = UDim.new(0, 6) })
    Create("UIStroke", btn, {
        Color = Theme["Color Stroke"],
        Thickness = 1,
        Transparency = 0.5
    })
    btn.MouseEnter:Connect(function()
        CreateTween(btn, "BackgroundTransparency", 0.15, 0.15)
    end)
    btn.MouseLeave:Connect(function()
        CreateTween(btn, "BackgroundTransparency", 0.3, 0.15)
    end)
    if callback then
        btn.Activated:Connect(callback)
    end
    return btn
end)

AddEle("Gradient", function(parent, props)
    return InsertTheme(SetProps(Create("UIGradient", parent, {
        Color = Theme["Color Hub 1"]
    }), props), "Gradient")
end)

local function ButtonFrame(Instance, Title, Description, HolderSize)
    local TitleLabel = InsertTheme(Create("TextLabel", {
        Font = Enum.Font.GothamMedium,
        TextColor3 = Theme["Color Text"],
        Size = UDim2.new(1, -10),
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundTransparency = 1,
        TextTruncate = Enum.TextTruncate.AtEnd,
        TextSize = 12,
        TextXAlignment = Enum.TextXAlignment.Left,
        Text = "",
        RichText = true
    }), "Text")

    local DescLabel = InsertTheme(Create("TextLabel", {
        Font = Enum.Font.Gotham,
        TextColor3 = Theme["Color Dark Text"],
        Size = UDim2.new(1, -10),
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundTransparency = 1,
        TextWrapped = true,
        TextSize = 10,
        TextXAlignment = Enum.TextXAlignment.Left,
        Text = "",
        RichText = true
    }), "DarkText")

    local Frame = Make("Button", Instance, {
        Size = UDim2.new(1, 0, 0, 25),
        AutomaticSize = Enum.AutomaticSize.Y,
        Name = "Option"
    })

    local LabelHolder = Create("Frame", Frame, {
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundTransparency = 1,
        Size = HolderSize,
        Position = UDim2.new(0, 10, 0.5),
        AnchorPoint = Vector2.new(0, 0.5)
    }, {
        Create("UIListLayout", {
            SortOrder = Enum.SortOrder.LayoutOrder,
            VerticalAlignment = Enum.VerticalAlignment.Center,
            Padding = UDim.new(0, 2)
        }),
        Create("UIPadding", {
            PaddingBottom = UDim.new(0, 4),
            PaddingTop = UDim.new(0, 4)
        }),
        TitleLabel,
        DescLabel,
    })

    local Label = {}
    function Label:SetTitle(NewTitle)
        if type(NewTitle) == "string" and NewTitle:gsub(" ", ""):len() > 0 then
            TitleLabel.Text = NewTitle
        end
    end
    function Label:SetDesc(NewDesc)
        if type(NewDesc) == "string" and NewDesc:gsub(" ", ""):len() > 0 then
            DescLabel.Visible = true
            DescLabel.Text = NewDesc
        else
            DescLabel.Visible = false
            DescLabel.Text = ""
        end
    end

    Label:SetTitle(Title)
    Label:SetDesc(Description)
    return Frame, Label
end

local function GetColorProp(Instance)
    if Instance:IsA("Frame") or Instance:IsA("TextButton") then
        return "BackgroundColor3"
    elseif Instance:IsA("ImageLabel") or Instance:IsA("ImageButton") then
        return "ImageColor3"
    elseif Instance:IsA("TextLabel") or Instance:IsA("TextBox") then
        return "TextColor3"
    elseif Instance:IsA("ScrollingFrame") then
        return "ScrollBarImageColor3"
    elseif Instance:IsA("UIStroke") then
        return "Color"
    end
    return nil
end

function redzlib:GetIcon(index)
    if type(index) ~= "string" or index:find("rbxassetid://") or #index == 0 then
        return index
    end
    local clean = string.lower(index):gsub("lucide", ""):gsub("-", "")
    if self.Icons[clean] then
        return self.Icons[clean]
    end
    local firstMatch
    for Name, Icon in pairs(self.Icons) do
        if Name == clean then
            return Icon
        elseif not firstMatch and Name:find(clean, 1, true) then
            firstMatch = Icon
        end
    end
    return firstMatch or index
end

function redzlib:SetTheme(NewTheme)
    if not redzlib.Themes[NewTheme] then return end
    redzlib.Save.Theme = NewTheme
    if writefile then
        pcall(writefile, "Slayer_library_config.json", HttpService:JSONEncode(redzlib.Save))
    end
    Theme = redzlib.Themes[NewTheme]
    Connection:FireConnection("ThemeChanged", NewTheme)

    for _, v in pairs(redzlib.Instances) do
        if v.Type == "Gradient" and v.Instance:IsA("UIGradient") then
            v.Instance.Color = Theme["Color Hub 1"]
        elseif v.Type == "Frame" then
            local prop = GetColorProp(v.Instance)
            if prop then v.Instance[prop] = Theme["Color Hub 2"] end
        elseif v.Type == "Stroke" and v.Instance:IsA("UIStroke") then
            v.Instance.Color = Theme["Color Stroke"]
        elseif v.Type == "Theme" then
            local prop = GetColorProp(v.Instance)
            if prop then v.Instance[prop] = Theme["Color Theme"] end
        elseif v.Type == "Text" then
            local prop = GetColorProp(v.Instance)
            if prop then v.Instance[prop] = Theme["Color Text"] end
        elseif v.Type == "DarkText" then
            local prop = GetColorProp(v.Instance)
            if prop then v.Instance[prop] = Theme["Color Dark Text"] end
        elseif v.Type == "ScrollBar" and v.Instance:IsA("ScrollingFrame") then
            v.Instance.ScrollBarImageColor3 = Theme["Color Theme"]
        end
    end
end

function redzlib:SetScale(NewScale)
    NewScale = ViewportSize.Y / math.clamp(NewScale, 300, 2000)
    UIScale = NewScale
    ScreenGui.Scale.Scale = NewScale
end

local function CreatePlayerProfile(player, parent, index)
    local profileHolder = Create("Frame", parent, {
        Size = UDim2.new(0, 0, 0, 0),
        Position = UDim2.new(1, 5, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = Theme["Color Element"],
        BackgroundTransparency = 0.15,
        Visible = false,
        ZIndex = 10,
        Name = "PlayerProfile"
    })
    Create("UICorner", profileHolder, { CornerRadius = UDim.new(0, 8) })
    Create("UIStroke", profileHolder, { Color = Theme["Color Theme"], Thickness = 1 })
    Create("UIGradient", profileHolder, { Color = Theme["Color Hub 1"], Rotation = 45 })

    local avatar = Create("ImageLabel", profileHolder, {
        Size = UDim2.new(0, 60, 0, 60),
        Position = UDim2.new(0, 8, 0, 8),
        BackgroundTransparency = 1,
        Image = "rbxthumb://type=AvatarHeadShot&id=" .. player.UserId .. "&w=150&h=150"
    })
    Create("UICorner", avatar, { CornerRadius = UDim.new(0, 6) })
    Create("UIStroke", avatar, { Color = Theme["Color Stroke"], Thickness = 1 })

    local nameLbl = InsertTheme(Create("TextLabel", profileHolder, {
        Size = UDim2.new(1, -85, 0, 18),
        Position = UDim2.new(0, 76, 0, 10),
        BackgroundTransparency = 1,
        Font = Enum.Font.GothamBold,
        TextColor3 = Theme["Color Text"],
        TextSize = 12,
        TextXAlignment = Enum.TextXAlignment.Left,
        Text = player.DisplayName,
        RichText = true
    }), "Text")

    local userLbl = InsertTheme(Create("TextLabel", profileHolder, {
        Size = UDim2.new(1, -85, 0, 14),
        Position = UDim2.new(0, 76, 0, 28),
        BackgroundTransparency = 1,
        Font = Enum.Font.Gotham,
        TextColor3 = Theme["Color Dark Text"],
        TextSize = 10,
        TextXAlignment = Enum.TextXAlignment.Left,
        Text = "@" .. player.Name,
        RichText = true
    }), "DarkText")

    local statusLbl = InsertTheme(Create("TextLabel", profileHolder, {
        Size = UDim2.new(1, -85, 0, 14),
        Position = UDim2.new(0, 76, 0, 44),
        BackgroundTransparency = 1,
        Font = Enum.Font.Gotham,
        TextColor3 = Theme["Color Theme"],
        TextSize = 9,
        TextXAlignment = Enum.TextXAlignment.Left,
        Text = "ID: " .. tostring(player.UserId),
        RichText = true
    }), "Theme")

    profileHolder.Size = UDim2.fromOffset(220, 76)
    return profileHolder
end

function redzlib:MakeWindow(Configs)
    local WTitle = Configs[1] or Configs.Name or Configs.Title or "Slayer Hub"
    local WMiniText = Configs[2] or Configs.SubTitle or "Minimal"
    Settings.ScriptFile = Configs[3] or Configs.SaveFolder or false

    local UISizeX, UISizeY = unpack(redzlib.Save.UISize)

    local MainFrame = Create("ImageButton", ScreenGui, {
        Size = UDim2.fromOffset(UISizeX, UISizeY),
        Position = UDim2.new(0.5, -UISizeX / 2, 0.5, -UISizeY / 2),
        BackgroundColor3 = Theme["Color Hub 2"],
        BorderSizePixel = 0,
        Name = "Hub",
        ClipsDescendants = false
    })
    Create("UICorner", MainFrame, { CornerRadius = UDim.new(0, 12) })
    Create("UIStroke", MainFrame, { Color = Theme["Color Stroke"], Thickness = 1.5 })
    Create("UIGradient", MainFrame, { Color = Theme["Color Hub 1"], Rotation = 45 })
    MakeDrag(MainFrame)

    local Components = Create("Folder", MainFrame, { Name = "Components" })
    local DropdownHolder = Create("Folder", ScreenGui, { Name = "Dropdowns" })

    local TopBar = Create("Frame", Components, {
        Size = UDim2.new(1, -20, 0, 32),
        Position = UDim2.new(0, 10, 0, 6),
        BackgroundTransparency = 1,
        Name = "TopBar"
    })

    local Title = InsertTheme(Create("TextLabel", TopBar, {
        Position = UDim2.new(0, 0, 0.5),
        AnchorPoint = Vector2.new(0, 0.5),
        AutomaticSize = Enum.AutomaticSize.XY,
        Text = WTitle,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextSize = 13,
        TextColor3 = Theme["Color Text"],
        BackgroundTransparency = 1,
        Font = Enum.Font.GothamBold,
        RichText = true,
        Name = "Title"
    }), "Text")

    local SubTitle = InsertTheme(Create("TextLabel", TopBar, {
        Position = UDim2.new(0, 0, 1, 0),
        AnchorPoint = Vector2.new(0, 0),
        AutomaticSize = Enum.AutomaticSize.XY,
        Text = WMiniText,
        TextColor3 = Theme["Color Dark Text"],
        BackgroundTransparency = 1,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextSize = 9,
        Font = Enum.Font.Gotham,
        RichText = true,
        Name = "SubTitle"
    }), "DarkText")

    local TopButtons = Create("Frame", TopBar, {
        Size = UDim2.new(0, 70, 0, 24),
        Position = UDim2.new(1, 0, 0.5, 0),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundTransparency = 1
    })

    local MinimizeButton = Create("ImageButton", TopButtons, {
        Size = UDim2.fromOffset(20, 20),
        Position = UDim2.new(0, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundTransparency = 1,
        Image = "rbxassetid://10734896206",
        ImageColor3 = Theme["Color Text"],
        AutoButtonColor = false
    })

    local CloseButton = Create("ImageButton", TopButtons, {
        Size = UDim2.fromOffset(20, 20),
        Position = UDim2.new(1, 0, 0.5, 0),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundTransparency = 1,
        Image = "rbxassetid://10747384394",
        ImageColor3 = Theme["Color Text"],
        AutoButtonColor = false
    })

    local MainScroll = InsertTheme(Create("ScrollingFrame", Components, {
        Size = UDim2.new(0, redzlib.Save.TabSize, 1, -48),
        Position = UDim2.new(0, 10, 0, 44),
        ScrollBarImageColor3 = Theme["Color Theme"],
        ScrollBarThickness = 2,
        BackgroundTransparency = 1,
        ScrollBarImageTransparency = 0.5,
        CanvasSize = UDim2.new(),
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        ScrollingDirection = Enum.ScrollingDirection.Y,
        BorderSizePixel = 0,
        Name = "TabScroll"
    }, {
        Create("UIListLayout", { Padding = UDim.new(0, 4) })
    }), "ScrollBar")

    local Containers = Create("Frame", Components, {
        Size = UDim2.new(1, -MainScroll.Size.X.Offset - 20, 1, -48),
        Position = UDim2.new(1, -10, 0, 44),
        BackgroundTransparency = 1,
        ClipsDescendants = true,
        Name = "Containers"
    })

    local ResizeHandle1 = Create("TextButton", MainFrame, {
        Size = UDim2.new(0, 24, 0, 24),
        Position = UDim2.new(1, -4, 1, -4),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 1,
        Text = "",
        Name = "ResizeMain"
    })
    MakeDrag(ResizeHandle1)

    local ResizeHandle2 = Create("TextButton", MainFrame, {
        Size = UDim2.new(0, 16, 0, 40),
        Position = UDim2.new(0, MainScroll.Size.X.Offset + 6, 0, 44 + (Containers.AbsoluteSize.Y / 2)),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 1,
        Text = "",
        Name = "ResizeTabs"
    })
    MakeDrag(ResizeHandle2)

    local function ApplySize()
        local size = ResizeHandle1.Position
        local tabX = ResizeHandle2.Position.X.Offset
        local newW = math.clamp(size.X.Offset + 8, 480, 1000)
        local newH = math.clamp(size.Y.Offset + 8, 280, 600)
        local tabSize = math.clamp(tabX - 12, 120, 220)
        MainFrame.Size = UDim2.fromOffset(newW, newH)
        MainScroll.Size = UDim2.new(0, tabSize, 1, -48)
        Containers.Size = UDim2.new(1, -tabSize - 20, 1, -48)
        ResizeHandle2.Position = UDim2.new(0, tabSize + 6, 0, 44 + (Containers.AbsoluteSize.Y / 2))
    end

    ResizeHandle1:GetPropertyChangedSignal("Position"):Connect(ApplySize)
    ResizeHandle2:GetPropertyChangedSignal("Position"):Connect(ApplySize)

    local Minimized, SaveSize, WaitClick = false, nil, false
    local Window = {}
    local FirstTab = false

    function Window:CloseBtn()
        Window:Dialog({
            Title = "Slayer Hub",
            Text = "Deseja realmente fechar?",
            Options = {
                { "Sim", function() ScreenGui:Destroy() end },
                { "Não" }
            }
        })
    end

    function Window:MinimizeBtn()
        if WaitClick then return end
        WaitClick = true
        if Minimized then
            MinimizeButton.Image = "rbxassetid://10734896206"
            CreateTween(MainFrame, "Size", SaveSize, 0.25)
            Minimized = false
        else
            MinimizeButton.Image = "rbxassetid://10734924532"
            SaveSize = MainFrame.Size
            CreateTween(MainFrame, "Size", UDim2.fromOffset(MainFrame.Size.X.Offset, 36), 0.25)
            Minimized = true
        end
        WaitClick = false
    end

    function Window:Minimize()
        MainFrame.Visible = not MainFrame.Visible
    end

    function Window:Set(v1, v2)
        if v1 then Title.Text = v1 end
        if v2 then SubTitle.Text = v2 end
    end

    function Window:SelectTab(TabSelect)
        if type(TabSelect) == "number" then
            redzlib.Tabs[TabSelect].func:Enable()
        else
            for _, Tab in pairs(redzlib.Tabs) do
                if Tab.Cont == TabSelect.Cont then Tab.func:Enable() end
            end
        end
    end

    function Window:Dialog(Configs)
        if MainFrame:FindFirstChild("Dialog") then return end
        if Minimized then Window:MinimizeBtn() end

        local DTitle = Configs[1] or Configs.Title or "Dialog"
        local DText = Configs[2] or Configs.Text or ""
        local DOptions = Configs[3] or Configs.Options or {}

        local Screen = Create("Frame", MainFrame, {
            BackgroundTransparency = 0.5,
            BackgroundColor3 = Color3.fromRGB(0, 0, 0),
            Size = UDim2.new(1, 0, 1, 0),
            Name = "Dialog",
            ZIndex = 50
        })
        Create("UICorner", Screen, { CornerRadius = UDim.new(0, 12) })

        local Frame = Create("Frame", Screen, {
            Size = UDim2.fromOffset(240, 0),
            Position = UDim2.fromScale(0.5, 0.5),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = Theme["Color Element"],
            ClipsDescendants = true,
            ZIndex = 51
        })
        Create("UICorner", Frame, { CornerRadius = UDim.new(0, 10) })
        Create("UIStroke", Frame, { Color = Theme["Color Stroke"], Thickness = 1 })
        Create("UIGradient", Frame, { Color = Theme["Color Hub 1"], Rotation = 270 })

        InsertTheme(Create("TextLabel", Frame, {
            Font = Enum.Font.GothamBold,
            Size = UDim2.new(1, -20, 0, 20),
            Text = DTitle,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextColor3 = Theme["Color Text"],
            TextSize = 14,
            Position = UDim2.fromOffset(12, 8),
            BackgroundTransparency = 1,
            RichText = true
        }), "Text")

        InsertTheme(Create("TextLabel", Frame, {
            Font = Enum.Font.Gotham,
            Size = UDim2.new(1, -24, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            Text = DText,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextColor3 = Theme["Color Dark Text"],
            TextSize = 11,
            Position = UDim2.fromOffset(12, 32),
            BackgroundTransparency = 1,
            TextWrapped = true,
            RichText = true
        }), "DarkText")

        local ButtonsHolder = Create("Frame", Frame, {
            Size = UDim2.new(1, -20, 0, 32),
            Position = UDim2.new(0, 10, 1, -8),
            AnchorPoint = Vector2.new(0, 1),
            BackgroundTransparency = 1
        }, {
            Create("UIListLayout", {
                Padding = UDim.new(0, 8),
                FillDirection = Enum.FillDirection.Horizontal,
                VerticalAlignment = Enum.VerticalAlignment.Center,
                HorizontalAlignment = Enum.HorizontalAlignment.Right
            })
        })

        local DialogObj = {}
        function DialogObj:Close()
            CreateTween(Screen, "BackgroundTransparency", 1, 0.15)
            Screen:Destroy()
        end

        for _, opt in ipairs(DOptions) do
            local Name = opt[1] or ""
            local Callback = opt[2] or function() end
            local btn = Make("Button", ButtonsHolder, {
                Size = UDim2.new(0, 80, 1, 0),
                BackgroundColor3 = Theme["Color Theme"],
                BackgroundTransparency = 0.2
            })
            btn.Text = Name
            btn.Font = Enum.Font.GothamBold
            btn.TextColor3 = Theme["Color Text"]
            btn.TextSize = 11
            btn.Activated:Connect(function()
                DialogObj:Close()
                Callback()
            end)
        end

        task.wait()
        local contentSize = 32 + (Frame.TextLabel.AbsoluteSize.Y or 0) + 50
        CreateTween(Frame, "Size", UDim2.fromOffset(240, contentSize), 0.2)

        return DialogObj
    end

    local ContainerList = {}
    function Window:MakeTab(paste, Configs)
        if type(paste) == "table" then Configs = paste end
        local TName = Configs[1] or Configs.Title or "Tab"
        local TIcon = Configs[2] or Configs.Icon or ""

        TIcon = redzlib:GetIcon(TIcon)
        if not TIcon:find("rbxassetid://") or TIcon:gsub("rbxassetid://", ""):len() < 6 then
            TIcon = false
        end

        local TabSelect = Create("TextButton", MainScroll, {
            Size = UDim2.new(1, 0, 0, 28),
            BackgroundColor3 = Theme["Color Element"],
            BackgroundTransparency = 1,
            Text = "",
            AutoButtonColor = false
        })
        Create("UICorner", TabSelect, { CornerRadius = UDim.new(0, 6) })

        local LabelTitle = InsertTheme(Create("TextLabel", TabSelect, {
            Size = UDim2.new(1, TIcon and -32 or -16, 1),
            Position = UDim2.fromOffset(TIcon and 32 or 16),
            BackgroundTransparency = 1,
            Font = Enum.Font.GothamMedium,
            Text = TName,
            TextColor3 = Theme["Color Text"],
            TextSize = 11,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextTruncate = Enum.TextTruncate.AtEnd,
            RichText = true
        }), "Text")

        local LabelIcon = Create("ImageLabel", TabSelect, {
            Position = UDim2.new(0, 10, 0.5),
            Size = UDim2.fromOffset(16, 16),
            AnchorPoint = Vector2.new(0, 0.5),
            Image = TIcon or "",
            BackgroundTransparency = 1,
            ImageColor3 = Theme["Color Text"]
        })

        local Selected = InsertTheme(Create("Frame", TabSelect, {
            Size = UDim2.fromOffset(3, 0),
            Position = UDim2.new(0, 0, 0.5),
            AnchorPoint = Vector2.new(0, 0.5),
            BackgroundColor3 = Theme["Color Theme"],
            BackgroundTransparency = 1
        }), "Theme")
        Create("UICorner", Selected, { CornerRadius = UDim.new(0.5, 0) })

        local Container = InsertTheme(Create("ScrollingFrame", {
            Size = UDim2.new(1, 0, 1, 0),
            Position = UDim2.new(0, 0, 0, 0),
            ScrollBarThickness = 2,
            BackgroundTransparency = 1,
            ScrollBarImageTransparency = 0.5,
            ScrollBarImageColor3 = Theme["Color Theme"],
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            ScrollingDirection = Enum.ScrollingDirection.Y,
            BorderSizePixel = 0,
            CanvasSize = UDim2.new(),
            Visible = false,
            Name = ("Container_%d"):format(#ContainerList + 1)
        }, {
            Create("UIPadding", {
                PaddingLeft = UDim.new(0, 8),
                PaddingRight = UDim.new(0, 8),
                PaddingTop = UDim.new(0, 8),
                PaddingBottom = UDim.new(0, 8)
            }),
            Create("UIListLayout", { Padding = UDim.new(0, 4) })
        }), "ScrollBar")

        table.insert(ContainerList, Container)
        if not FirstTab then Container.Visible = true Container.Parent = Containers end

        local function EnableTab()
            for _, c in pairs(ContainerList) do
                c.Visible = false
                c.Parent = nil
            end
            Container.Parent = Containers
            Container.Visible = true

            for _, Tab in pairs(redzlib.Tabs) do
                if Tab.Cont ~= Container then
                    Tab.func:Disable()
                end
            end

            CreateTween(LabelTitle, "TextTransparency", 0, 0.2)
            if LabelIcon.Image ~= "" then CreateTween(LabelIcon, "ImageTransparency", 0, 0.2) end
            CreateTween(Selected, "Size", UDim2.fromOffset(3, 16), 0.2)
            CreateTween(Selected, "BackgroundTransparency", 0, 0.2)
            CreateTween(TabSelect, "BackgroundTransparency", 0.8, 0.2)
        end

        TabSelect.Activated:Connect(EnableTab)
        FirstTab = true

        local Tab = {}
        Tab.Cont = Container
        table.insert(redzlib.Tabs, { TabInfo = { Name = TName, Icon = TIcon }, func = Tab, Cont = Container })

        function Tab:Disable()
            Container.Visible = false
            Container.Parent = nil
            CreateTween(LabelTitle, "TextTransparency", 0.35, 0.2)
            if LabelIcon.Image ~= "" then CreateTween(LabelIcon, "ImageTransparency", 0.35, 0.2) end
            CreateTween(Selected, "Size", UDim2.fromOffset(3, 0), 0.2)
            CreateTween(Selected, "BackgroundTransparency", 1, 0.2)
            CreateTween(TabSelect, "BackgroundTransparency", 1, 0.2)
        end
        function Tab:Enable() EnableTab() end
        function Tab:Visible(Bool)
            if Bool == nil then TabSelect.Visible = not TabSelect.Visible else TabSelect.Visible = Bool end
            Container.Visible = TabSelect.Visible
        end
        function Tab:Destroy()
            TabSelect:Destroy()
            Container:Destroy()
        end

        function Tab:AddSection(Configs)
            local SectionName = type(Configs) == "string" and Configs or Configs[1] or Configs.Name or Configs.Title or Configs.Section

            local SectionFrame = Create("Frame", Container, {
                Size = UDim2.new(1, 0, 0, 24),
                BackgroundTransparency = 1,
                Name = "Option"
            })

            InsertTheme(Create("TextLabel", SectionFrame, {
                Font = Enum.Font.GothamBold,
                Text = SectionName,
                TextColor3 = Theme["Color Text"],
                Size = UDim2.new(1, -10, 1, 0),
                Position = UDim2.new(0, 5),
                BackgroundTransparency = 1,
                TextTruncate = Enum.TextTruncate.AtEnd,
                TextSize = 13,
                TextXAlignment = Enum.TextXAlignment.Left,
                RichText = true
            }), "Text")

            local Section = {}
            function Section:Visible(Bool)
                if Bool == nil then SectionFrame.Visible = not SectionFrame.Visible else SectionFrame.Visible = Bool end
            end
            function Section:Destroy() SectionFrame:Destroy() end
            function Section:Set(New) if New then SectionFrame.TextLabel.Text = New end end
            return Section
        end

        function Tab:AddParagraph(Configs)
            local PName = Configs[1] or Configs.Title or "Paragraph"
            local PDesc = Configs[2] or Configs.Text or ""

            local Frame, LabelFunc = ButtonFrame(Container, PName, PDesc, UDim2.new(1, -20))
            local Paragraph = {}
            function Paragraph:Visible(...) if ... == nil then Frame.Visible = not Frame.Visible else Frame.Visible = ... end end
            function Paragraph:Destroy() Frame:Destroy() end
            function Paragraph:Set(v1, v2)
                if v1 and v2 then LabelFunc:SetTitle(v1) LabelFunc:SetDesc(v2)
                elseif v1 then LabelFunc:SetDesc(v1) end
            end
            return Paragraph
        end

        function Tab:AddButton(Configs)
            local BName = Configs[1] or Configs.Name or Configs.Title or "Button"
            local BDesc = Configs.Desc or Configs.Description or ""
            local Callback = Funcs:GetCallback(Configs, 2)

            local Frame, LabelFunc = ButtonFrame(Container, BName, BDesc, UDim2.new(1, -30))

            Create("ImageLabel", Frame, {
                Size = UDim2.fromOffset(14, 14),
                Position = UDim2.new(1, -10, 0.5),
                AnchorPoint = Vector2.new(1, 0.5),
                BackgroundTransparency = 1,
                Image = "rbxassetid://10709791437",
                ImageColor3 = Theme["Color Theme"]
            })

            Frame.Activated:Connect(function()
                Funcs:FireCallback(Callback)
            end)

            local Button = {}
            function Button:Visible(...) if ... == nil then Frame.Visible = not Frame.Visible else Frame.Visible = ... end end
            function Button:Destroy() Frame:Destroy() end
            function Button:Callback(...) Funcs:InsertCallback(Callback, ...) end
            function Button:Set(v1, v2)
                if type(v1) == "string" and type(v2) == "string" then
                    LabelFunc:SetTitle(v1) LabelFunc:SetDesc(v2)
                elseif type(v1) == "string" then LabelFunc:SetTitle(v1)
                elseif type(v1) == "function" then Callback = v1 end
            end
            return Button
        end

        function Tab:AddToggle(Configs)
            local TName = Configs[1] or Configs.Name or Configs.Title or "Toggle"
            local TDesc = Configs.Desc or Configs.Description or ""
            local Callback = Funcs:GetCallback(Configs, 3)
            local Flag = Configs[4] or Configs.Flag
            local Default = Configs[2] or Configs.Default or false
            if CheckFlag(Flag) then Default = GetFlag(Flag) end

            local Frame, LabelFunc = ButtonFrame(Container, TName, TDesc, UDim2.new(1, -48))

            local ToggleHolder = Create("Frame", Frame, {
                Size = UDim2.fromOffset(40, 20),
                Position = UDim2.new(1, -10, 0.5),
                AnchorPoint = Vector2.new(1, 0.5),
                BackgroundColor3 = Theme["Color Element"],
                BackgroundTransparency = 0.3
            })
            Create("UICorner", ToggleHolder, { CornerRadius = UDim.new(0.5, 0) })
            Create("UIStroke", ToggleHolder, { Color = Theme["Color Stroke"], Thickness = 1 })

            local Knob = InsertTheme(Create("Frame", ToggleHolder, {
                Size = UDim2.fromOffset(14, 14),
                Position = UDim2.new(0, 3, 0.5, 0),
                AnchorPoint = Vector2.new(0, 0.5),
                BackgroundColor3 = Theme["Color Theme"],
                BackgroundTransparency = 0.8
            }), "Theme")
            Create("UICorner", Knob, { CornerRadius = UDim.new(0.5, 0) })
            Create("UIStroke", Knob, { Color = Theme["Color Theme"], Thickness = 1 })

            local WaitClick
            local function SetToggle(Val)
                if WaitClick then return end
                WaitClick, Default = true, Val
                SetFlag(Flag, Default)
                Funcs:FireCallback(Callback, Default)
                if Default then
                    CreateTween(Knob, "Position", UDim2.new(1, -3, 0.5, 0), 0.2)
                    CreateTween(Knob, "AnchorPoint", Vector2.new(1, 0.5), 0.2)
                    CreateTween(Knob, "BackgroundTransparency", 0, 0.2)
                else
                    CreateTween(Knob, "Position", UDim2.new(0, 3, 0.5, 0), 0.2)
                    CreateTween(Knob, "AnchorPoint", Vector2.new(0, 0.5), 0.2)
                    CreateTween(Knob, "BackgroundTransparency", 0.8, 0.2)
                end
                WaitClick = false
            end
            task.spawn(SetToggle, Default)

            Frame.Activated:Connect(function()
                SetToggle(not Default)
            end)

            local Toggle = {}
            function Toggle:Visible(...) if ... == nil then Frame.Visible = not Frame.Visible else Frame.Visible = ... end end
            function Toggle:Destroy() Frame:Destroy() end
            function Toggle:Callback(...) Funcs:InsertCallback(Callback, ...)() end
            function Toggle:Set(v1, v2)
                if type(v1) == "string" and type(v2) == "string" then
                    LabelFunc:SetTitle(v1) LabelFunc:SetDesc(v2)
                elseif type(v1) == "string" then LabelFunc:SetTitle(v1)
                elseif type(v1) == "boolean" then
                    if WaitClick and v2 then repeat task.wait() until not WaitClick end
                    task.spawn(SetToggle, v1)
                elseif type(v1) == "function" then Callback = v1 end
            end
            return Toggle
        end

        function Tab:AddDropdown(Configs)
            local DName = Configs[1] or Configs.Name or Configs.Title or "Dropdown"
            local DDesc = Configs.Desc or Configs.Description or ""
            local DOptions = Configs[2] or Configs.Options or {}
            local Default = Configs[3] or Configs.Default or {}
            local Flag = Configs[5] or Configs.Flag
            local MultiSelect = Configs.MultiSelect or false
            local Callback = Funcs:GetCallback(Configs, 4)

            local Frame, LabelFunc = ButtonFrame(Container, DName, DDesc, UDim2.new(1, -180))

            local SelectedFrame = Create("Frame", Frame, {
                Size = UDim2.new(0, 150, 0, 22),
                Position = UDim2.new(1, -10, 0.5),
                AnchorPoint = Vector2.new(1, 0.5),
                BackgroundColor3 = Theme["Color Element"],
                BackgroundTransparency = 0.3
            })
            Create("UICorner", SelectedFrame, { CornerRadius = UDim.new(0, 6) })
            Create("UIStroke", SelectedFrame, { Color = Theme["Color Stroke"], Thickness = 1 })

            local ActiveLabel = InsertTheme(Create("TextLabel", SelectedFrame, {
                Size = UDim2.new(0.8, 0, 1, 0),
                Position = UDim2.new(0, 6, 0.5, 0),
                AnchorPoint = Vector2.new(0, 0.5),
                BackgroundTransparency = 1,
                Font = Enum.Font.Gotham,
                TextSize = 10,
                TextColor3 = Theme["Color Text"],
                TextXAlignment = Enum.TextXAlignment.Left,
                Text = "...",
                RichText = true,
                TextTruncate = Enum.TextTruncate.AtEnd
            }), "Text")

            local Arrow = Create("ImageLabel", SelectedFrame, {
                Size = UDim2.fromOffset(12, 12),
                Position = UDim2.new(1, -6, 0.5, 0),
                AnchorPoint = Vector2.new(1, 0.5),
                Image = "rbxassetid://10709791523",
                ImageColor3 = Theme["Color Text"],
                BackgroundTransparency = 1
            })

            local NoClickFrame = Create("TextButton", DropdownHolder, {
                Name = "AntiClick",
                Size = UDim2.new(1, 0, 1, 0),
                BackgroundTransparency = 1,
                Visible = false,
                Text = ""
            })

            local DropFrame = Create("Frame", NoClickFrame, {
                Size = UDim2.new(0, 150, 0, 0),
                BackgroundColor3 = Theme["Color Element"],
                BackgroundTransparency = 0.1,
                AnchorPoint = Vector2.new(0, 1),
                ClipsDescendants = true,
                ZIndex = 20,
                Name = "DropdownFrame"
            })
            Create("UICorner", DropFrame, { CornerRadius = UDim.new(0, 8) })
            Create("UIStroke", DropFrame, { Color = Theme["Color Stroke"], Thickness = 1 })
            Create("UIGradient", DropFrame, { Color = Theme["Color Hub 1"], Rotation = 60 })

            local ScrollFrame = InsertTheme(Create("ScrollingFrame", DropFrame, {
                ScrollBarImageColor3 = Theme["Color Theme"],
                Size = UDim2.new(1, 0, 1, 0),
                ScrollBarThickness = 2,
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                CanvasSize = UDim2.new(),
                ScrollingDirection = Enum.ScrollingDirection.Y,
                AutomaticCanvasSize = Enum.AutomaticSize.Y,
                Active = true
            }, {
                Create("UIPadding", {
                    PaddingLeft = UDim.new(0, 6),
                    PaddingRight = UDim.new(0, 6),
                    PaddingTop = UDim.new(0, 4),
                    PaddingBottom = UDim.new(0, 4)
                }),
                Create("UIListLayout", { Padding = UDim.new(0, 3) })
            }), "ScrollBar")

            local ScrollSize, WaitClick = 5
            local Options = {}
            local Selected = MultiSelect and {} or (CheckFlag(Flag) and GetFlag(Flag) or Default[1])

            if MultiSelect then
                for idx, val in pairs(CheckFlag(Flag) and GetFlag(Flag) or Default) do
                    if type(idx) == "string" and (DOptions[idx] or table.find(DOptions, idx)) then
                        Selected[idx] = val
                    elseif DOptions[val] then
                        Selected[val] = true
                    end
                end
            end

            local function UpdateLabel()
                if MultiSelect then
                    local list = {}
                    for idx, val in pairs(Selected) do
                        if val then table.insert(list, idx) end
                    end
                    ActiveLabel.Text = #list > 0 and table.concat(list, ", ") or "..."
                else
                    ActiveLabel.Text = tostring(Selected or "...")
                end
            end

            local function CallbackSelected()
                SetFlag(Flag, MultiSelect and Selected or tostring(Selected))
                Funcs:FireCallback(Callback, Selected)
            end

            local function UpdateSelectedVisual()
                for _, opt in pairs(Options) do
                    local isSel = MultiSelect and opt.Stats or (opt.Value == Selected)
                    CreateTween(opt.nodes[2], "BackgroundTransparency", isSel and 0 or 1, 0.2)
                    CreateTween(opt.nodes[2], "Size", isSel and UDim2.fromOffset(3, 14) or UDim2.fromOffset(3, 3), 0.2)
                    CreateTween(opt.nodes[3], "TextTransparency", isSel and 0 or 0.35, 0.2)
                end
                UpdateLabel()
            end

            local function CalculateSize()
                local count = 0
                for _, child in pairs(ScrollFrame:GetChildren()) do
                    if child.Name == "Option" then count = count + 1 end
                end
                ScrollSize = math.clamp(count, 0, 8) * 26 + 10
                if NoClickFrame.Visible then
                    CreateTween(DropFrame, "Size", UDim2.fromOffset(150, ScrollSize), 0.15)
                end
            end

            local function Disable()
                WaitClick = true
                CreateTween(Arrow, "Rotation", 0, 0.15)
                CreateTween(DropFrame, "Size", UDim2.new(0, 150, 0, 0), 0.15)
                CreateTween(Arrow, "ImageColor3", Theme["Color Text"], 0.15)
                Arrow.Image = "rbxassetid://10709791523"
                NoClickFrame.Visible = false
                WaitClick = false
            end

            local function CalculatePos()
                local framePos = SelectedFrame.AbsolutePosition
                local screenSize = ScreenGui.AbsoluteSize
                local clampX = math.clamp(framePos.X / UIScale, 0, screenSize.X / UIScale - 150)
                local anchorY = framePos.Y > screenSize.Y / 1.5 and 1 or 0
                DropFrame.AnchorPoint = Vector2.new(0, anchorY)
                DropFrame.Position = UDim2.fromOffset(clampX, framePos.Y / UIScale + (anchorY == 1 and 24 or 0))
            end

            local function AddOption(index, value)
                local Name = tostring(type(index) == "string" and index or value)
                if Options[Name] then return end
                Options[Name] = { index = index, Value = value, Name = Name, Stats = false }

                if MultiSelect then
                    Options[Name].Stats = Selected[Name] or false
                end

                local optBtn = Make("Button", ScrollFrame, {
                    Name = "Option",
                    Size = UDim2.new(1, 0, 0, 24),
                    BackgroundColor3 = Theme["Color Element"],
                    BackgroundTransparency = 0.5
                })

                local IsSelDot = InsertTheme(Create("Frame", optBtn, {
                    Position = UDim2.new(0, 4, 0.5),
                    Size = UDim2.fromOffset(3, 3),
                    AnchorPoint = Vector2.new(0, 0.5),
                    BackgroundColor3 = Theme["Color Theme"],
                    BackgroundTransparency = 1
                }), "Theme")
                Create("UICorner", IsSelDot, { CornerRadius = UDim.new(0.5, 0) })

                local OptName = InsertTheme(Create("TextLabel", optBtn, {
                    Size = UDim2.new(1, -18, 1, 0),
                    Position = UDim2.new(0, 12, 0, 0),
                    Text = Name,
                    TextColor3 = Theme["Color Text"],
                    Font = Enum.Font.Gotham,
                    TextSize = 10,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    BackgroundTransparency = 1,
                    TextTransparency = 0.35,
                    RichText = true,
                    TextTruncate = Enum.TextTruncate.AtEnd
                }), "Text")

                local PlayerProfile
                local playerObj = Players:FindFirstChild(Name)
                if playerObj then
                    PlayerProfile = CreatePlayerProfile(playerObj, optBtn, index)
                    optBtn.MouseEnter:Connect(function()
                        PlayerProfile.Visible = true
                        PlayerProfile.Position = UDim2.new(1, 5, 0.5, 0)
                    end)
                    optBtn.MouseLeave:Connect(function()
                        PlayerProfile.Visible = false
                    end)
                end

                optBtn.Activated:Connect(function()
                    if MultiSelect then
                        Options[Name].Stats = not Options[Name].Stats
                        Selected[Name] = Options[Name].Stats
                        CallbackSelected()
                    else
                        Selected = Options[Name].Value
                        CallbackSelected()
                    end
                    UpdateSelectedVisual()
                end)

                Options[Name].nodes = { optBtn, IsSelDot, OptName }
            end

            table.foreach(DOptions, AddOption)
            CallbackSelected()
            UpdateSelectedVisual()

            Frame.Activated:Connect(function()
                if WaitClick then return end
                WaitClick = true
                if NoClickFrame.Visible then
                    Disable()
                else
                    NoClickFrame.Visible = true
                    Arrow.Image = "rbxassetid://10709790948"
                    CreateTween(Arrow, "ImageColor3", Theme["Color Theme"], 0.15)
                    CalculatePos()
                    CreateTween(DropFrame, "Size", UDim2.fromOffset(150, ScrollSize), 0.15)
                end
                WaitClick = false
            end)

            NoClickFrame.MouseButton1Down:Connect(Disable)
            ScrollFrame.ChildAdded:Connect(CalculateSize)
            ScrollFrame.ChildRemoved:Connect(CalculateSize)
            CalculateSize()

            local Dropdown = {}
            function Dropdown:Visible(...) if ... == nil then Frame.Visible = not Frame.Visible else Frame.Visible = ... end end
            function Dropdown:Destroy() Frame:Destroy() end
            function Dropdown:Callback(...) Funcs:InsertCallback(Callback, ...)(Selected) end
            function Dropdown:Add(...)
                for _, name in ipairs({ ... }) do AddOption(name) end
                CalculateSize()
            end
            function Dropdown:Remove(Option)
                for idx, val in pairs(Options) do
                    if (type(Option) == "number" and idx == Option) or (type(Option) == "string" and val.Name == Option) then
                        val.nodes[1]:Destroy()
                        Options[idx] = nil
                    end
                end
                CalculateSize()
            end
            function Dropdown:Select(Option)
                for _, val in pairs(Options) do
                    if val.Name == tostring(Option) or val.Value == Option then
                        val.nodes[1].Activated:Fire()
                    end
                end
            end
            function Dropdown:Set(v1)
                if type(v1) == "table" then
                    for _, name in ipairs(v1) do AddOption(name) end
                elseif type(v1) == "function" then
                    Callback = v1
                end
            end
            return Dropdown
        end

        function Tab:Addsizedropdown()
            return Tab:AddDropdown({
                Name = "Tamanho da UI",
                Options = { "Pequeno", "Médio", "Grande" },
                Default = "Médio",
                Callback = function(Value)
                    if Value == "Pequeno" then
                        MainFrame.Size = UDim2.fromOffset(480, 320)
                    elseif Value == "Médio" then
                        MainFrame.Size = UDim2.fromOffset(580, 420)
                    elseif Value == "Grande" then
                        MainFrame.Size = UDim2.fromOffset(700, 500)
                    end
                    ApplySize()
                end
            })
        end

        function Tab:AddSlider(Configs)
            local SName = Configs[1] or Configs.Name or Configs.Title or "Slider"
            local SDesc = Configs.Desc or Configs.Description or ""
            local Min = Configs[2] or Configs.MinValue or Configs.Min or 0
            local Max = Configs[3] or Configs.MaxValue or Configs.Max or 100
            local Increase = Configs[4] or Configs.Increase or 1
            local Default = Configs[5] or Configs.Default or Min
            local Callback = Funcs:GetCallback(Configs, 6)
            local Flag = Configs[7] or Configs.Flag
            if CheckFlag(Flag) then Default = GetFlag(Flag) end
            Min, Max = Min / Increase, Max / Increase

            local Frame, LabelFunc = ButtonFrame(Container, SName, SDesc, UDim2.new(1, -180))

            local SliderHolder = Create("TextButton", Frame, {
                Size = UDim2.new(0.45, 0, 1, 0),
                Position = UDim2.new(1, -10, 0.5, 0),
                AnchorPoint = Vector2.new(1, 0.5),
                BackgroundTransparency = 1,
                Text = ""
            })

            local SliderBar = Create("Frame", SliderHolder, {
                BackgroundColor3 = Theme["Color Element"],
                BackgroundTransparency = 0.3,
                Size = UDim2.new(1, -30, 0, 5),
                Position = UDim2.new(0, 0, 0.5, 0),
                AnchorPoint = Vector2.new(0, 0.5)
            })
            Create("UICorner", SliderBar, { CornerRadius = UDim.new(0.5, 0) })

            local Indicator = InsertTheme(Create("Frame", SliderBar, {
                BackgroundColor3 = Theme["Color Theme"],
                Size = UDim2.fromScale(0, 1),
                BorderSizePixel = 0
            }), "Theme")
            Create("UICorner", Indicator, { CornerRadius = UDim.new(0.5, 0) })

            local Knob = Create("Frame", SliderBar, {
                Size = UDim2.fromOffset(12, 12),
                BackgroundColor3 = Theme["Color Theme"],
                Position = UDim2.fromScale(0, 0.5),
                AnchorPoint = Vector2.new(0.5, 0.5)
            })
            Create("UICorner", Knob, { CornerRadius = UDim.new(0.5, 0) })
            Create("UIStroke", Knob, { Color = Theme["Color Theme"], Thickness = 1 })

            local LabelVal = InsertTheme(Create("TextLabel", SliderHolder, {
                Size = UDim2.fromOffset(30, 16),
                AnchorPoint = Vector2.new(1, 0.5),
                Position = UDim2.new(1, 0, 0.5, 0),
                BackgroundTransparency = 1,
                TextColor3 = Theme["Color Text"],
                Font = Enum.Font.Gotham,
                Text = tostring(Default),
                TextSize = 11,
                RichText = true
            }), "Text")

            local BasePos = Create("Frame", SliderBar, {
                Position = UDim2.new(0, 0, 0.5, 0),
                Visible = false
            })

            local function UpdateLabel(NewValue)
                local Number = tonumber(NewValue * Increase)
                Number = math.floor(Number * 100) / 100
                Default = Number
                LabelVal.Text = tostring(Number)
                Funcs:FireCallback(Callback, Default)
            end

            local function ControlPos()
                local mouse = Player:GetMouse()
                local aPos = mouse.X - BasePos.AbsolutePosition.X
                local scale = aPos / SliderBar.AbsoluteSize.X
                Knob.Position = UDim2.new(math.clamp(scale, 0, 1), 0, 0.5, 0)
            end

            local function UpdateValues()
                Indicator.Size = UDim2.new(Knob.Position.X.Scale, 0, 1, 0)
                local val = math.floor((Knob.Position.X.Scale * (Max - Min)) + Min)
                UpdateLabel(val)
            end

            SliderHolder.MouseButton1Down:Connect(function()
                Container.ScrollingEnabled = false
                while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                    task.wait()
                    ControlPos()
                end
                Container.ScrollingEnabled = true
                SetFlag(Flag, Default)
            end)

            local function SetSlider(NewValue)
                if type(NewValue) ~= "number" then return end
                local mn, mx = Min * Increase, Max * Increase
                local pos = (NewValue - mn) / (mx - mn)
                SetFlag(Flag, NewValue)
                Knob.Position = UDim2.fromScale(math.clamp(pos, 0, 1), 0.5)
            end
            SetSlider(Default)
            Knob:GetPropertyChangedSignal("Position"):Connect(UpdateValues)

            local Slider = {}
            function Slider:Set(v1, v2)
                if v1 and v2 then LabelFunc:SetTitle(v1) LabelFunc:SetDesc(v2)
                elseif type(v1) == "string" then LabelFunc:SetTitle(v1)
                elseif type(v1) == "function" then Callback = v1
                elseif type(v1) == "number" then SetSlider(v1) end
            end
            function Slider:Callback(...) Funcs:InsertCallback(Callback, ...)(tonumber(Default)) end
            function Slider:Visible(...) if ... == nil then Frame.Visible = not Frame.Visible else Frame.Visible = ... end end
            function Slider:Destroy() Frame:Destroy() end
            return Slider
        end

        function Tab:AddTextBox(Configs)
            local TName = Configs[1] or Configs.Name or Configs.Title or ""
            local TDesc = Configs.Desc or Configs.Description or ""
            local TDefault = Configs[2] or Configs.Default or ""
            local TPlaceholder = Configs[5] or Configs.PlaceholderText or ""
            local TClear = Configs[3] or Configs.ClearText or false
            local Callback = Funcs:GetCallback(Configs, 4)

            local Frame, LabelFunc = ButtonFrame(Container, TName, TDesc, UDim2.new(1, -180))

            local InputFrame = Create("Frame", Frame, {
                Size = UDim2.new(0, 150, 0, 22),
                Position = UDim2.new(1, -10, 0.5, 0),
                AnchorPoint = Vector2.new(1, 0.5),
                BackgroundColor3 = Theme["Color Element"],
                BackgroundTransparency = 0.3
            })
            Create("UICorner", InputFrame, { CornerRadius = UDim.new(0, 6) })
            Create("UIStroke", InputFrame, { Color = Theme["Color Stroke"], Thickness = 1 })

            local TextBoxInput = InsertTheme(Create("TextBox", InputFrame, {
                Size = UDim2.new(1, -12, 1, 0),
                Position = UDim2.new(0, 6, 0.5, 0),
                AnchorPoint = Vector2.new(0, 0.5),
                BackgroundTransparency = 1,
                Font = Enum.Font.Gotham,
                TextSize = 10,
                TextColor3 = Theme["Color Text"],
                ClearTextOnFocus = TClear,
                PlaceholderText = TPlaceholder,
                Text = tostring(TDefault),
                RichText = true,
                TextXAlignment = Enum.TextXAlignment.Left
            }), "Text")

            local function OnInput()
                local text = TextBoxInput.Text
                if text:gsub(" ", ""):len() > 0 then
                    Funcs:FireCallback(Callback, text)
                end
            end
            TextBoxInput.FocusLost:Connect(OnInput)

            local TextBox = {}
            function TextBox:Visible(...) if ... == nil then Frame.Visible = not Frame.Visible else Frame.Visible = ... end end
            function TextBox:Destroy() Frame:Destroy() end
            return TextBox
        end

        function Tab:AddDiscordInvite(Configs)
            local Title = Configs[1] or Configs.Name or Configs.Title or "Discord"
            local Desc = Configs.Desc or Configs.Description or ""
            local Logo = Configs[2] or Configs.Logo or ""
            local Invite = Configs[3] or Configs.Invite or ""

            local Holder = Create("Frame", Container, {
                Size = UDim2.new(1, 0, 0, 72),
                BackgroundTransparency = 1,
                Name = "Option"
            })

            local Bg = Create("Frame", Holder, {
                Size = UDim2.new(1, 0, 1, 0),
                BackgroundColor3 = Theme["Color Element"],
                BackgroundTransparency = 0.3
            })
            Create("UICorner", Bg, { CornerRadius = UDim.new(0, 8) })
            Create("UIStroke", Bg, { Color = Theme["Color Stroke"], Thickness = 1 })

            if Logo ~= "" then
                local img = Create("ImageLabel", Bg, {
                    Size = UDim2.fromOffset(32, 32),
                    Position = UDim2.new(0, 10, 0, 10),
                    Image = Logo,
                    BackgroundTransparency = 1
                })
                Create("UICorner", img, { CornerRadius = UDim.new(0, 6) })
            end

            InsertTheme(Create("TextLabel", Bg, {
                Size = UDim2.new(1, -60, 0, 16),
                Position = UDim2.new(0, 50, 0, 8),
                Font = Enum.Font.GothamBold,
                TextColor3 = Theme["Color Text"],
                TextXAlignment = Enum.TextXAlignment.Left,
                BackgroundTransparency = 1,
                TextSize = 11,
                Text = Title,
                RichText = true
            }), "Text")

            InsertTheme(Create("TextLabel", Bg, {
                Size = UDim2.new(1, -60, 0, 14),
                Position = UDim2.new(0, 50, 0, 24),
                Font = Enum.Font.Gotham,
                TextColor3 = Theme["Color Dark Text"],
                TextXAlignment = Enum.TextXAlignment.Left,
                BackgroundTransparency = 1,
                TextSize = 9,
                Text = Desc,
                RichText = true,
                TextTruncate = Enum.TextTruncate.AtEnd
            }), "DarkText")

            local JoinBtn = Create("TextButton", Bg, {
                Size = UDim2.new(1, -20, 0, 22),
                Position = UDim2.new(0.5, 0, 1, -8),
                AnchorPoint = Vector2.new(0.5, 1),
                Text = "Copiar Convite",
                Font = Enum.Font.Gotham,
                TextSize = 10,
                TextColor3 = Theme["Color Text"],
                BackgroundColor3 = Theme["Color Element"],
                BackgroundTransparency = 0.3,
                RichText = true
            })
            Create("UICorner", JoinBtn, { CornerRadius = UDim.new(0, 6) })
            Create("UIStroke", JoinBtn, { Color = Theme["Color Stroke"], Thickness = 1 })

            local clicked
            JoinBtn.Activated:Connect(function()
                if setclipboard then setclipboard(Invite) end
                if clicked then return end
                clicked = true
                JoinBtn.Text = "Copiado!"
                task.wait(3)
                JoinBtn.Text = "Copiar Convite"
                clicked = false
            end)

            local Discord = {}
            function Discord:Destroy() Holder:Destroy() end
            function Discord:Visible(...) if ... == nil then Holder.Visible = not Holder.Visible else Holder.Visible = ... end end
            return Discord
        end

        return Tab
    end

    CloseButton.Activated:Connect(Window.CloseBtn)
    MinimizeButton.Activated:Connect(Window.MinimizeBtn)

    return Window
end

return redzlib
