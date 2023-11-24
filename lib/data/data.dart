List<String> additiveCodeList = [];
Map descriptionAdditive = {
  "NORMAL": "Helal kabul edilmektedir.",
  "VITAL_1":
      "Bitkisel veya hayvansal kökenli olabilir. Alkolle muamele edilmiş veya edilmemiş olabilir.Bu sebeple (şüpheli) kabul edilen katkıları gösterir.",
  "VITAL_2":
      "Kesin hayvan (çoğunlukla domuz) kökenli katkıları gösterir. (HARAM)"
};

List<Map<String, dynamic>> additiveMap = [
  {
    "CODE": "E100*",
    "ADDITIVE_CODE": "E100",
    "ONLY_CODE": 100,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E100 - Kurkumin"
  },
  {
    "CODE": "E101*",
    "ADDITIVE_CODE": "E101",
    "ONLY_CODE": 101,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E101 - Riboflavin (B2 Vitamini)"
  },
  {
    "CODE": "E102*",
    "ADDITIVE_CODE": "E102",
    "ONLY_CODE": 102,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E102 - Tartrazin"
  },
  {
    "CODE": "E104*",
    "ADDITIVE_CODE": "E104",
    "ONLY_CODE": 104,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E104 - Kinolin sar\u0131s\u0131"
  },
  {
    "CODE": "E107*",
    "ADDITIVE_CODE": "E107",
    "ONLY_CODE": 107,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E107 - Sar\u0131 2G"
  },
  {
    "CODE": "E110*",
    "ADDITIVE_CODE": "E110",
    "ONLY_CODE": 110,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E110 - Sunset sar\u0131s\u0131 FCF"
  },
  {
    "CODE": "E120**",
    "ADDITIVE_CODE": "E120",
    "ONLY_CODE": 120,
    "HEALTH": "RED",
    "HALAL": "VITAL_2",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E120 - Karmin"
  },
  {
    "CODE": "E122*",
    "ADDITIVE_CODE": "E122",
    "ONLY_CODE": 122,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E122 - Azorubin"
  },
  {
    "CODE": "E123*",
    "ADDITIVE_CODE": "E123",
    "ONLY_CODE": 123,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E123 - Amarant"
  },
  {
    "CODE": "E124*",
    "ADDITIVE_CODE": "E124",
    "ONLY_CODE": 124,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E124 - Ponceau 4R"
  },
  {
    "CODE": "E127*",
    "ADDITIVE_CODE": "E127",
    "ONLY_CODE": 127,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E127 - Eritrozin B"
  },
  {
    "CODE": "E128*",
    "ADDITIVE_CODE": "E128",
    "ONLY_CODE": 128,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E128 - K\u0131rm\u0131z\u0131 2G"
  },
  {
    "CODE": "E129*",
    "ADDITIVE_CODE": "E129",
    "ONLY_CODE": 129,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E129 - Allura Red AC"
  },
  {
    "CODE": "E131*",
    "ADDITIVE_CODE": "E131",
    "ONLY_CODE": 131,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E131 - Patent Mavi V"
  },
  {
    "CODE": "E132*",
    "ADDITIVE_CODE": "E132",
    "ONLY_CODE": 132,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E132 - \u0130ndigo Karmin"
  },
  {
    "CODE": "E133*",
    "ADDITIVE_CODE": "E133",
    "ONLY_CODE": 133,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E133 - Mavi Brillant FCF"
  },
  {
    "CODE": "E140*",
    "ADDITIVE_CODE": "E140",
    "ONLY_CODE": 140,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E140 - Klorofil ve Klorofilin"
  },
  {
    "CODE": "E141*",
    "ADDITIVE_CODE": "E141",
    "ONLY_CODE": 141,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E141 - Bak\u0131r Klorofilin"
  },
  {
    "CODE": "E142*",
    "ADDITIVE_CODE": "E142",
    "ONLY_CODE": 142,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E142 - Ye\u015fil S"
  },
  {
    "CODE": "E150",
    "ADDITIVE_CODE": "E150",
    "ONLY_CODE": 150,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E150 - Karamel"
  },
  {
    "CODE": "E151",
    "ADDITIVE_CODE": "E151",
    "ONLY_CODE": 151,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E151 - Brillant Siyah BN"
  },
  {
    "CODE": "E153*",
    "ADDITIVE_CODE": "E153",
    "ONLY_CODE": 153,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E153 - K\u00f6m\u00fcr"
  },
  {
    "CODE": "E154*",
    "ADDITIVE_CODE": "E154",
    "ONLY_CODE": 154,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E154 - Kahverengi FK"
  },
  {
    "CODE": "E155*",
    "ADDITIVE_CODE": "E155",
    "ONLY_CODE": 155,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E155 - Kahverengi HT"
  },
  {
    "CODE": "E160(a)*",
    "ADDITIVE_CODE": "E160(a)",
    "ONLY_CODE": 160,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E160(a) - Karoten"
  },
  {
    "CODE": "E160(b)*",
    "ADDITIVE_CODE": "E160(b)",
    "ONLY_CODE": 160,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E160(b) - Annatto"
  },
  {
    "CODE": "E160(c)*",
    "ADDITIVE_CODE": "E160(c)",
    "ONLY_CODE": 160,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E160(c) - Paprika Ekstresi"
  },
  {
    "CODE": "E160(d)*",
    "ADDITIVE_CODE": "E160(d)",
    "ONLY_CODE": 160,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E160(d) - Likopen"
  },
  {
    "CODE": "E160(e)*",
    "ADDITIVE_CODE": "E160(e)",
    "ONLY_CODE": 160,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E160(e) - Beta-Apo-8'-karotenal (C30)"
  },
  {
    "CODE": "E160(f)*",
    "ADDITIVE_CODE": "E160(f)",
    "ONLY_CODE": 160,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E160(f) - Beta-Apo-8'-karotenal (C30)"
  },
  {
    "CODE": "E161*",
    "ADDITIVE_CODE": "E161",
    "ONLY_CODE": 161,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E161 - Ksantofil"
  },
  {
    "CODE": "E162*",
    "ADDITIVE_CODE": "E162",
    "ONLY_CODE": 162,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E162 - Bitkisel K\u0131rm\u0131z\u0131"
  },
  {
    "CODE": "E163*",
    "ADDITIVE_CODE": "E163",
    "ONLY_CODE": 163,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E163 - Antosiyaninler"
  },
  {
    "CODE": "E170*",
    "ADDITIVE_CODE": "E170",
    "ONLY_CODE": 170,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E170 - Kalsiyum Karbonat"
  },
  {
    "CODE": "E171",
    "ADDITIVE_CODE": "E171",
    "ONLY_CODE": 171,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E171 - Titanyum Dioksit"
  },
  {
    "CODE": "E172",
    "ADDITIVE_CODE": "E172",
    "ONLY_CODE": 172,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E172 - Demir Oksit"
  },
  {
    "CODE": "E173",
    "ADDITIVE_CODE": "E173",
    "ONLY_CODE": 173,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E173 - Al\u00fcminyum"
  },
  {
    "CODE": "E174",
    "ADDITIVE_CODE": "E174",
    "ONLY_CODE": 174,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E174 - G\u00fcm\u00fc\u015f"
  },
  {
    "CODE": "E175",
    "ADDITIVE_CODE": "E175",
    "ONLY_CODE": 175,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E175 - Alt\u0131n"
  },
  {
    "CODE": "E180*",
    "ADDITIVE_CODE": "E180",
    "ONLY_CODE": 180,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E180 - Latik Asit"
  },
  {
    "CODE": "E181",
    "ADDITIVE_CODE": "E181",
    "ONLY_CODE": 181,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "RENKLENDIRICILER",
    "CODE_AND_NAME": "E181 - Tanik Asit"
  },
  {
    "CODE": "E200",
    "ADDITIVE_CODE": "E200",
    "ONLY_CODE": 200,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E200 - Sorbik Asit"
  },
  {
    "CODE": "E201",
    "ADDITIVE_CODE": "E201",
    "ONLY_CODE": 201,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E201 - Sodyum Sorbat"
  },
  {
    "CODE": "E202",
    "ADDITIVE_CODE": "E202",
    "ONLY_CODE": 202,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E202 - Potasyum Sorbat"
  },
  {
    "CODE": "E203",
    "ADDITIVE_CODE": "E203",
    "ONLY_CODE": 203,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E203 - Kalsiyum Sorbat"
  },
  {
    "CODE": "E210*",
    "ADDITIVE_CODE": "E210",
    "ONLY_CODE": 210,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E210 - Benzoik Asit"
  },
  {
    "CODE": "E211*",
    "ADDITIVE_CODE": "E211",
    "ONLY_CODE": 211,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E211 - Sodyum Benzoat"
  },
  {
    "CODE": "E212*",
    "ADDITIVE_CODE": "E212",
    "ONLY_CODE": 212,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E212 - Potasyum Benzoat"
  },
  {
    "CODE": "E213*",
    "ADDITIVE_CODE": "E213",
    "ONLY_CODE": 213,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E213 - Kalsiyum Benzoat"
  },
  {
    "CODE": "E214*",
    "ADDITIVE_CODE": "E214",
    "ONLY_CODE": 214,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E214 - Ethyl p-hydroxybenzoate"
  },
  {
    "CODE": "E215*",
    "ADDITIVE_CODE": "E215",
    "ONLY_CODE": 215,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E215 - Ethyl p-hydroxybenzoate (sodyum tuzu)"
  },
  {
    "CODE": "E216*",
    "ADDITIVE_CODE": "E216",
    "ONLY_CODE": 216,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E216 - Ethyl p-hydroxybenzoate (potasyum tuzu)"
  },
  {
    "CODE": "E217*",
    "ADDITIVE_CODE": "E217",
    "ONLY_CODE": 217,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E217 - Ethyl p-hydroxybenzoate (kalsiyum tuzu)"
  },
  {
    "CODE": "E218*",
    "ADDITIVE_CODE": "E218",
    "ONLY_CODE": 218,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E218 - Methyl p-hydroxybenzoate"
  },
  {
    "CODE": "E219*",
    "ADDITIVE_CODE": "E219",
    "ONLY_CODE": 219,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E219 - Methyl p-hydroxybenzoate (sodyum tuzu)"
  },
  {
    "CODE": "E220",
    "ADDITIVE_CODE": "E220",
    "ONLY_CODE": 220,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E220 - S\u00fclf\u00fcr dioksit"
  },
  {
    "CODE": "E221",
    "ADDITIVE_CODE": "E221",
    "ONLY_CODE": 221,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E221 - Sodyum s\u00fclf\u00fcr dioksit"
  },
  {
    "CODE": "E222",
    "ADDITIVE_CODE": "E222",
    "ONLY_CODE": 222,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E222 - Sodyum bis\u00fclfit"
  },
  {
    "CODE": "E223",
    "ADDITIVE_CODE": "E223",
    "ONLY_CODE": 223,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E223 - Sodyum metabis\u00fclfit"
  },
  {
    "CODE": "E224",
    "ADDITIVE_CODE": "E224",
    "ONLY_CODE": 224,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E224 - Potasyum metabis\u00fclfit"
  },
  {
    "CODE": "E225",
    "ADDITIVE_CODE": "E225",
    "ONLY_CODE": 225,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E225 - Potasyum s\u00fclf\u00fcr dioksit"
  },
  {
    "CODE": "E226",
    "ADDITIVE_CODE": "E226",
    "ONLY_CODE": 226,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E226 - Kalsiyum s\u00fclf\u00fcr dioksit"
  },
  {
    "CODE": "E227",
    "ADDITIVE_CODE": "E227",
    "ONLY_CODE": 227,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E227 - Kalsiyum bis\u00fclfit"
  },
  {
    "CODE": "E228",
    "ADDITIVE_CODE": "E228",
    "ONLY_CODE": 228,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E228 - Potasyum bis\u00fclfit (kalsiyum tuzu)"
  },
  {
    "CODE": "E230*",
    "ADDITIVE_CODE": "E230",
    "ONLY_CODE": 230,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E230 - Bipiridin"
  },
  {
    "CODE": "E231*",
    "ADDITIVE_CODE": "E231",
    "ONLY_CODE": 231,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E231 - Ortobenzilpiridin"
  },
  {
    "CODE": "E232*",
    "ADDITIVE_CODE": "E232",
    "ONLY_CODE": 232,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E232 - Diortotolil diamin"
  },
  {
    "CODE": "E233*",
    "ADDITIVE_CODE": "E233",
    "ONLY_CODE": 233,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E233 - Thiourea"
  },
  {
    "CODE": "E234*",
    "ADDITIVE_CODE": "E234",
    "ONLY_CODE": 234,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E234 - Nisin"
  },
  {
    "CODE": "E235",
    "ADDITIVE_CODE": "E235",
    "ONLY_CODE": 235,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E235 - Natamycin"
  },
  {
    "CODE": "E236",
    "ADDITIVE_CODE": "E236",
    "ONLY_CODE": 236,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E236 - Fumarik Asit"
  },
  {
    "CODE": "E237",
    "ADDITIVE_CODE": "E237",
    "ONLY_CODE": 237,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E237 - Nisin"
  },
  {
    "CODE": "E238",
    "ADDITIVE_CODE": "E238",
    "ONLY_CODE": 238,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E238 - Kalsiyum Nitrat"
  },
  {
    "CODE": "E239",
    "ADDITIVE_CODE": "E239",
    "ONLY_CODE": 239,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E239 - Pentaklorfenol"
  },
  {
    "CODE": "E249*",
    "ADDITIVE_CODE": "E249",
    "ONLY_CODE": 249,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E249 - Potasyum nitrat"
  },
  {
    "CODE": "E250*",
    "ADDITIVE_CODE": "E250",
    "ONLY_CODE": 250,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E250 - Sodyum nitrat"
  },
  {
    "CODE": "E251*",
    "ADDITIVE_CODE": "E251",
    "ONLY_CODE": 251,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E251 - Sodyum nitrit"
  },
  {
    "CODE": "E252*",
    "ADDITIVE_CODE": "E252",
    "ONLY_CODE": 252,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E252 - Potasyum nitrit"
  },
  {
    "CODE": "E260",
    "ADDITIVE_CODE": "E260",
    "ONLY_CODE": 260,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E260 - Asetik asit"
  },
  {
    "CODE": "E261",
    "ADDITIVE_CODE": "E261",
    "ONLY_CODE": 261,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E261 - Potasyum asetat"
  },
  {
    "CODE": "E262",
    "ADDITIVE_CODE": "E262",
    "ONLY_CODE": 262,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E262 - Sodyum asetat"
  },
  {
    "CODE": "E263",
    "ADDITIVE_CODE": "E263",
    "ONLY_CODE": 263,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E263 - Kalsiyum asetat"
  },
  {
    "CODE": "E264",
    "ADDITIVE_CODE": "E264",
    "ONLY_CODE": 264,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E264 - Ammonium acetate"
  },
  {
    "CODE": "E270*",
    "ADDITIVE_CODE": "E270",
    "ONLY_CODE": 270,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E270 - Laktik asit"
  },
  {
    "CODE": "E280",
    "ADDITIVE_CODE": "E280",
    "ONLY_CODE": 280,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E280 - Propiyonik asit"
  },
  {
    "CODE": "E281",
    "ADDITIVE_CODE": "E281",
    "ONLY_CODE": 281,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E281 - Sodyum propiyonat"
  },
  {
    "CODE": "E282",
    "ADDITIVE_CODE": "E282",
    "ONLY_CODE": 282,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E282 - Kalsiyum propiyonat"
  },
  {
    "CODE": "E283",
    "ADDITIVE_CODE": "E283",
    "ONLY_CODE": 283,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E283 - Potasyum propiyonat"
  },
  {
    "CODE": "E290",
    "ADDITIVE_CODE": "E290",
    "ONLY_CODE": 290,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E290 - Karbon dioksit"
  },
  {
    "CODE": "E296",
    "ADDITIVE_CODE": "E296",
    "ONLY_CODE": 296,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E296 - Aseton"
  },
  {
    "CODE": "E297",
    "ADDITIVE_CODE": "E297",
    "ONLY_CODE": 297,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KORUYUCULAR",
    "CODE_AND_NAME": "E297 - Fumarik Asit"
  },
  {
    "CODE": "E300",
    "ADDITIVE_CODE": "E300",
    "ONLY_CODE": 300,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E300 - Askorbik Asit"
  },
  {
    "CODE": "E301",
    "ADDITIVE_CODE": "E301",
    "ONLY_CODE": 301,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E301 - Sodyum askorbat"
  },
  {
    "CODE": "E302",
    "ADDITIVE_CODE": "E302",
    "ONLY_CODE": 302,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E302 - Kalsiyum askorbat"
  },
  {
    "CODE": "E303",
    "ADDITIVE_CODE": "E303",
    "ONLY_CODE": 303,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E303 - Potasyum askorbat"
  },
  {
    "CODE": "E304*",
    "ADDITIVE_CODE": "E304",
    "ONLY_CODE": 304,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E304 - Askorbyl palmitat"
  },
  {
    "CODE": "E306*",
    "ADDITIVE_CODE": "E306",
    "ONLY_CODE": 306,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E306 - Tokoferol ekstrakt\u0131"
  },
  {
    "CODE": "E307*",
    "ADDITIVE_CODE": "E307",
    "ONLY_CODE": 307,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E307 - Tokoferol asetat"
  },
  {
    "CODE": "E308*",
    "ADDITIVE_CODE": "E308",
    "ONLY_CODE": 308,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E308 - Tokoferol asetat (alfa)"
  },
  {
    "CODE": "E309*",
    "ADDITIVE_CODE": "E309",
    "ONLY_CODE": 309,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E309 - Tokoferol asetat (beta)"
  },
  {
    "CODE": "E310",
    "ADDITIVE_CODE": "E310",
    "ONLY_CODE": 310,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E310 - Tokoferol asetat (gamma)"
  },
  {
    "CODE": "E311*",
    "ADDITIVE_CODE": "E311",
    "ONLY_CODE": 311,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E311 - Tokoferol asetat (delta)"
  },
  {
    "CODE": "E312*",
    "ADDITIVE_CODE": "E312",
    "ONLY_CODE": 312,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E312 - Tokofenil asetat"
  },
  {
    "CODE": "E317",
    "ADDITIVE_CODE": "E317",
    "ONLY_CODE": 317,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E317 - Tokofenil asetat (alfa)"
  },
  {
    "CODE": "E318",
    "ADDITIVE_CODE": "E318",
    "ONLY_CODE": 318,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E318 - Tokofenil asetat (beta)"
  },
  {
    "CODE": "E319",
    "ADDITIVE_CODE": "E319",
    "ONLY_CODE": 319,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E319 - Tokofenil asetat (gamma)"
  },
  {
    "CODE": "E320*",
    "ADDITIVE_CODE": "E320",
    "ONLY_CODE": 320,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E320 - Tokofenil asetat (delta)"
  },
  {
    "CODE": "E321*",
    "ADDITIVE_CODE": "E321",
    "ONLY_CODE": 321,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E321 - Butilhidroksianisol (BHA)"
  },
  {
    "CODE": "E322*",
    "ADDITIVE_CODE": "E322",
    "ONLY_CODE": 322,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E322 - Lesitin"
  },
  {
    "CODE": "E325*",
    "ADDITIVE_CODE": "E325",
    "ONLY_CODE": 325,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E325 - Sodyum Laktat"
  },
  {
    "CODE": "E326*",
    "ADDITIVE_CODE": "E326",
    "ONLY_CODE": 326,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E326 - Potasyum Laktat"
  },
  {
    "CODE": "E327*",
    "ADDITIVE_CODE": "E327",
    "ONLY_CODE": 327,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E327 - Kalsiyum Laktat"
  },
  {
    "CODE": "E328*",
    "ADDITIVE_CODE": "E328",
    "ONLY_CODE": 328,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E328 - Amonyum Laktat"
  },
  {
    "CODE": "E329*",
    "ADDITIVE_CODE": "E329",
    "ONLY_CODE": 329,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E329 - Magnezyum Laktat"
  },
  {
    "CODE": "E330",
    "ADDITIVE_CODE": "E330",
    "ONLY_CODE": 330,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E330 - Sitrik Asit"
  },
  {
    "CODE": "E331",
    "ADDITIVE_CODE": "E331",
    "ONLY_CODE": 331,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E331 - Sodyum Sitrat"
  },
  {
    "CODE": "E332",
    "ADDITIVE_CODE": "E332",
    "ONLY_CODE": 332,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E332 - Potasyum Sitrat"
  },
  {
    "CODE": "E333",
    "ADDITIVE_CODE": "E333",
    "ONLY_CODE": 333,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E333 - Kalsiyum Sitrat"
  },
  {
    "CODE": "E334",
    "ADDITIVE_CODE": "E334",
    "ONLY_CODE": 334,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E334 - Tartarik Asit"
  },
  {
    "CODE": "E335",
    "ADDITIVE_CODE": "E335",
    "ONLY_CODE": 335,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E335 - Sodyum Tartrat"
  },
  {
    "CODE": "E336",
    "ADDITIVE_CODE": "E336",
    "ONLY_CODE": 336,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E336 - Potasyum Tartrat"
  },
  {
    "CODE": "E337",
    "ADDITIVE_CODE": "E337",
    "ONLY_CODE": 337,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E337 - Kalsiyum Tartrat"
  },
  {
    "CODE": "E338",
    "ADDITIVE_CODE": "E338",
    "ONLY_CODE": 338,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E338 - Fosforik Asit"
  },
  {
    "CODE": "E339",
    "ADDITIVE_CODE": "E339",
    "ONLY_CODE": 339,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E339 - Sodyum Fosfat"
  },
  {
    "CODE": "E340",
    "ADDITIVE_CODE": "E340",
    "ONLY_CODE": 340,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E340 - Potasyum Fosfat"
  },
  {
    "CODE": "E341*",
    "ADDITIVE_CODE": "E341",
    "ONLY_CODE": 341,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E341 - Kalsiyum Fosfat"
  },
  {
    "CODE": "E343",
    "ADDITIVE_CODE": "E343",
    "ONLY_CODE": 343,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E343 - Manganez Fosfat"
  },
  {
    "CODE": "E350",
    "ADDITIVE_CODE": "E350",
    "ONLY_CODE": 350,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E350 - Sodyum malat"
  },
  {
    "CODE": "E351",
    "ADDITIVE_CODE": "E351",
    "ONLY_CODE": 351,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E351 - Potasyum malat"
  },
  {
    "CODE": "E352",
    "ADDITIVE_CODE": "E352",
    "ONLY_CODE": 352,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E352 - Kalsiyum malat"
  },
  {
    "CODE": "E353",
    "ADDITIVE_CODE": "E353",
    "ONLY_CODE": 353,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E353 - Metatartarik Asit"
  },
  {
    "CODE": "E354",
    "ADDITIVE_CODE": "E354",
    "ONLY_CODE": 354,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E354 - Kalsiyum Metatartarat"
  },
  {
    "CODE": "E355",
    "ADDITIVE_CODE": "E355",
    "ONLY_CODE": 355,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E355 - Adipik Asit"
  },
  {
    "CODE": "E357",
    "ADDITIVE_CODE": "E357",
    "ONLY_CODE": 357,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E357 - Amidon"
  },
  {
    "CODE": "E363",
    "ADDITIVE_CODE": "E363",
    "ONLY_CODE": 363,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E363 - Sakaroz"
  },
  {
    "CODE": "E365",
    "ADDITIVE_CODE": "E365",
    "ONLY_CODE": 365,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E365 - Nikotinamid"
  },
  {
    "CODE": "E366",
    "ADDITIVE_CODE": "E366",
    "ONLY_CODE": 366,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E366 - Potasyum nikotinamid fosfat"
  },
  {
    "CODE": "E367",
    "ADDITIVE_CODE": "E367",
    "ONLY_CODE": 367,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E367 - Kalsiyum nikotinamid fosfat"
  },
  {
    "CODE": "E370",
    "ADDITIVE_CODE": "E370",
    "ONLY_CODE": 370,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E370 - Amylaz"
  },
  {
    "CODE": "E375",
    "ADDITIVE_CODE": "E375",
    "ONLY_CODE": 375,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E375 - Niasin"
  },
  {
    "CODE": "E380",
    "ADDITIVE_CODE": "E380",
    "ONLY_CODE": 380,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E380 - Trikalsiyum fosfat"
  },
  {
    "CODE": "E381",
    "ADDITIVE_CODE": "E381",
    "ONLY_CODE": 381,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E381 - Ammonium ferric citrate"
  },
  {
    "CODE": "E385",
    "ADDITIVE_CODE": "E385",
    "ONLY_CODE": 385,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "ANTIOKSIDANLAR, ASITLER, MINERALLER, TUZLAR",
    "CODE_AND_NAME": "E385 - Kalsiyum dinatrium ethylenediaminetetraacetate"
  },
  {
    "CODE": "E400",
    "ADDITIVE_CODE": "E400",
    "ONLY_CODE": 400,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E400 - Alginik Asit"
  },
  {
    "CODE": "E401",
    "ADDITIVE_CODE": "E401",
    "ONLY_CODE": 401,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E401 - Sodyum alginat"
  },
  {
    "CODE": "E402",
    "ADDITIVE_CODE": "E402",
    "ONLY_CODE": 402,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E402 - Potasyum alginat"
  },
  {
    "CODE": "E403",
    "ADDITIVE_CODE": "E403",
    "ONLY_CODE": 403,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E403 - Ammonyum alginat"
  },
  {
    "CODE": "E404",
    "ADDITIVE_CODE": "E404",
    "ONLY_CODE": 404,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E404 - Kalsiyum alginat"
  },
  {
    "CODE": "E405",
    "ADDITIVE_CODE": "E405",
    "ONLY_CODE": 405,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E405 - Propilen glikol alginat"
  },
  {
    "CODE": "E406",
    "ADDITIVE_CODE": "E406",
    "ONLY_CODE": 406,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E406 - Agar"
  },
  {
    "CODE": "E407*",
    "ADDITIVE_CODE": "E407",
    "ONLY_CODE": 407,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E407 - Karaya"
  },
  {
    "CODE": "E410",
    "ADDITIVE_CODE": "E410",
    "ONLY_CODE": 410,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E410 - Karubin"
  },
  {
    "CODE": "E412",
    "ADDITIVE_CODE": "E412",
    "ONLY_CODE": 412,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E412 - Guark\u0131ymet"
  },
  {
    "CODE": "E413",
    "ADDITIVE_CODE": "E413",
    "ONLY_CODE": 413,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E413 - Tragakan"
  },
  {
    "CODE": "E414",
    "ADDITIVE_CODE": "E414",
    "ONLY_CODE": 414,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E414 - Asid kafein"
  },
  {
    "CODE": "E415",
    "ADDITIVE_CODE": "E415",
    "ONLY_CODE": 415,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E415 - ksantan"
  },
  {
    "CODE": "E416",
    "ADDITIVE_CODE": "E416",
    "ONLY_CODE": 416,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E416 - Karboksimetil sel\u00fcloz"
  },
  {
    "CODE": "E417",
    "ADDITIVE_CODE": "E417",
    "ONLY_CODE": 417,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E417 - Ksantin"
  },
  {
    "CODE": "E420",
    "ADDITIVE_CODE": "E420",
    "ONLY_CODE": 420,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E420 - Sorbitol"
  },
  {
    "CODE": "E421",
    "ADDITIVE_CODE": "E421",
    "ONLY_CODE": 421,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E421 - Mannitol"
  },
  {
    "CODE": "E422*",
    "ADDITIVE_CODE": "E422",
    "ONLY_CODE": 422,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E422 - Gliserol"
  },
  {
    "CODE": "E430*",
    "ADDITIVE_CODE": "E430",
    "ONLY_CODE": 430,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E430 - Polisorbat 60"
  },
  {
    "CODE": "E431*",
    "ADDITIVE_CODE": "E431",
    "ONLY_CODE": 431,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E431 - Polisorbat 61"
  },
  {
    "CODE": "E432*",
    "ADDITIVE_CODE": "E432",
    "ONLY_CODE": 432,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E432 - Polisorbat 65"
  },
  {
    "CODE": "E433*",
    "ADDITIVE_CODE": "E433",
    "ONLY_CODE": 433,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E433 - Polisorbat 80"
  },
  {
    "CODE": "E434*",
    "ADDITIVE_CODE": "E434",
    "ONLY_CODE": 434,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E434 - Polisorbat 81"
  },
  {
    "CODE": "E435*",
    "ADDITIVE_CODE": "E435",
    "ONLY_CODE": 435,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E435 - Polisorbat 85"
  },
  {
    "CODE": "E436*",
    "ADDITIVE_CODE": "E436",
    "ONLY_CODE": 436,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E436 - Polisorbat 60"
  },
  {
    "CODE": "E440(a)",
    "ADDITIVE_CODE": "E440(a)",
    "ONLY_CODE": 440,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E440(a) - Pektin"
  },
  {
    "CODE": "E440(b)",
    "ADDITIVE_CODE": "E440(b)",
    "ONLY_CODE": 440,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E440(b) - Modifiye Edilmi\u015f Amidon"
  },
  {
    "CODE": "E441**",
    "ADDITIVE_CODE": "E441",
    "ONLY_CODE": 441,
    "HEALTH": "RED",
    "HALAL": "VITAL_2",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E441 - Jelatin"
  },
  {
    "CODE": "E442*",
    "ADDITIVE_CODE": "E442",
    "ONLY_CODE": 442,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E442 - Modifiye Edilmi\u015f Amidon"
  },
  {
    "CODE": "E450",
    "ADDITIVE_CODE": "E450",
    "ONLY_CODE": 450,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E450 - Difosfatlar"
  },
  {
    "CODE": "E460",
    "ADDITIVE_CODE": "E460",
    "ONLY_CODE": 460,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E460 - Sel\u00fcloz"
  },
  {
    "CODE": "E461",
    "ADDITIVE_CODE": "E461",
    "ONLY_CODE": 461,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E461 - Metil Sel\u00fcloz"
  },
  {
    "CODE": "E463",
    "ADDITIVE_CODE": "E463",
    "ONLY_CODE": 463,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E463 - Hidroksipropil Sel\u00fcloz"
  },
  {
    "CODE": "E464",
    "ADDITIVE_CODE": "E464",
    "ONLY_CODE": 464,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E464 - Hidroksipropil Metil Sel\u00fcloz"
  },
  {
    "CODE": "E465",
    "ADDITIVE_CODE": "E465",
    "ONLY_CODE": 465,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E465 - Etil Metil Sel\u00fcloz"
  },
  {
    "CODE": "E466",
    "ADDITIVE_CODE": "E466",
    "ONLY_CODE": 466,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E466 - Karboksi Metil Sel\u00fcloz"
  },
  {
    "CODE": "E469",
    "ADDITIVE_CODE": "E469",
    "ONLY_CODE": 469,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E469 - Sodyum Alginat"
  },
  {
    "CODE": "E470*",
    "ADDITIVE_CODE": "E470",
    "ONLY_CODE": 470,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E470 - Ya\u011f Asitleri"
  },
  {
    "CODE": "E471*",
    "ADDITIVE_CODE": "E471",
    "ONLY_CODE": 471,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E471 - Ya\u011f Asitlerinin Mono- ve Digliseridleri"
  },
  {
    "CODE": "E472*",
    "ADDITIVE_CODE": "E472",
    "ONLY_CODE": 472,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E472 - Mono- ve Digliserid Esterleri"
  },
  {
    "CODE": "E473*",
    "ADDITIVE_CODE": "E473",
    "ONLY_CODE": 473,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E473 - Ya\u011f Asitlerinin Sakaroz Esterleri"
  },
  {
    "CODE": "E474*",
    "ADDITIVE_CODE": "E474",
    "ONLY_CODE": 474,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E474 - Sukrogliyceridler"
  },
  {
    "CODE": "E475*",
    "ADDITIVE_CODE": "E475",
    "ONLY_CODE": 475,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E475 - Ya\u011f Asitlerinin Poligliserol Esterleri"
  },
  {
    "CODE": "E476*",
    "ADDITIVE_CODE": "E476",
    "ONLY_CODE": 476,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E476 - Poligliserol Polirisinoleat"
  },
  {
    "CODE": "E477*",
    "ADDITIVE_CODE": "E477",
    "ONLY_CODE": 477,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E477 - Ya\u011f Asitlerinin Propilen Glikol Esterleri"
  },
  {
    "CODE": "E478*",
    "ADDITIVE_CODE": "E478",
    "ONLY_CODE": 478,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME":
        "E478 - Gliserol ve Propan-1'in Laktillenmi\u015f Ya\u011f Asit Esterleri"
  },
  {
    "CODE": "E479(b)*",
    "ADDITIVE_CODE": "E479(b)",
    "ONLY_CODE": 479,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME":
        "E479(b) - Termal Okside Edilmi\u015f Soya Fasulye Ya\u011f\u0131 ile Etkile\u015fen Mono- ve Digliseridler"
  },
  {
    "CODE": "E480",
    "ADDITIVE_CODE": "E480",
    "ONLY_CODE": 480,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E480 - Diktil Sodyum Sulfos\u00fcksinat"
  },
  {
    "CODE": "E481*",
    "ADDITIVE_CODE": "E481",
    "ONLY_CODE": 481,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E481 - Sodyum Stearoyl-2-laktilat"
  },
  {
    "CODE": "E482*",
    "ADDITIVE_CODE": "E482",
    "ONLY_CODE": 482,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E482 - Kalsiyum Stearoyl-2-laktilat"
  },
  {
    "CODE": "E483*",
    "ADDITIVE_CODE": "E483",
    "ONLY_CODE": 483,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E483 - Stearil Tartarat"
  },
  {
    "CODE": "E491*",
    "ADDITIVE_CODE": "E491",
    "ONLY_CODE": 491,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E491 - Sorbitan Monostearat"
  },
  {
    "CODE": "E492*",
    "ADDITIVE_CODE": "E492",
    "ONLY_CODE": 492,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E492 - Sorbitan Tristearat"
  },
  {
    "CODE": "E493*",
    "ADDITIVE_CODE": "E493",
    "ONLY_CODE": 493,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E493 - Sorbitan Monolaurat"
  },
  {
    "CODE": "E494*",
    "ADDITIVE_CODE": "E494",
    "ONLY_CODE": 494,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E494 - Sorbitan Mono-oleat"
  },
  {
    "CODE": "E495*",
    "ADDITIVE_CODE": "E495",
    "ONLY_CODE": 495,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "KIVAM ARTIRICILAR, STABILIZORLER, HOMOJENLESTIRICILER",
    "CODE_AND_NAME": "E495 - Sorbitan Monopalmitat"
  },
  {
    "CODE": "E500",
    "ADDITIVE_CODE": "E500",
    "ONLY_CODE": 500,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E500 - Sodyum Karbonatlar"
  },
  {
    "CODE": "E501",
    "ADDITIVE_CODE": "E501",
    "ONLY_CODE": 501,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E501 - Potasyum Karbonatlar"
  },
  {
    "CODE": "E503",
    "ADDITIVE_CODE": "E503",
    "ONLY_CODE": 503,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E503 - Amonyum Karbonatlar"
  },
  {
    "CODE": "E504",
    "ADDITIVE_CODE": "E504",
    "ONLY_CODE": 504,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E504 - Magnezyum Karbonatlar"
  },
  {
    "CODE": "E507",
    "ADDITIVE_CODE": "E507",
    "ONLY_CODE": 507,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E507 - Hidroklorik Asit"
  },
  {
    "CODE": "E508",
    "ADDITIVE_CODE": "E508",
    "ONLY_CODE": 508,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E508 - Potasyum Klor\u00fcr"
  },
  {
    "CODE": "E509",
    "ADDITIVE_CODE": "E509",
    "ONLY_CODE": 509,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E509 - Kalsiyum Klor\u00fcr"
  },
  {
    "CODE": "E510",
    "ADDITIVE_CODE": "E510",
    "ONLY_CODE": 510,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E510 - Amonyum Klor\u00fcr"
  },
  {
    "CODE": "E511",
    "ADDITIVE_CODE": "E511",
    "ONLY_CODE": 511,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E511 - Magnezyum Klor\u00fcr"
  },
  {
    "CODE": "E513",
    "ADDITIVE_CODE": "E513",
    "ONLY_CODE": 513,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E513 - S\u00fclf\u00fcrik Asit"
  },
  {
    "CODE": "E514",
    "ADDITIVE_CODE": "E514",
    "ONLY_CODE": 514,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E514 - Sodyum S\u00fclfatlar"
  },
  {
    "CODE": "E515",
    "ADDITIVE_CODE": "E515",
    "ONLY_CODE": 515,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E515 - Potasyum S\u00fclfatlar"
  },
  {
    "CODE": "E516",
    "ADDITIVE_CODE": "E516",
    "ONLY_CODE": 516,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E516 - Kalsiyum S\u00fclfatlar"
  },
  {
    "CODE": "E518",
    "ADDITIVE_CODE": "E518",
    "ONLY_CODE": 518,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E518 - Magnezyum S\u00fclfatlar"
  },
  {
    "CODE": "E519",
    "ADDITIVE_CODE": "E519",
    "ONLY_CODE": 519,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E519 - Bak\u0131r Klorofillinler"
  },
  {
    "CODE": "E524",
    "ADDITIVE_CODE": "E524",
    "ONLY_CODE": 524,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E524 - Sodyum Hidroksit"
  },
  {
    "CODE": "E525",
    "ADDITIVE_CODE": "E525",
    "ONLY_CODE": 525,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E525 - Potasyum Hidroksit"
  },
  {
    "CODE": "E526",
    "ADDITIVE_CODE": "E526",
    "ONLY_CODE": 526,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E526 - Kalsiyum Hidroksit"
  },
  {
    "CODE": "E527",
    "ADDITIVE_CODE": "E527",
    "ONLY_CODE": 527,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E527 - Amonyum Hidroksit"
  },
  {
    "CODE": "E528",
    "ADDITIVE_CODE": "E528",
    "ONLY_CODE": 528,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E528 - Magnezyum Hidroksit"
  },
  {
    "CODE": "E529",
    "ADDITIVE_CODE": "E529",
    "ONLY_CODE": 529,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E529 - Kalsiyum Oksit"
  },
  {
    "CODE": "E530",
    "ADDITIVE_CODE": "E530",
    "ONLY_CODE": 530,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E530 - Magnezyum Oksit"
  },
  {
    "CODE": "E535",
    "ADDITIVE_CODE": "E535",
    "ONLY_CODE": 535,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E535 - Sodyum Ferrosiyan\u00fcr"
  },
  {
    "CODE": "E536",
    "ADDITIVE_CODE": "E536",
    "ONLY_CODE": 536,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E536 - Potasyum Ferrosiyan\u00fcr"
  },
  {
    "CODE": "E540",
    "ADDITIVE_CODE": "E540",
    "ONLY_CODE": 540,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E540 - Dikalsiyum Ferrosiyan\u00fcr"
  },
  {
    "CODE": "E541",
    "ADDITIVE_CODE": "E541",
    "ONLY_CODE": 541,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E541 - Asidik Sodyum Al\u00fcminyum Fosfat"
  },
  {
    "CODE": "E542**",
    "ADDITIVE_CODE": "E542",
    "ONLY_CODE": 542,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_2",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E542 - Kemik Fosfat\u0131"
  },
  {
    "CODE": "E544*",
    "ADDITIVE_CODE": "E544",
    "ONLY_CODE": 544,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E544 - Kalsiyum Polifosfatlar"
  },
  {
    "CODE": "E545",
    "ADDITIVE_CODE": "E545",
    "ONLY_CODE": 545,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E545 - Amonyum Polifosfat"
  },
  {
    "CODE": "E551",
    "ADDITIVE_CODE": "E551",
    "ONLY_CODE": 551,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E551 - Silika"
  },
  {
    "CODE": "E552",
    "ADDITIVE_CODE": "E552",
    "ONLY_CODE": 552,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E552 - Kalsiyum Silikat"
  },
  {
    "CODE": "E553(a)",
    "ADDITIVE_CODE": "E553(a)",
    "ONLY_CODE": 553,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E553(a) - Magnezyum Silikat"
  },
  {
    "CODE": "E553(b)",
    "ADDITIVE_CODE": "E553(b)",
    "ONLY_CODE": 553,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E553(b) - Talc"
  },
  {
    "CODE": "E554",
    "ADDITIVE_CODE": "E554",
    "ONLY_CODE": 554,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E554 - Sodyum Al\u00fcminyum Silikat"
  },
  {
    "CODE": "E556*",
    "ADDITIVE_CODE": "E556",
    "ONLY_CODE": 556,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E556 - Al\u00fcminyum Kalsiyum Silikat"
  },
  {
    "CODE": "E558",
    "ADDITIVE_CODE": "E558",
    "ONLY_CODE": 558,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E558 - Bentonit"
  },
  {
    "CODE": "E559",
    "ADDITIVE_CODE": "E559",
    "ONLY_CODE": 559,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E559 - Kaolin"
  },
  {
    "CODE": "E570*",
    "ADDITIVE_CODE": "E570",
    "ONLY_CODE": 570,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E570 - Stearik Asit"
  },
  {
    "CODE": "E572*",
    "ADDITIVE_CODE": "E572",
    "ONLY_CODE": 572,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E572 - Magnezyum Stearat"
  },
  {
    "CODE": "E575",
    "ADDITIVE_CODE": "E575",
    "ONLY_CODE": 575,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E575 - Glukono Delta-Lakton"
  },
  {
    "CODE": "E576",
    "ADDITIVE_CODE": "E576",
    "ONLY_CODE": 576,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E576 - Sodyum Glukonat"
  },
  {
    "CODE": "E577",
    "ADDITIVE_CODE": "E577",
    "ONLY_CODE": 577,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E577 - Potasyum Glukonat"
  },
  {
    "CODE": "E578",
    "ADDITIVE_CODE": "E578",
    "ONLY_CODE": 578,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E578 - Kalsiyum Glukonat"
  },
  {
    "CODE": "E579",
    "ADDITIVE_CODE": "E579",
    "ONLY_CODE": 579,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E579 - Demir Glukonat"
  },
  {
    "CODE": "E585*",
    "ADDITIVE_CODE": "E585",
    "ONLY_CODE": 585,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "INCELTICILER",
    "CODE_AND_NAME": "E585 - Demir Laktat"
  },
  {
    "CODE": "E620*",
    "ADDITIVE_CODE": "E620",
    "ONLY_CODE": 620,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "AROMALAR, TAT VERICILER",
    "CODE_AND_NAME": "E620 - Glutamik Asit"
  },
  {
    "CODE": "E621*",
    "ADDITIVE_CODE": "E621",
    "ONLY_CODE": 621,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "AROMALAR, TAT VERICILER",
    "CODE_AND_NAME": "E621 - Monosodyum Glutamat"
  },
  {
    "CODE": "E622**",
    "ADDITIVE_CODE": "E622",
    "ONLY_CODE": 622,
    "HEALTH": "RED",
    "HALAL": "VITAL_2",
    "CLASS": "AROMALAR, TAT VERICILER",
    "CODE_AND_NAME": "E622 - Monopotasyum Glutamat"
  },
  {
    "CODE": "E623*",
    "ADDITIVE_CODE": "E623",
    "ONLY_CODE": 623,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "AROMALAR, TAT VERICILER",
    "CODE_AND_NAME": "E623 - Kalsiyum Diglutamat"
  },
  {
    "CODE": "E624*",
    "ADDITIVE_CODE": "E624",
    "ONLY_CODE": 624,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "AROMALAR, TAT VERICILER",
    "CODE_AND_NAME": "E624 - Monoamonium Glutamat"
  },
  {
    "CODE": "E625*",
    "ADDITIVE_CODE": "E625",
    "ONLY_CODE": 625,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "AROMALAR, TAT VERICILER",
    "CODE_AND_NAME": "E625 - Magnezyum Diglutamat"
  },
  {
    "CODE": "E626",
    "ADDITIVE_CODE": "E626",
    "ONLY_CODE": 626,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "AROMALAR, TAT VERICILER",
    "CODE_AND_NAME": "E626 - Guanilik Asit"
  },
  {
    "CODE": "E627",
    "ADDITIVE_CODE": "E627",
    "ONLY_CODE": 627,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "AROMALAR, TAT VERICILER",
    "CODE_AND_NAME": "E627 - Disodyum Guanilat"
  },
  {
    "CODE": "E629",
    "ADDITIVE_CODE": "E629",
    "ONLY_CODE": 629,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "AROMALAR, TAT VERICILER",
    "CODE_AND_NAME": "E629 - Kalsiyum Guanilat"
  },
  {
    "CODE": "E631*",
    "ADDITIVE_CODE": "E631",
    "ONLY_CODE": 631,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "AROMALAR, TAT VERICILER",
    "CODE_AND_NAME": "E631 - Sodyum \u0130nosinat"
  },
  {
    "CODE": "E633*",
    "ADDITIVE_CODE": "E633",
    "ONLY_CODE": 633,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "AROMALAR, TAT VERICILER",
    "CODE_AND_NAME": "E633 - Kalsiyum \u0130nosinat"
  },
  {
    "CODE": "E635*",
    "ADDITIVE_CODE": "E635",
    "ONLY_CODE": 635,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "AROMALAR, TAT VERICILER",
    "CODE_AND_NAME": "E635 - Disodyum 5'-Ribon\u00fckleotidler"
  },
  {
    "CODE": "E636*",
    "ADDITIVE_CODE": "E636",
    "ONLY_CODE": 636,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "AROMALAR, TAT VERICILER",
    "CODE_AND_NAME": "E636 - Maltol"
  },
  {
    "CODE": "E637*",
    "ADDITIVE_CODE": "E637",
    "ONLY_CODE": 637,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "AROMALAR, TAT VERICILER",
    "CODE_AND_NAME": "E637 - Etoxilatlar"
  },
  {
    "CODE": "E640*",
    "ADDITIVE_CODE": "E640",
    "ONLY_CODE": 640,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "AROMALAR, TAT VERICILER",
    "CODE_AND_NAME": "E640 - Gliseril Monostearat"
  },
  {
    "CODE": "E900*",
    "ADDITIVE_CODE": "E900",
    "ONLY_CODE": 900,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E900 - Dimetilpolisiloksan (silikon ya\u011f\u0131)"
  },
  {
    "CODE": "E901*",
    "ADDITIVE_CODE": "E901",
    "ONLY_CODE": 901,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E901 - Ar\u0131 s\u00fct\u00fc (Royal jelly)"
  },
  {
    "CODE": "E903",
    "ADDITIVE_CODE": "E903",
    "ONLY_CODE": 903,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E903 - Carnauba balmumu (Copernicia cerifera)"
  },
  {
    "CODE": "E904**",
    "ADDITIVE_CODE": "E904",
    "ONLY_CODE": 904,
    "HEALTH": "RED",
    "HALAL": "VITAL_2",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E904 - Shellak"
  },
  {
    "CODE": "E905*",
    "ADDITIVE_CODE": "E905",
    "ONLY_CODE": 905,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E905 - Parafin (Mikrokristalin balmumunu i\u00e7erebilir)"
  },
  {
    "CODE": "E907*",
    "ADDITIVE_CODE": "E907",
    "ONLY_CODE": 907,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E907 - Behenil asit"
  },
  {
    "CODE": "E910**",
    "ADDITIVE_CODE": "E910",
    "ONLY_CODE": 910,
    "HEALTH": "RED",
    "HALAL": "VITAL_2",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E910 - Lactitol"
  },
  {
    "CODE": "E913*",
    "ADDITIVE_CODE": "E913",
    "ONLY_CODE": 913,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E913 - Lanolin (A vitamini ve D vitamini i\u00e7erebilir)"
  },
  {
    "CODE": "E920**",
    "ADDITIVE_CODE": "E920",
    "ONLY_CODE": 920,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_2",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E920 - L-cysteine (L-sistein)"
  },
  {
    "CODE": "E921**",
    "ADDITIVE_CODE": "E921",
    "ONLY_CODE": 921,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_2",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E921 - L-cystin (L-sistin)"
  },
  {
    "CODE": "E924",
    "ADDITIVE_CODE": "E924",
    "ONLY_CODE": 924,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E924 - Potasyum bromat"
  },
  {
    "CODE": "E925",
    "ADDITIVE_CODE": "E925",
    "ONLY_CODE": 925,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E925 - Klor"
  },
  {
    "CODE": "E926",
    "ADDITIVE_CODE": "E926",
    "ONLY_CODE": 926,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E926 - Amonyum tiosiyanat"
  },
  {
    "CODE": "E927",
    "ADDITIVE_CODE": "E927",
    "ONLY_CODE": 927,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E927 - Azodikarbonamid"
  },
  {
    "CODE": "E928",
    "ADDITIVE_CODE": "E928",
    "ONLY_CODE": 928,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E928 - Benzoyl peroksit"
  },
  {
    "CODE": "E931",
    "ADDITIVE_CODE": "E931",
    "ONLY_CODE": 931,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E931 - Triprolit"
  },
  {
    "CODE": "E932",
    "ADDITIVE_CODE": "E932",
    "ONLY_CODE": 932,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E932 - Sitrik asit ve sitratlar"
  },
  {
    "CODE": "E950",
    "ADDITIVE_CODE": "E950",
    "ONLY_CODE": 950,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E950 - Acesulfam potasyum"
  },
  {
    "CODE": "E951*",
    "ADDITIVE_CODE": "E951",
    "ONLY_CODE": 951,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E951 - Aspartam"
  },
  {
    "CODE": "E952",
    "ADDITIVE_CODE": "E952",
    "ONLY_CODE": 952,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E952 - Siklamatlar"
  },
  {
    "CODE": "E954",
    "ADDITIVE_CODE": "E954",
    "ONLY_CODE": 954,
    "HEALTH": "RED",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E954 - Sakkarinatlar"
  },
  {
    "CODE": "E957",
    "ADDITIVE_CODE": "E957",
    "ONLY_CODE": 957,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E957 - Thaumatin"
  },
  {
    "CODE": "E965",
    "ADDITIVE_CODE": "E965",
    "ONLY_CODE": 965,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E965 - Maltitol"
  },
  {
    "CODE": "E966**",
    "ADDITIVE_CODE": "E966",
    "ONLY_CODE": 966,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_2",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E966 - Lakritol"
  },
  {
    "CODE": "E967",
    "ADDITIVE_CODE": "E967",
    "ONLY_CODE": 967,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E967 - Xylitol"
  },
  {
    "CODE": "E999",
    "ADDITIVE_CODE": "E999",
    "ONLY_CODE": 999,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E999 - Quillaia \u00f6z\u00fc"
  },
  {
    "CODE": "E1100*",
    "ADDITIVE_CODE": "E1100",
    "ONLY_CODE": 1100,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E1100 - Alfa-amilaz"
  },
  {
    "CODE": "E1200",
    "ADDITIVE_CODE": "E1200",
    "ONLY_CODE": 1200,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E1200 - Polidekstroz"
  },
  {
    "CODE": "E1201",
    "ADDITIVE_CODE": "E1201",
    "ONLY_CODE": 1201,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E1201 - Polivinilpolipirrolidon"
  },
  {
    "CODE": "E1202",
    "ADDITIVE_CODE": "E1202",
    "ONLY_CODE": 1202,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E1202 - Polivinilpolipirrolidon"
  },
  {
    "CODE": "E1400",
    "ADDITIVE_CODE": "E1400",
    "ONLY_CODE": 1400,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E1400 - Dekstrin"
  },
  {
    "CODE": "1450",
    "ADDITIVE_CODE": "1450",
    "ONLY_CODE": 1450,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "1450 - Dekstrin"
  },
  {
    "CODE": "E1450",
    "ADDITIVE_CODE": "E1450",
    "ONLY_CODE": 1450,
    "HEALTH": "BLACK",
    "HALAL": "NORMAL",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E1450 - St\u00e4rkeester"
  },
  {
    "CODE": "E1510**",
    "ADDITIVE_CODE": "E1510",
    "ONLY_CODE": 1510,
    "HEALTH": "RED",
    "HALAL": "VITAL_2",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E1510 - Etil alkol (etanol)"
  },
  {
    "CODE": "E1517*",
    "ADDITIVE_CODE": "E1517",
    "ONLY_CODE": 1517,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E1517 - Gliserol (glikol)"
  },
  {
    "CODE": "E1518*",
    "ADDITIVE_CODE": "E1518",
    "ONLY_CODE": 1518,
    "HEALTH": "BLACK",
    "HALAL": "VITAL_1",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E1518 - Gliserin"
  },
  {
    "CODE": "E1520*",
    "ADDITIVE_CODE": "E1520",
    "ONLY_CODE": 1520,
    "HEALTH": "RED",
    "HALAL": "VITAL_1",
    "CLASS": "PARLATICILAR, TATLANDIRICILAR",
    "CODE_AND_NAME": "E1520 - Propilen glikol"
  }
];
