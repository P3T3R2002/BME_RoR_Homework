# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
Reference.delete_all
Reference.create!([
  { year: 2016, project_description: "Tomanóczy Péter (Gersekarát) Gersekarát 0134/34. hrsz. ingatlanon öntözőrendszer és öntözőkút", project_type: "Vízjogi létesítési engedélyes terve" },
  { year: 2016, project_description: "Poultry Farm Kft. (Zalaegerszeg) Sármellék 054/1. hrsz. ingatlanon monitoring kút", project_type: "Vízjogi üzemeltetési engedélyes terve" },
  { year: 2016, project_description: "Zalaegerszeg, ZTE pálya öntözővíz ellátása öntözőkút, öntözőrendszer, vízbekötés", project_type: "Vízjogi üzemeltetési engedélyes terve" },

  { year: 2015, project_description: "Transzkavics Bányászati Kft. Püspökmolnári 0147/10. hrsz. ingatlanon tervezett kút", project_type: "Vízjogi létesítési engedélyes terv" },
  { year: 2015, project_description: "SIEX Ipari, Kereskedelmi és Szolgáltató Kft. Szombathely, Selyemréti úti telephelyén talajvizes öntözőkút", project_type: "Vízjogi létesítési engedélyes terv" },

  { year: 2014, project_description: "Müller Drogéria Magyarország Bt. (Budapest) Letenye 0202. hrsz. ingatlan talajvizes öntözőkutak", project_type: "Vízjogi létesítési engedélyes terve" },
  { year: 2014, project_description: "Nagykanizsa 0285/17. hrsz. ingatlanon tervezett mélyfúrású kút", project_type: "Vízjogi létesítési engedélyes terv" },
  { year: 2014, project_description: "SZABÓ GYŐZŐ egyéni vállalkozó (Tekenye) Pakod 02155/19 hrsz. baromfi telep", project_type: "Üzemi vízminőségi kárelhárítási terve" },

  { year: 2013, project_description: "Csepregi Építőipari Kft., Bük 083/86. hrsz. ingatlanon geotermikus talajvíz hasznosítás", project_type: "Vízjogi üzemeltetési engedélyes terv" },

  { year: 2012, project_description: "Káld Község Önkormányzat (Káld) 083/3 hrsz. ingatlan megfigyelő kút", project_type: "Vízjogi fennmaradási engedélyes terv" },
  { year: 2012, project_description: "Lenti Város Önkormányzata (8960 Lenti, Zrínyi u. 4.) Belsősárd 086 hrsz. ingatlanon létesített talajvizes megfigyelőkút", project_type: "Vízjogi üzemeltetési engedélyezési terv" },

  { year: 2011, project_description: "Rauch Hungária Kft. (Budapest) Kis Károshíd utcai telephelyén monitoring rendszer", project_type: "Vízjogi üzemeltetési engedélyes terv" },
  { year: 2011, project_description: "Érdi szennyvíztisztító telep bővítéshez kapcsolódó monitoring rendszer", project_type: "Vízjogi létesítési engedélyes terv" },
  { year: 2011, project_description: "Szabó Győző, Tekenye 030045/28. hrsz. major mélyfúrású kút", project_type: "Vízjogi üzemeltetési engedélyes terv" },

  { year: 2010, project_description: "Nemesbőd 056/6 hrsz. major ásott kútjainak", project_type: "Vízjogi fennmaradási engedélyes terve" },
  { year: 2010, project_description: "BEST TRADE COMPANY Kft. (Zalacséb) monitoring rendszer", project_type: "Vízjogi üzemeltetési engedélyes terv" },

  { year: 2009, project_description: "Csesztregi volt Mezőgazdasági Gépgyártó Rt. Csesztreg 288/39 hrsz. ingatlan monitoring rendszer", project_type: "Vízjogi üzemeltetési engedélyes terv" },
  { year: 2009, project_description: "Csömödér 092/1 hrsz. lévő hulladéklerakó talajvíz figyelő kútjainak", project_type: "Vízjogi üzemeltetési engedélyes terve" },
  { year: 2009, project_description: "Zalakomár K-3/a kataszterszámú kút eltömedékelésének", project_type: "Vízjogi létesítési engedélyes terve" },

  { year: 2008, project_description: "Szentkozmadombja 021/2 hrsz. sertéstelep monitoring rendszer", project_type: "Vízjogi létesítési engedélyes terv" },
  { year: 2008, project_description: "ORGANOPET Kft. (Beled) 1. sz. mélyfúrású kútja", project_type: "Vízjogi létesítési engedélyes terv" },

  { year: 2007, project_description: "Zalakarosi szennyvíztisztító nyárfás elhelyező telep monitoring rendszer", project_type: "Vízjogi létesítési engedélyes terv" },
  { year: 2007, project_description: "Leier Hungária Kft. (Győr) Jánosházi telephelyén monitoring rendszer", project_type: "Vízjogi létesítési engedélyes terv" },
  { year: 2007, project_description: "Gyermelyi Baromfi Kft. (Gyermely) Máriahalmi tojótyúk telep monitoring rendszer", project_type: "Vízjogi üzemeltetési engedélyes terv" },
  { year: 2007, project_description: "Tamási Kft. (Székesfehérvár) Székesfehérvár 02005/5 hrsz. telepen üzemanyagtöltő állomás", project_type: "Üzemi vízminőségi kárelhárítási terve" },

  { year: 2006, project_description: "„Pusztamiske V. -kavics” bánya monitoring rendszer", project_type: "Vízjogi létesítési engedélyes terv" },
  { year: 2006, project_description: "„Mezőtúr-I-II.” bányatelek figyelőkútjainak", project_type: "Vízjogi üzemeltetési engedélyének módosítása" },

  { year: 2005, project_description: "Barlahida Községi Önkormányzat 2. sz. vízmű kút", project_type: "Vízjogi létesítési engedélyes terve" },
  { year: 2005, project_description: "Zalaegerszeg város külterületén a volt dögtemetőnél tervezett monitoring rendszer", project_type: "Vízjogi létesítési engedélyes terve" },
  { year: 2005, project_description: "Fehérpecsenye Kft. (Kemenesmagasi) 1. sz. mélyfúrású kútja", project_type: "Vízjogi létesítési engedélyes terv" },
  { year: 2005, project_description: "Tiszakécske 9125/4 hrsz. telephelyen monitoring rendszer", project_type: "Vízjogi üzemeltetési engedélyes terv" },

  { year: 2004, project_description: "„SOMOGYSÁMSON – I” agyagbánya", project_type: "Üzemi vízminőségi kárelhárítási terve" },
  { year: 2004, project_description: "Pötréte sertéstelep 4 db figyelőkút", project_type: "Vízjogi létesítési engedélyes terve" },

  { year: 2003, project_description: "„Kőszeg – I” agyagbánya", project_type: "Üzemi vízminőségi kárelhárítási terve" },
  { year: 2003, project_description: "„Kőszeg – I” agyagbánya területén létesített monitoring kutak", project_type: "Vízjogi üzemeltetési engedélyezése" },
  { year: 2003, project_description: "„Kisbér I. – Agyag” bánya vízrendezése", project_type: "Vízjogi üzemeltetési engedélyes terv" },

  { year: 2002, project_description: "Kőszegszerdahely területén a 558. hrsz-ú területen létesítendő aknakút", project_type: "Vízjogi létesítési engedélyes terve" },
  { year: 2002, project_description: "Nagykanizsa város térségi vízellátó rendszer", project_type: "Vízjogi üzemeltetési engedélyezési terve" },
  { year: 2002, project_description: "Akvakultúra telep megfigyelőkútjai (Balatonmagyaród)", project_type: "Vízjogi üzemeltetési engedélyes terve" },
  { year: 2002, project_description: "Várvölgy településen geotermikus energia hasznosítás", project_type: "Vízjogi létesítési engedélyes terve" },

  { year: 2001, project_description: "Mindszentpuszta 2/2. számú kút üzemeltetési engedélyének módosítása", project_type: "Vízjogi üzemeltetési engedélyezési terv" },
  { year: 2001, project_description: "Mindszentpuszta 2/3. számú kút létesítési engedélye", project_type: "Vízjogi létesítési engedélyes terv" },
  { year: 2001, project_description: "Pusztaederics 3/16 és 3/17. számú monitoring kutak", project_type: "Vízjogi üzemeltetési engedélyezési terv" },

  { year: 2000, project_description: "Bánokszentgyörgy-Alsóbélatelep 2. számú kút", project_type: "Vízjogi üzemeltetési engedélyezési terv" },
  { year: 2000, project_description: "Dabronc 17. számú kút üzemeltetési engedélye", project_type: "Vízjogi üzemeltetési engedélyezési terv" },

  { year: 1999, project_description: "Herény 0401/2. hrsz. egykori lerakóhely kármentesítése", project_type: "Üzemi vízminőségi kárelhárítási terv" }
])

Drilling.delete_all
Drilling.create!([
  # 2016
  { year: 2016, place: "Csapod, bányakutatás", name: "Csapod Önkormányzat", drilling_type: "bányakutatás", amount: 8, drilled_depth: 120 },
  { year: 2016, place: "Ják, focipálya", name: "KÜÉSZ Ják", drilling_type: "feltárás", amount: 1, drilled_depth: 7 },
  { year: 2016, place: "Szombathely, volt gázolajtároló", name: "Katasztrófavédelem", drilling_type: "kármentesítés", amount: 1, drilled_depth: 7 },
  { year: 2016, place: "Zalaegerszeg, ZTE FC edzőpálya", name: "ZTE FC Zrt.", drilling_type: "öntözőkút", amount: 2, drilled_depth: 10 },
  { year: 2016, place: "Zalaszentiván, trágyatároló", name: "Ökoszenna Kft.", drilling_type: "feltárás", amount: 1, drilled_depth: 15 },
  { year: 2016, place: "Ikervár, kertészet", name: "Ikervárért Kft.", drilling_type: "öntözőkút", amount: 1, drilled_depth: 7 },
  { year: 2016, place: "Alsóújlak, bányakutatás", name: "KŐKA", drilling_type: "bányakutatás", amount: 5, drilled_depth: 50 },
  { year: 2016, place: "Szombathely, bányakutatás", name: "KŐKA", drilling_type: "feltárás", amount: 2, drilled_depth: 24 },
  { year: 2016, place: "Sopron, volt gázgyár", name: "TIROL", drilling_type: "kármentesítés", amount: 3, drilled_depth: 20 },
  { year: 2016, place: "Bagod, felhagyott hulladéklerakó", name: "Pannon Öko-Ráció Kft.", drilling_type: "feltárás", amount: 1, drilled_depth: 15 },

  # 2015
  { year: 2015, place: "Egyházasrádóc, Nagy Kft. Pálinkafőzde", name: "Nagy Kft.", drilling_type: "ipari", amount: 1, drilled_depth: 13 },
  { year: 2015, place: "Perenye, Karácsonyfás öntözés", name: "Fehér Mén Kft.", drilling_type: "öntözőkút", amount: 1, drilled_depth: 20 },
  { year: 2015, place: "Szombathely, Északi Ipari Park", name: "Ökohydro Kft.", drilling_type: "feltárás", amount: 10, drilled_depth: 66 },
  { year: 2015, place: "Szombathely, HALADÁS focipálya", name: "HVSE", drilling_type: "feltárás", amount: 22, drilled_depth: 77 },
  { year: 2015, place: "Zalaegerszeg, Topker Kft. telephelye", name: "Topker Kft.", drilling_type: "figyelőkút", amount: 1, drilled_depth: 11 },
  { year: 2015, place: "Zalaegerszeg, Búslakpuszta hulladéklerakó", name: "Zaladepó Kft.", drilling_type: "figyelőkút", amount: 2, drilled_depth: 53 },
  { year: 2015, place: "Zalaszabar, Kalandozoo telephelye", name: "Zobori Kft.", drilling_type: "öntözőkút", amount: 1, drilled_depth: 10 },
  { year: 2015, place: "Zalaegerszeg, ZTE FC focipálya", name: "ZTE FC Zrt.", drilling_type: "öntözőkút", amount: 1, drilled_depth: 14 },
  { year: 2015, place: "Szombathely, volt Kertész TSZ telephelye", name: "TI-ROL Kft.", drilling_type: "figyelőkút", amount: 1, drilled_depth: 5 },

  # 2014
  { year: 2014, place: "Ács, TÁP Kft telephelyei", name: "TÁP Kft.", drilling_type: "figyelőkút", amount: 8, drilled_depth: 80 },
  { year: 2014, place: "Letenye, Müller Logisztikai központ", name: "Müller Bt.", drilling_type: "öntözőkút", amount: 1, drilled_depth: 8 },
  { year: 2014, place: "Bak, trágyatároló", name: "Bangóné Pálffy Katalin", drilling_type: "figyelőkút", amount: 1, drilled_depth: 14 },
  { year: 2014, place: "Felsőrajk, Backó Kft. telephelye", name: "Backó Kft.", drilling_type: "figyelőkút", amount: 4, drilled_depth: 30 },
  { year: 2014, place: "Ják, Tangazdaság telephelye", name: "Szhelyi Tang. Zrt.", drilling_type: "figyelőkút", amount: 2, drilled_depth: 10 },
  { year: 2014, place: "Csepreg, MOL benzinkút", name: "Ökoszenna Kft.", drilling_type: "figyelőkút", amount: 2, drilled_depth: 10 },
  { year: 2014, place: "Mocsa, TÁP Kft. Telephelyei", name: "TÁP Kft.", drilling_type: "figyelőkút", amount: 6, drilled_depth: 53 },
  { year: 2014, place: "Püspökmolnári, Farkincás-tó", name: "Baumgartner Tibor", drilling_type: "öntözőkút", amount: 1, drilled_depth: 19 },
  { year: 2014, place: "Sárvár, Ferrosüt Kft. telephelye", name: "Ökoszenna Kft.", drilling_type: "kármentesítés", amount: 2, drilled_depth: 10 },
  { year: 2014, place: "Szombathely, Epcos Kft. telephelye", name: "Ökohydro Kft.", drilling_type: "kármentesítés", amount: 8, drilled_depth: 32 },
  { year: 2014, place: "Szombathely, volt Vasép telephely", name: "Pannon-Connection Bt.", drilling_type: "figyelőkút", amount: 1, drilled_depth: 9 },
  { year: 2014, place: "Szombathely, S.I.S Kft. telephelye", name: "S.I.S Kft.", drilling_type: "öntözőkút", amount: 1, drilled_depth: 8 },
  { year: 2014, place: "Egyházasrádóc, Magyar Dagra Kft.", name: "Magyar Dagra Kft.", drilling_type: "feltárás", amount: 10, drilled_depth: 80 },
  { year: 2014, place: "Táplánszentkereszt, Rangut – major", name: "Szhelyi Tang. Zrt.", drilling_type: "figyelőkút", amount: 6, drilled_depth: 30 },

  # 2013
  { year: 2013, place: "Csepreg, MOL benzinkút", name: "Ökoszenna Kft.", drilling_type: "kármentesítés", amount: 10, drilled_depth: 50 },
  { year: 2013, place: "Letenye, Müller Logisztikai központ", name: "Müller Bt.", drilling_type: "öntözőkút", amount: 1, drilled_depth: 8 },
  { year: 2013, place: "Nemesdéd, Önkormányzat kertészet", name: "Önkormányzat", drilling_type: "öntözőkút", amount: 1, drilled_depth: 14 },
  { year: 2013, place: "Rádóckölked, Klutschi Kft. telephely", name: "Klutschi Kft.", drilling_type: "ipari kút", amount: 1, drilled_depth: 9 },
  { year: 2013, place: "Sárvár, Ferrosüt Kft. telephelye", name: "Ökoszenna Kft.", drilling_type: "kármentesítés", amount: 10, drilled_depth: 30 },
  { year: 2013, place: "Szombathely, Epcos Kft. telephelye", name: "Ökohydro Kft.", drilling_type: "kármentesítés", amount: 12, drilled_depth: 48 },
  { year: 2013, place: "Szombathely, IKV Kft. telephely", name: "IKV Kft.", drilling_type: "öntözőkút", amount: 1, drilled_depth: 10 },
  { year: 2013, place: "Szombathely, Magyar Kéményseprő Kft. telephelye", name: "Magyar Kéményseprő Kft.", drilling_type: "figyelőkút", amount: 2, drilled_depth: 12 }
])
