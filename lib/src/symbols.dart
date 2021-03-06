// CODEPAGE 1251
// https://www.unicode.org/Public/MAPPINGS/VENDORS/MICSFT/WindowsBestFit/bestfit1251.txt

const List<int> symbols = <int>[
  0x0402, // 0x80; Cyrillic Capital Letter Dje
  0x0403, // 0x81; Cyrillic Capital Letter Gje
  0x201A, // 0x82; Single Low-9 Quotation Mark
  0x0453, // 0x83; Cyrillic Small Letter Gje
  0x201E, // 0x84; Double Low-9 Quotation Mark
  0x2026, // 0x85; Horizontal Ellipsis
  0x2020, // 0x86; Dagger
  0x2021, // 0x87; Double Dagger
  0x20AC, // 0x88; Euro Sign
  0x2030, // 0x89; Per Mille Sign
  0x0409, // 0x8A; Cyrillic Capital Letter Lje
  0x2039, // 0x8B; Single Left-Pointing Angle Quotation Mark
  0x040A, // 0x8C; Cyrillic Capital Letter Nje
  0x040C, // 0x8D; Cyrillic Capital Letter Kje
  0x040B, // 0x8E; Cyrillic Capital Letter Tshe
  0x040F, // 0x8F; Cyrillic Capital Letter Dzhe
  0x0452, // 0x90; Cyrillic Small Letter Dje
  0x2018, // 0x91; Left Single Quotation Mark
  0x2019, // 0x92; Right Single Quotation Mark
  0x201C, // 0x93; Left Double Quotation Mark
  0x201D, // 0x94; Right Double Quotation Mark
  0x2022, // 0x95; Bullet
  0x2013, // 0x96; En Dash
  0x2014, // 0x97; Em Dash
  0x0098, // 0x98;
  0x2122, // 0x99; Trade Mark Sign
  0x0459, // 0x9A; Cyrillic Small Letter Lje
  0x203A, // 0x9B; Single Right-Pointing Angle Quotation Mark
  0x045A, // 0x9C; Cyrillic Small Letter Nje
  0x045C, // 0x9D; Cyrillic Small Letter Kje
  0x045B, // 0x9E; Cyrillic Small Letter Tshe
  0x045F, // 0x9F; Cyrillic Small Letter Dzhe
  0x00A0, // 0xA0; No-Break Space
  0x040E, // 0xA1; Cyrillic Capital Letter Short U
  0x045E, // 0xA2; Cyrillic Small Letter Short U
  0x0408, // 0xA3; Cyrillic Capital Letter Je
  0x00A4, // 0xA4; Currency Sign
  0x0490, // 0xA5; Cyrillic Capital Letter Ghe With Upturn
  0x00A6, // 0xA6; Broken Bar
  0x00A7, // 0xA7; Section Sign
  0x0401, // 0xA8; Cyrillic Capital Letter Io
  0x00A9, // 0xA9; Copyright Sign
  0x0404, // 0xAA; Cyrillic Capital Letter Ukrainian Ie
  0x00AB, // 0xAB; Left-Pointing Double Angle Quotation Mark
  0x00AC, // 0xAC; Not Sign
  0x00AD, // 0xAD; Soft Hyphen
  0x00AE, // 0xAE; Registered Sign
  0x0407, // 0xAF; Cyrillic Capital Letter Yi
  0x00B0, // 0xB0; Degree Sign
  0x00B1, // 0xB1; Plus-Minus Sign
  0x0406, // 0xB2; Cyrillic Capital Letter Byelorussian-Ukrainian I
  0x0456, // 0xB3; Cyrillic Small Letter Byelorussian-Ukrainian I
  0x0491, // 0xB4; Cyrillic Small Letter Ghe With Upturn
  0x00B5, // 0xB5; Micro Sign
  0x00B6, // 0xB6; Pilcrow Sign
  0x00B7, // 0xB7; Middle Dot
  0x0451, // 0xB8; Cyrillic Small Letter Io
  0x2116, // 0xB9; Numero Sign
  0x0454, // 0xBA; Cyrillic Small Letter Ukrainian Ie
  0x00BB, // 0xBB; Right-Pointing Double Angle Quotation Mark
  0x0458, // 0xBC; Cyrillic Small Letter Je
  0x0405, // 0xBD; Cyrillic Capital Letter Dze
  0x0455, // 0xBE; Cyrillic Small Letter Dze
  0x0457, // 0xBF; Cyrillic Small Letter Yi
  0x0410, // 0xC0; Cyrillic Capital Letter A
  0x0411, // 0xC1; Cyrillic Capital Letter Be
  0x0412, // 0xC2; Cyrillic Capital Letter Ve
  0x0413, // 0xC3; Cyrillic Capital Letter Ghe
  0x0414, // 0xC4; Cyrillic Capital Letter De
  0x0415, // 0xC5; Cyrillic Capital Letter Ie
  0x0416, // 0xC6; Cyrillic Capital Letter Zhe
  0x0417, // 0xC7; Cyrillic Capital Letter Ze
  0x0418, // 0xC8; Cyrillic Capital Letter I
  0x0419, // 0xC9; Cyrillic Capital Letter Short I
  0x041A, // 0xCA; Cyrillic Capital Letter Ka
  0x041B, // 0xCB; Cyrillic Capital Letter El
  0x041C, // 0xCC; Cyrillic Capital Letter Em
  0x041D, // 0xCD; Cyrillic Capital Letter En
  0x041E, // 0xCE; Cyrillic Capital Letter O
  0x041F, // 0xCF; Cyrillic Capital Letter Pe
  0x0420, // 0xD0; Cyrillic Capital Letter Er
  0x0421, // 0xD1; Cyrillic Capital Letter Es
  0x0422, // 0xD2; Cyrillic Capital Letter Te
  0x0423, // 0xD3; Cyrillic Capital Letter U
  0x0424, // 0xD4; Cyrillic Capital Letter Ef
  0x0425, // 0xD5; Cyrillic Capital Letter Ha
  0x0426, // 0xD6; Cyrillic Capital Letter Tse
  0x0427, // 0xD7; Cyrillic Capital Letter Che
  0x0428, // 0xD8; Cyrillic Capital Letter Sha
  0x0429, // 0xD9; Cyrillic Capital Letter Shcha
  0x042A, // 0xDA; Cyrillic Capital Letter Hard Sign
  0x042B, // 0xDB; Cyrillic Capital Letter Yeru
  0x042C, // 0xDC; Cyrillic Capital Letter Soft Sign
  0x042D, // 0xDD; Cyrillic Capital Letter E
  0x042E, // 0xDE; Cyrillic Capital Letter Yu
  0x042F, // 0xDF; Cyrillic Capital Letter Ya
  0x0430, // 0xE0; Cyrillic Small Letter A
  0x0431, // 0xE1; Cyrillic Small Letter Be
  0x0432, // 0xE2; Cyrillic Small Letter Ve
  0x0433, // 0xE3; Cyrillic Small Letter Ghe
  0x0434, // 0xE4; Cyrillic Small Letter De
  0x0435, // 0xE5; Cyrillic Small Letter Ie
  0x0436, // 0xE6; Cyrillic Small Letter Zhe
  0x0437, // 0xE7; Cyrillic Small Letter Ze
  0x0438, // 0xE8; Cyrillic Small Letter I
  0x0439, // 0xE9; Cyrillic Small Letter Short I
  0x043A, // 0xEA; Cyrillic Small Letter Ka
  0x043B, // 0xEB; Cyrillic Small Letter El
  0x043C, // 0xEC; Cyrillic Small Letter Em
  0x043D, // 0xED; Cyrillic Small Letter En
  0x043E, // 0xEE; Cyrillic Small Letter O
  0x043F, // 0xEF; Cyrillic Small Letter Pe
  0x0440, // 0xF0; Cyrillic Small Letter Er
  0x0441, // 0xF1; Cyrillic Small Letter Es
  0x0442, // 0xF2; Cyrillic Small Letter Te
  0x0443, // 0xF3; Cyrillic Small Letter U
  0x0444, // 0xF4; Cyrillic Small Letter Ef
  0x0445, // 0xF5; Cyrillic Small Letter Ha
  0x0446, // 0xF6; Cyrillic Small Letter Tse
  0x0447, // 0xF7; Cyrillic Small Letter Che
  0x0448, // 0xF8; Cyrillic Small Letter Sha
  0x0449, // 0xF9; Cyrillic Small Letter Shcha
  0x044A, // 0xFA; Cyrillic Small Letter Hard Sign
  0x044B, // 0xFB; Cyrillic Small Letter Yeru
  0x044C, // 0xFC; Cyrillic Small Letter Soft Sign
  0x044D, // 0xFD; Cyrillic Small Letter E
  0x044E, // 0xFE; Cyrillic Small Letter Yu
  0x044F, // 0xFF; Cyrillic Small Letter Ya
];

const Map<int, int> dictionary = <int, int>{
  0x0000: 0x00, // Null
  0x0001: 0x01, // Start Of Heading
  0x0002: 0x02, // Start Of Text
  0x0003: 0x03, // End Of Text
  0x0004: 0x04, // End Of Transmission
  0x0005: 0x05, // Enquiry
  0x0006: 0x06, // Acknowledge
  0x0007: 0x07, // Bell
  0x0008: 0x08, // Backspace
  0x0009: 0x09, // Horizontal Tabulation
  0x000A: 0x0A, // Line Feed
  0x000B: 0x0B, // Vertical Tabulation
  0x000C: 0x0C, // Form Feed
  0x000D: 0x0D, // Carriage Return
  0x000E: 0x0E, // Shift Out
  0x000F: 0x0F, // Shift In
  0x0010: 0x10, // Data Link Escape
  0x0011: 0x11, // Device Control One
  0x0012: 0x12, // Device Control Two
  0x0013: 0x13, // Device Control Three
  0x0014: 0x14, // Device Control Four
  0x0015: 0x15, // Negative Acknowledge
  0x0016: 0x16, // Synchronous Idle
  0x0017: 0x17, // End Of Transmission Block
  0x0018: 0x18, // Cancel
  0x0019: 0x19, // End Of Medium
  0x001A: 0x1A, // Substitute
  0x001B: 0x1B, // Escape
  0x001C: 0x1C, // File Separator
  0x001D: 0x1D, // Group Separator
  0x001E: 0x1E, // Record Separator
  0x001F: 0x1F, // Unit Separator
  0x0020: 0x20, // Space
  0x0021: 0x21, // Exclamation Mark
  0x0022: 0x22, // Quotation Mark
  0x0023: 0x23, // Number Sign
  0x0024: 0x24, // Dollar Sign
  0x0025: 0x25, // Percent Sign
  0x0026: 0x26, // Ampersand
  0x0027: 0x27, // Apostrophe
  0x0028: 0x28, // Left Parenthesis
  0x0029: 0x29, // Right Parenthesis
  0x002A: 0x2A, // Asterisk
  0x002B: 0x2B, // Plus Sign
  0x002C: 0x2C, // Comma
  0x002D: 0x2D, // Hyphen-Minus
  0x002E: 0x2E, // Full Stop
  0x002F: 0x2F, // Solidus
  0x0030: 0x30, // Digit Zero
  0x0031: 0x31, // Digit One
  0x0032: 0x32, // Digit Two
  0x0033: 0x33, // Digit Three
  0x0034: 0x34, // Digit Four
  0x0035: 0x35, // Digit Five
  0x0036: 0x36, // Digit Six
  0x0037: 0x37, // Digit Seven
  0x0038: 0x38, // Digit Eight
  0x0039: 0x39, // Digit Nine
  0x003A: 0x3A, // Colon
  0x003B: 0x3B, // Semicolon
  0x003C: 0x3C, // Less-Than Sign
  0x003D: 0x3D, // Equals Sign
  0x003E: 0x3E, // Greater-Than Sign
  0x003F: 0x3F, // Question Mark
  0x0040: 0x40, // Commercial At
  0x0041: 0x41, // Latin Capital Letter A
  0x0042: 0x42, // Latin Capital Letter B
  0x0043: 0x43, // Latin Capital Letter C
  0x0044: 0x44, // Latin Capital Letter D
  0x0045: 0x45, // Latin Capital Letter E
  0x0046: 0x46, // Latin Capital Letter F
  0x0047: 0x47, // Latin Capital Letter G
  0x0048: 0x48, // Latin Capital Letter H
  0x0049: 0x49, // Latin Capital Letter I
  0x004A: 0x4A, // Latin Capital Letter J
  0x004B: 0x4B, // Latin Capital Letter K
  0x004C: 0x4C, // Latin Capital Letter L
  0x004D: 0x4D, // Latin Capital Letter M
  0x004E: 0x4E, // Latin Capital Letter N
  0x004F: 0x4F, // Latin Capital Letter O
  0x0050: 0x50, // Latin Capital Letter P
  0x0051: 0x51, // Latin Capital Letter Q
  0x0052: 0x52, // Latin Capital Letter R
  0x0053: 0x53, // Latin Capital Letter S
  0x0054: 0x54, // Latin Capital Letter T
  0x0055: 0x55, // Latin Capital Letter U
  0x0056: 0x56, // Latin Capital Letter V
  0x0057: 0x57, // Latin Capital Letter W
  0x0058: 0x58, // Latin Capital Letter X
  0x0059: 0x59, // Latin Capital Letter Y
  0x005A: 0x5A, // Latin Capital Letter Z
  0x005B: 0x5B, // Left Square Bracket
  0x005C: 0x5C, // Reverse Solidus
  0x005D: 0x5D, // Right Square Bracket
  0x005E: 0x5E, // Circumflex Accent
  0x005F: 0x5F, // Low Line
  0x0060: 0x60, // Grave Accent
  0x0061: 0x61, // Latin Small Letter A
  0x0062: 0x62, // Latin Small Letter B
  0x0063: 0x63, // Latin Small Letter C
  0x0064: 0x64, // Latin Small Letter D
  0x0065: 0x65, // Latin Small Letter E
  0x0066: 0x66, // Latin Small Letter F
  0x0067: 0x67, // Latin Small Letter G
  0x0068: 0x68, // Latin Small Letter H
  0x0069: 0x69, // Latin Small Letter I
  0x006A: 0x6A, // Latin Small Letter J
  0x006B: 0x6B, // Latin Small Letter K
  0x006C: 0x6C, // Latin Small Letter L
  0x006D: 0x6D, // Latin Small Letter M
  0x006E: 0x6E, // Latin Small Letter N
  0x006F: 0x6F, // Latin Small Letter O
  0x0070: 0x70, // Latin Small Letter P
  0x0071: 0x71, // Latin Small Letter Q
  0x0072: 0x72, // Latin Small Letter R
  0x0073: 0x73, // Latin Small Letter S
  0x0074: 0x74, // Latin Small Letter T
  0x0075: 0x75, // Latin Small Letter U
  0x0076: 0x76, // Latin Small Letter V
  0x0077: 0x77, // Latin Small Letter W
  0x0078: 0x78, // Latin Small Letter X
  0x0079: 0x79, // Latin Small Letter Y
  0x007A: 0x7A, // Latin Small Letter Z
  0x007B: 0x7B, // Left Curly Bracket
  0x007C: 0x7C, // Vertical Line
  0x007D: 0x7D, // Right Curly Bracket
  0x007E: 0x7E, // Tilde
  0x007F: 0x7F, // Delete
  0x0098: 0x98,
  0x00A0: 0xA0, // No-Break Space
  0x00A4: 0xA4, // Currency Sign
  0x00A6: 0xA6, // Broken Bar
  0x00A7: 0xA7, // Section Sign
  0x00A9: 0xA9, // Copyright Sign
  0x00AB: 0xAB, // Left-Pointing Double Angle Quotation Mark
  0x00AC: 0xAC, // Not Sign
  0x00AD: 0xAD, // Soft Hyphen
  0x00AE: 0xAE, // Registered Sign
  0x00B0: 0xB0, // Degree Sign
  0x00B1: 0xB1, // Plus-Minus Sign
  0x00B5: 0xB5, // Micro Sign
  0x00B6: 0xB6, // Pilcrow Sign
  0x00B7: 0xB7, // Middle Dot
  0x00BB: 0xBB, // Right-Pointing Double Angle Quotation Mark
  0x00C0: 0x41, // Latin Capital Letter A With Grave
  0x00C1: 0x41, // Latin Capital Letter A With Acute
  0x00C2: 0x41, // Latin Capital Letter A With Circumflex
  0x00C3: 0x41, // Latin Capital Letter A With Tilde
  0x00C4: 0x41, // Latin Capital Letter A With Diaeresis
  0x00C5: 0x41, // Latin Capital Letter A With Ring Above
  0x00C7: 0x43, // Latin Capital Letter C With Cedilla
  0x00C8: 0x45, // Latin Capital Letter E With Grave
  0x00C9: 0x45, // Latin Capital Letter E With Acute
  0x00CA: 0x45, // Latin Capital Letter E With Circumflex
  0x00CB: 0x45, // Latin Capital Letter E With Diaeresis
  0x00CC: 0x49, // Latin Capital Letter I With Grave
  0x00CD: 0x49, // Latin Capital Letter I With Acute
  0x00CE: 0x49, // Latin Capital Letter I With Circumflex
  0x00CF: 0x49, // Latin Capital Letter I With Diaeresis
  0x00D1: 0x4E, // Latin Capital Letter N With Tilde
  0x00D2: 0x4F, // Latin Capital Letter O With Grave
  0x00D3: 0x4F, // Latin Capital Letter O With Acute
  0x00D4: 0x4F, // Latin Capital Letter O With Circumflex
  0x00D5: 0x4F, // Latin Capital Letter O With Tilde
  0x00D6: 0x4F, // Latin Capital Letter O With Diaeresis
  0x00D8: 0x4F, // Latin Capital Letter O With Stroke
  0x00D9: 0x55, // Latin Capital Letter U With Grave
  0x00DA: 0x55, // Latin Capital Letter U With Acute
  0x00DB: 0x55, // Latin Capital Letter U With Circumflex
  0x00DC: 0x55, // Latin Capital Letter U With Diaeresis
  0x00DD: 0x59, // Latin Capital Letter Y With Acute
  0x00E0: 0x61, // Latin Small Letter A With Grave
  0x00E1: 0x61, // Latin Small Letter A With Acute
  0x00E2: 0x61, // Latin Small Letter A With Circumflex
  0x00E3: 0x61, // Latin Small Letter A With Tilde
  0x00E4: 0x61, // Latin Small Letter A With Diaeresis
  0x00E5: 0x61, // Latin Small Letter A With Ring Above
  0x00E7: 0x63, // Latin Small Letter C With Cedilla
  0x00E8: 0x65, // Latin Small Letter E With Grave
  0x00E9: 0x65, // Latin Small Letter E With Acute
  0x00EA: 0x65, // Latin Small Letter E With Circumflex
  0x00EB: 0x65, // Latin Small Letter E With Diaeresis
  0x00EC: 0x69, // Latin Small Letter I With Grave
  0x00ED: 0x69, // Latin Small Letter I With Acute
  0x00EE: 0x69, // Latin Small Letter I With Circumflex
  0x00EF: 0x69, // Latin Small Letter I With Diaeresis
  0x00F1: 0x6E, // Latin Small Letter N With Tilde
  0x00F2: 0x6F, // Latin Small Letter O With Grave
  0x00F3: 0x6F, // Latin Small Letter O With Acute
  0x00F4: 0x6F, // Latin Small Letter O With Circumflex
  0x00F5: 0x6F, // Latin Small Letter O With Tilde
  0x00F6: 0x6F, // Latin Small Letter O With Diaeresis
  0x00F8: 0x6F, // Latin Small Letter O With Stroke
  0x00F9: 0x75, // Latin Small Letter U With Grave
  0x00FA: 0x75, // Latin Small Letter U With Acute
  0x00FB: 0x75, // Latin Small Letter U With Circumflex
  0x00FC: 0x75, // Latin Small Letter U With Diaeresis
  0x00FD: 0x79, // Latin Small Letter Y With Acute
  0x00FF: 0x79, // Latin Small Letter Y With Diaeresis
  0x0100: 0x41, // Latin Capital Letter A With Macron
  0x0101: 0x61, // Latin Small Letter A With Macron
  0x0102: 0x41, // Latin Capital Letter A With Breve
  0x0103: 0x61, // Latin Small Letter A With Breve
  0x0104: 0x41, // Latin Capital Letter A With Ogonek
  0x0105: 0x61, // Latin Small Letter A With Ogonek
  0x0106: 0x43, // Latin Capital Letter C With Acute
  0x0107: 0x63, // Latin Small Letter C With Acute
  0x0108: 0x43, // Latin Capital Letter C With Circumflex
  0x0109: 0x63, // Latin Small Letter C With Circumflex
  0x010A: 0x43, // Latin Capital Letter C With Dot Above
  0x010B: 0x63, // Latin Small Letter C With Dot Above
  0x010C: 0x43, // Latin Capital Letter C With Caron
  0x010D: 0x63, // Latin Small Letter C With Caron
  0x010E: 0x44, // Latin Capital Letter D With Caron
  0x010F: 0x64, // Latin Small Letter D With Caron
  0x0110: 0x44, // Latin Capital Letter D With Stroke
  0x0111: 0x64, // Latin Small Letter D With Stroke
  0x0112: 0x45, // Latin Capital Letter E With Macron
  0x0113: 0x65, // Latin Small Letter E With Macron
  0x0114: 0x45, // Latin Capital Letter E With Breve
  0x0115: 0x65, // Latin Small Letter E With Breve
  0x0116: 0x45, // Latin Capital Letter E With Dot Above
  0x0117: 0x65, // Latin Small Letter E With Dot Above
  0x0118: 0x45, // Latin Capital Letter E With Ogonek
  0x0119: 0x65, // Latin Small Letter E With Ogonek
  0x011A: 0x45, // Latin Capital Letter E With Caron
  0x011B: 0x65, // Latin Small Letter E With Caron
  0x011C: 0x47, // Latin Capital Letter G With Circumflex
  0x011D: 0x67, // Latin Small Letter G With Circumflex
  0x011E: 0x47, // Latin Capital Letter G With Breve
  0x011F: 0x67, // Latin Small Letter G With Breve
  0x0120: 0x47, // Latin Capital Letter G With Dot Above
  0x0121: 0x67, // Latin Small Letter G With Dot Above
  0x0122: 0x47, // Latin Capital Letter G With Cedilla
  0x0123: 0x67, // Latin Small Letter G With Cedilla
  0x0124: 0x48, // Latin Capital Letter H With Circumflex
  0x0125: 0x68, // Latin Small Letter H With Circumflex
  0x0126: 0x48, // Latin Capital Letter H With Stroke
  0x0127: 0x68, // Latin Small Letter H With Stroke
  0x0128: 0x49, // Latin Capital Letter I With Tilde
  0x0129: 0x69, // Latin Small Letter I With Tilde
  0x012A: 0x49, // Latin Capital Letter I With Macron
  0x012B: 0x69, // Latin Small Letter I With Macron
  0x012C: 0x49, // Latin Capital Letter I With Breve
  0x012D: 0x69, // Latin Small Letter I With Breve
  0x012E: 0x49, // Latin Capital Letter I With Ogonek
  0x012F: 0x69, // Latin Small Letter I With Ogonek
  0x0130: 0x49, // Latin Capital Letter I With Dot Above
  0x0134: 0x4A, // Latin Capital Letter J With Circumflex
  0x0135: 0x6A, // Latin Small Letter J With Circumflex
  0x0136: 0x4B, // Latin Capital Letter K With Cedilla
  0x0137: 0x6B, // Latin Small Letter K With Cedilla
  0x0139: 0x4C, // Latin Capital Letter L With Acute
  0x013A: 0x6C, // Latin Small Letter L With Acute
  0x013B: 0x4C, // Latin Capital Letter L With Cedilla
  0x013C: 0x6C, // Latin Small Letter L With Cedilla
  0x013D: 0x4C, // Latin Capital Letter L With Caron
  0x013E: 0x6C, // Latin Small Letter L With Caron
  0x0141: 0x4C, // Latin Capital Letter L With Stroke
  0x0142: 0x6C, // Latin Small Letter L With Stroke
  0x0143: 0x4E, // Latin Capital Letter N With Acute
  0x0144: 0x6E, // Latin Small Letter N With Acute
  0x0145: 0x4E, // Latin Capital Letter N With Cedilla
  0x0146: 0x6E, // Latin Small Letter N With Cedilla
  0x0147: 0x4E, // Latin Capital Letter N With Caron
  0x0148: 0x6E, // Latin Small Letter N With Caron
  0x014C: 0x4F, // Latin Capital Letter O With Macron
  0x014D: 0x6F, // Latin Small Letter O With Macron
  0x014E: 0x4F, // Latin Capital Letter O With Breve
  0x014F: 0x6F, // Latin Small Letter O With Breve
  0x0150: 0x4F, // Latin Capital Letter O With Double Acute
  0x0151: 0x6F, // Latin Small Letter O With Double Acute
  0x0154: 0x52, // Latin Capital Letter R With Acute
  0x0155: 0x72, // Latin Small Letter R With Acute
  0x0156: 0x52, // Latin Capital Letter R With Cedilla
  0x0157: 0x72, // Latin Small Letter R With Cedilla
  0x0158: 0x52, // Latin Capital Letter R With Caron
  0x0159: 0x72, // Latin Small Letter R With Caron
  0x015A: 0x53, // Latin Capital Letter S With Acute
  0x015B: 0x73, // Latin Small Letter S With Acute
  0x015C: 0x53, // Latin Capital Letter S With Circumflex
  0x015D: 0x73, // Latin Small Letter S With Circumflex
  0x015E: 0x53, // Latin Capital Letter S With Cedilla
  0x015F: 0x73, // Latin Small Letter S With Cedilla
  0x0160: 0x53, // Latin Capital Letter S With Caron
  0x0161: 0x73, // Latin Small Letter S With Caron
  0x0162: 0x54, // Latin Capital Letter T With Cedilla
  0x0163: 0x74, // Latin Small Letter T With Cedilla
  0x0164: 0x54, // Latin Capital Letter T With Caron
  0x0165: 0x74, // Latin Small Letter T With Caron
  0x0166: 0x54, // Latin Capital Letter T With Stroke
  0x0167: 0x74, // Latin Small Letter T With Stroke
  0x0168: 0x55, // Latin Capital Letter U With Tilde
  0x0169: 0x75, // Latin Small Letter U With Tilde
  0x016A: 0x55, // Latin Capital Letter U With Macron
  0x016B: 0x75, // Latin Small Letter U With Macron
  0x016C: 0x55, // Latin Capital Letter U With Breve
  0x016D: 0x75, // Latin Small Letter U With Breve
  0x016E: 0x55, // Latin Capital Letter U With Ring Above
  0x016F: 0x75, // Latin Small Letter U With Ring Above
  0x0170: 0x55, // Latin Capital Letter U With Double Acute
  0x0171: 0x75, // Latin Small Letter U With Double Acute
  0x0172: 0x55, // Latin Capital Letter U With Ogonek
  0x0173: 0x75, // Latin Small Letter U With Ogonek
  0x0174: 0x57, // Latin Capital Letter W With Circumflex
  0x0175: 0x77, // Latin Small Letter W With Circumflex
  0x0176: 0x59, // Latin Capital Letter Y With Circumflex
  0x0177: 0x79, // Latin Small Letter Y With Circumflex
  0x0178: 0x59, // Latin Capital Letter Y With Diaeresis
  0x0179: 0x5A, // Latin Capital Letter Z With Acute
  0x017A: 0x7A, // Latin Small Letter Z With Acute
  0x017B: 0x5A, // Latin Capital Letter Z With Dot Above
  0x017C: 0x7A, // Latin Small Letter Z With Dot Above
  0x017D: 0x5A, // Latin Capital Letter Z With Caron
  0x017E: 0x7A, // Latin Small Letter Z With Caron
  0x0180: 0x62, // Latin Small Letter B With Stroke
  0x0197: 0x49, // Latin Capital Letter I With Stroke
  0x019A: 0x6C, // Latin Small Letter L With Bar
  0x019F: 0x4F, // Latin Capital Letter O With Middle Tilde
  0x01A0: 0x4F, // Latin Capital Letter O With Horn
  0x01A1: 0x6F, // Latin Small Letter O With Horn
  0x01AB: 0x74, // Latin Small Letter T With Palatal Hook
  0x01AE: 0x54, // Latin Capital Letter T With Retroflex Hook
  0x01AF: 0x55, // Latin Capital Letter U With Horn
  0x01B0: 0x75, // Latin Small Letter U With Horn
  0x01CD: 0x41, // Latin Capital Letter A With Caron
  0x01CE: 0x61, // Latin Small Letter A With Caron
  0x01CF: 0x49, // Latin Capital Letter I With Caron
  0x01D0: 0x69, // Latin Small Letter I With Caron
  0x01D1: 0x4F, // Latin Capital Letter O With Caron
  0x01D2: 0x6F, // Latin Small Letter O With Caron
  0x01D3: 0x55, // Latin Capital Letter U With Caron
  0x01D4: 0x75, // Latin Small Letter U With Caron
  0x01D5: 0x55, // Latin Capital Letter U With Diaeresis And Macron
  0x01D6: 0x75, // Latin Small Letter U With Diaeresis And Macron
  0x01D7: 0x55, // Latin Capital Letter U With Diaeresis And Acute
  0x01D8: 0x75, // Latin Small Letter U With Diaeresis And Acute
  0x01D9: 0x55, // Latin Capital Letter U With Diaeresis And Caron
  0x01DA: 0x75, // Latin Small Letter U With Diaeresis And Caron
  0x01DB: 0x55, // Latin Capital Letter U With Diaeresis And Grave
  0x01DC: 0x75, // Latin Small Letter U With Diaeresis And Grave
  0x01DE: 0x41, // Latin Capital Letter A With Diaeresis And Macron
  0x01DF: 0x61, // Latin Small Letter A With Diaeresis And Macron
  0x01E4: 0x47, // Latin Capital Letter G With Stroke
  0x01E5: 0x67, // Latin Small Letter G With Stroke
  0x01E6: 0x47, // Latin Capital Letter G With Caron
  0x01E7: 0x67, // Latin Small Letter G With Caron
  0x01E8: 0x4B, // Latin Capital Letter K With Caron
  0x01E9: 0x6B, // Latin Small Letter K With Caron
  0x01EA: 0x4F, // Latin Capital Letter O With Ogonek
  0x01EB: 0x6F, // Latin Small Letter O With Ogonek
  0x01EC: 0x4F, // Latin Capital Letter O With Ogonek And Macron
  0x01ED: 0x6F, // Latin Small Letter O With Ogonek And Macron
  0x01F0: 0x6A, // Latin Small Letter J With Caron
  0x0401: 0xA8, // Cyrillic Capital Letter Io
  0x0402: 0x80, // Cyrillic Capital Letter Dje
  0x0403: 0x81, // Cyrillic Capital Letter Gje
  0x0404: 0xAA, // Cyrillic Capital Letter Ukrainian Ie
  0x0405: 0xBD, // Cyrillic Capital Letter Dze
  0x0406: 0xB2, // Cyrillic Capital Letter Byelorussian-Ukrainian I
  0x0407: 0xAF, // Cyrillic Capital Letter Yi
  0x0408: 0xA3, // Cyrillic Capital Letter Je
  0x0409: 0x8A, // Cyrillic Capital Letter Lje
  0x040A: 0x8C, // Cyrillic Capital Letter Nje
  0x040B: 0x8E, // Cyrillic Capital Letter Tshe
  0x040C: 0x8D, // Cyrillic Capital Letter Kje
  0x040E: 0xA1, // Cyrillic Capital Letter Short U
  0x040F: 0x8F, // Cyrillic Capital Letter Dzhe
  0x0410: 0xC0, // Cyrillic Capital Letter A
  0x0411: 0xC1, // Cyrillic Capital Letter Be
  0x0412: 0xC2, // Cyrillic Capital Letter Ve
  0x0413: 0xC3, // Cyrillic Capital Letter Ghe
  0x0414: 0xC4, // Cyrillic Capital Letter De
  0x0415: 0xC5, // Cyrillic Capital Letter Ie
  0x0416: 0xC6, // Cyrillic Capital Letter Zhe
  0x0417: 0xC7, // Cyrillic Capital Letter Ze
  0x0418: 0xC8, // Cyrillic Capital Letter I
  0x0419: 0xC9, // Cyrillic Capital Letter Short I
  0x041A: 0xCA, // Cyrillic Capital Letter Ka
  0x041B: 0xCB, // Cyrillic Capital Letter El
  0x041C: 0xCC, // Cyrillic Capital Letter Em
  0x041D: 0xCD, // Cyrillic Capital Letter En
  0x041E: 0xCE, // Cyrillic Capital Letter O
  0x041F: 0xCF, // Cyrillic Capital Letter Pe
  0x0420: 0xD0, // Cyrillic Capital Letter Er
  0x0421: 0xD1, // Cyrillic Capital Letter Es
  0x0422: 0xD2, // Cyrillic Capital Letter Te
  0x0423: 0xD3, // Cyrillic Capital Letter U
  0x0424: 0xD4, // Cyrillic Capital Letter Ef
  0x0425: 0xD5, // Cyrillic Capital Letter Ha
  0x0426: 0xD6, // Cyrillic Capital Letter Tse
  0x0427: 0xD7, // Cyrillic Capital Letter Che
  0x0428: 0xD8, // Cyrillic Capital Letter Sha
  0x0429: 0xD9, // Cyrillic Capital Letter Shcha
  0x042A: 0xDA, // Cyrillic Capital Letter Hard Sign
  0x042B: 0xDB, // Cyrillic Capital Letter Yeru
  0x042C: 0xDC, // Cyrillic Capital Letter Soft Sign
  0x042D: 0xDD, // Cyrillic Capital Letter E
  0x042E: 0xDE, // Cyrillic Capital Letter Yu
  0x042F: 0xDF, // Cyrillic Capital Letter Ya
  0x0430: 0xE0, // Cyrillic Small Letter A
  0x0431: 0xE1, // Cyrillic Small Letter Be
  0x0432: 0xE2, // Cyrillic Small Letter Ve
  0x0433: 0xE3, // Cyrillic Small Letter Ghe
  0x0434: 0xE4, // Cyrillic Small Letter De
  0x0435: 0xE5, // Cyrillic Small Letter Ie
  0x0436: 0xE6, // Cyrillic Small Letter Zhe
  0x0437: 0xE7, // Cyrillic Small Letter Ze
  0x0438: 0xE8, // Cyrillic Small Letter I
  0x0439: 0xE9, // Cyrillic Small Letter Short I
  0x043A: 0xEA, // Cyrillic Small Letter Ka
  0x043B: 0xEB, // Cyrillic Small Letter El
  0x043C: 0xEC, // Cyrillic Small Letter Em
  0x043D: 0xED, // Cyrillic Small Letter En
  0x043E: 0xEE, // Cyrillic Small Letter O
  0x043F: 0xEF, // Cyrillic Small Letter Pe
  0x0440: 0xF0, // Cyrillic Small Letter Er
  0x0441: 0xF1, // Cyrillic Small Letter Es
  0x0442: 0xF2, // Cyrillic Small Letter Te
  0x0443: 0xF3, // Cyrillic Small Letter U
  0x0444: 0xF4, // Cyrillic Small Letter Ef
  0x0445: 0xF5, // Cyrillic Small Letter Ha
  0x0446: 0xF6, // Cyrillic Small Letter Tse
  0x0447: 0xF7, // Cyrillic Small Letter Che
  0x0448: 0xF8, // Cyrillic Small Letter Sha
  0x0449: 0xF9, // Cyrillic Small Letter Shcha
  0x044A: 0xFA, // Cyrillic Small Letter Hard Sign
  0x044B: 0xFB, // Cyrillic Small Letter Yeru
  0x044C: 0xFC, // Cyrillic Small Letter Soft Sign
  0x044D: 0xFD, // Cyrillic Small Letter E
  0x044E: 0xFE, // Cyrillic Small Letter Yu
  0x044F: 0xFF, // Cyrillic Small Letter Ya
  0x0451: 0xB8, // Cyrillic Small Letter Io
  0x0452: 0x90, // Cyrillic Small Letter Dje
  0x0453: 0x83, // Cyrillic Small Letter Gje
  0x0454: 0xBA, // Cyrillic Small Letter Ukrainian Ie
  0x0455: 0xBE, // Cyrillic Small Letter Dze
  0x0456: 0xB3, // Cyrillic Small Letter Byelorussian-Ukrainian I
  0x0457: 0xBF, // Cyrillic Small Letter Yi
  0x0458: 0xBC, // Cyrillic Small Letter Je
  0x0459: 0x9A, // Cyrillic Small Letter Lje
  0x045A: 0x9C, // Cyrillic Small Letter Nje
  0x045B: 0x9E, // Cyrillic Small Letter Tshe
  0x045C: 0x9D, // Cyrillic Small Letter Kje
  0x045E: 0xA2, // Cyrillic Small Letter Short U
  0x045F: 0x9F, // Cyrillic Small Letter Dzhe
  0x0490: 0xA5, // Cyrillic Capital Letter Ghe With Upturn
  0x0491: 0xB4, // Cyrillic Small Letter Ghe With Upturn
  0x2013: 0x96, // En Dash
  0x2014: 0x97, // Em Dash
  0x2018: 0x91, // Left Single Quotation Mark
  0x2019: 0x92, // Right Single Quotation Mark
  0x201A: 0x82, // Single Low-9 Quotation Mark
  0x201C: 0x93, // Left Double Quotation Mark
  0x201D: 0x94, // Right Double Quotation Mark
  0x201E: 0x84, // Double Low-9 Quotation Mark
  0x2020: 0x86, // Dagger
  0x2021: 0x87, // Double Dagger
  0x2022: 0x95, // Bullet
  0x2026: 0x85, // Horizontal Ellipsis
  0x2030: 0x89, // Per Mille Sign
  0x2039: 0x8B, // Single Left-Pointing Angle Quotation Mark
  0x203A: 0x9B, // Single Right-Pointing Angle Quotation Mark
  0x203C: 0x21, // Double Exclamation Mark
  0x20AC: 0x88, // Euro Sign
  0x2116: 0xB9, // Numero Sign
  0x2122: 0x99, // Trade Mark Sign
  0x2190: 0x3C, // Leftwards Arrow
  0x2191: 0x5E, // Upwards Arrow
  0x2192: 0x3E, // Rightwards Arrow
  0x2193: 0x76, // Downwards Arrow
  0x2194: 0x2D, // Left Right Arrow
  0x2195: 0xA6, // Up Down Arrow
  0x21A8: 0xA6, // Up Down Arrow With Base
  0x2219: 0x95, // Bullet Operator
  0x221A: 0x76, // Square Root
  0x221F: 0x4C, // Right Angle
  0x2302: 0xA6, // House
  0x2500: 0x2D, // Box Drawings Light Horizontal
  0x2502: 0xA6, // Box Drawings Light Vertical
  0x250C: 0x2D, // Box Drawings Light Down And Right
  0x2510: 0xAC, // Box Drawings Light Down And Left
  0x2514: 0x4C, // Box Drawings Light Up And Right
  0x2518: 0x2D, // Box Drawings Light Up And Left
  0x251C: 0x2B, // Box Drawings Light Vertical And Right
  0x2524: 0x2B, // Box Drawings Light Vertical And Left
  0x252C: 0x54, // Box Drawings Light Down And Horizontal
  0x2534: 0x2B, // Box Drawings Light Up And Horizontal
  0x253C: 0x2B, // Box Drawings Light Vertical And Horizontal
  0x2550: 0x3D, // Box Drawings Double Horizontal
  0x2551: 0xA6, // Box Drawings Double Vertical
  0x2552: 0x2D, // Box Drawings Down Single And Right Double
  0x2553: 0xE3, // Box Drawings Down Double And Right Single
  0x2554: 0xE3, // Box Drawings Double Down And Right
  0x2555: 0xAC, // Box Drawings Down Single And Left Double
  0x2556: 0xAC, // Box Drawings Down Double And Left Single
  0x2557: 0xAC, // Box Drawings Double Down And Left
  0x2558: 0x4C, // Box Drawings Up Single And Right Double
  0x2559: 0x4C, // Box Drawings Up Double And Right Single
  0x255A: 0x4C, // Box Drawings Double Up And Right
  0x255B: 0x2D, // Box Drawings Up Single And Left Double
  0x255C: 0x2D, // Box Drawings Up Double And Left Single
  0x255D: 0x2D, // Box Drawings Double Up And Left
  0x255E: 0xA6, // Box Drawings Vertical Single And Right Double
  0x255F: 0xA6, // Box Drawings Vertical Double And Right Single
  0x2560: 0xA6, // Box Drawings Double Vertical And Right
  0x2561: 0xA6, // Box Drawings Vertical Single And Left Double
  0x2562: 0xA6, // Box Drawings Vertical Double And Left Single
  0x2563: 0xA6, // Box Drawings Double Vertical And Left
  0x2564: 0x54, // Box Drawings Down Single And Horizontal Double
  0x2565: 0x54, // Box Drawings Down Double And Horizontal Single
  0x2566: 0x54, // Box Drawings Double Down And Horizontal
  0x2567: 0xA6, // Box Drawings Up Single And Horizontal Double
  0x2568: 0xA6, // Box Drawings Up Double And Horizontal Single
  0x2569: 0xA6, // Box Drawings Double Up And Horizontal
  0x256A: 0x2B, // Box Drawings Vertical Single And Horizontal Double
  0x256B: 0x2B, // Box Drawings Vertical Double And Horizontal Single
  0x256C: 0x2B, // Box Drawings Double Vertical And Horizontal
  0x2580: 0x2D, // Upper Half Block
  0x2584: 0x2D, // Lower Half Block
  0x2588: 0x2D, // Full Block
  0x258C: 0xA6, // Left Half Block
  0x2590: 0xA6, // Right Half Block
  0x2591: 0x2D, // Light Shade
  0x2592: 0x2D, // Medium Shade
  0x2593: 0x2D, // Dark Shade
  0x25A0: 0xA6, // Black Square
  0x25AC: 0x2D, // Black Rectangle
  0x25B2: 0x5E, // Black Up-Pointing Triangle
  0x25BA: 0x3E, // Black Right-Pointing Pointer
  0x25BC: 0xA1, // Black Down-Pointing Triangle
  0x25C4: 0x3C, // Black Left-Pointing Pointer
  0x25CB: 0x30, // White Circle
  0x25D8: 0x95, // Inverse Bullet
  0x25D9: 0x30, // Inverse White Circle
  0x263A: 0x4F, // White Smiling Face
  0x263B: 0x4F, // Black Smiling Face
  0x263C: 0x30, // White Sun With Rays
  0x2640: 0x2B, // Female Sign
  0x2642: 0x3E, // Male Sign
  0x2660: 0xA6, // Black Spade Suit
  0x2663: 0xA6, // Black Club Suit
  0x2665: 0xA6, // Black Heart Suit
  0x2666: 0xA6, // Black Diamond Suit
  0x266A: 0x64, // Eighth Note
  0x266B: 0x64, // Beamed Eighth Notes
  0xFF01: 0x21, // Fullwidth Exclamation Mark
  0xFF02: 0x22, // Fullwidth Quotation Mark
  0xFF03: 0x23, // Fullwidth Number Sign
  0xFF04: 0x24, // Fullwidth Dollar Sign
  0xFF05: 0x25, // Fullwidth Percent Sign
  0xFF06: 0x26, // Fullwidth Ampersand
  0xFF07: 0x27, // Fullwidth Apostrophe
  0xFF08: 0x28, // Fullwidth Left Parenthesis
  0xFF09: 0x29, // Fullwidth Right Parenthesis
  0xFF0A: 0x2A, // Fullwidth Asterisk
  0xFF0B: 0x2B, // Fullwidth Plus Sign
  0xFF0C: 0x2C, // Fullwidth Comma
  0xFF0D: 0x2D, // Fullwidth Hyphen-Minus
  0xFF0E: 0x2E, // Fullwidth Full Stop
  0xFF0F: 0x2F, // Fullwidth Solidus
  0xFF10: 0x30, // Fullwidth Digit Zero
  0xFF11: 0x31, // Fullwidth Digit One
  0xFF12: 0x32, // Fullwidth Digit Two
  0xFF13: 0x33, // Fullwidth Digit Three
  0xFF14: 0x34, // Fullwidth Digit Four
  0xFF15: 0x35, // Fullwidth Digit Five
  0xFF16: 0x36, // Fullwidth Digit Six
  0xFF17: 0x37, // Fullwidth Digit Seven
  0xFF18: 0x38, // Fullwidth Digit Eight
  0xFF19: 0x39, // Fullwidth Digit Nine
  0xFF1A: 0x3A, // Fullwidth Colon
  0xFF1B: 0x3B, // Fullwidth Semicolon
  0xFF1C: 0x3C, // Fullwidth Less-Than Sign
  0xFF1D: 0x3D, // Fullwidth Equals Sign
  0xFF1E: 0x3E, // Fullwidth Greater-Than Sign
  0xFF1F: 0x3F, // Fullwidth Question Mark
  0xFF20: 0x40, // Fullwidth Commercial At
  0xFF21: 0x41, // Fullwidth Latin Capital Letter A
  0xFF22: 0x42, // Fullwidth Latin Capital Letter B
  0xFF23: 0x43, // Fullwidth Latin Capital Letter C
  0xFF24: 0x44, // Fullwidth Latin Capital Letter D
  0xFF25: 0x45, // Fullwidth Latin Capital Letter E
  0xFF26: 0x46, // Fullwidth Latin Capital Letter F
  0xFF27: 0x47, // Fullwidth Latin Capital Letter G
  0xFF28: 0x48, // Fullwidth Latin Capital Letter H
  0xFF29: 0x49, // Fullwidth Latin Capital Letter I
  0xFF2A: 0x4A, // Fullwidth Latin Capital Letter J
  0xFF2B: 0x4B, // Fullwidth Latin Capital Letter K
  0xFF2C: 0x4C, // Fullwidth Latin Capital Letter L
  0xFF2D: 0x4D, // Fullwidth Latin Capital Letter M
  0xFF2E: 0x4E, // Fullwidth Latin Capital Letter N
  0xFF2F: 0x4F, // Fullwidth Latin Capital Letter O
  0xFF30: 0x50, // Fullwidth Latin Capital Letter P
  0xFF31: 0x51, // Fullwidth Latin Capital Letter Q
  0xFF32: 0x52, // Fullwidth Latin Capital Letter R
  0xFF33: 0x53, // Fullwidth Latin Capital Letter S
  0xFF34: 0x54, // Fullwidth Latin Capital Letter T
  0xFF35: 0x55, // Fullwidth Latin Capital Letter U
  0xFF36: 0x56, // Fullwidth Latin Capital Letter V
  0xFF37: 0x57, // Fullwidth Latin Capital Letter W
  0xFF38: 0x58, // Fullwidth Latin Capital Letter X
  0xFF39: 0x59, // Fullwidth Latin Capital Letter Y
  0xFF3A: 0x5A, // Fullwidth Latin Capital Letter Z
  0xFF3B: 0x5B, // Fullwidth Left Square Bracket
  0xFF3C: 0x5C, // Fullwidth Reverse Solidus
  0xFF3D: 0x5D, // Fullwidth Right Square Bracket
  0xFF3E: 0x5E, // Fullwidth Circumflex Accent
  0xFF3F: 0x5F, // Fullwidth Low Line
  0xFF40: 0x60, // Fullwidth Grave Accent
  0xFF41: 0x61, // Fullwidth Latin Small Letter A
  0xFF42: 0x62, // Fullwidth Latin Small Letter B
  0xFF43: 0x63, // Fullwidth Latin Small Letter C
  0xFF44: 0x64, // Fullwidth Latin Small Letter D
  0xFF45: 0x65, // Fullwidth Latin Small Letter E
  0xFF46: 0x66, // Fullwidth Latin Small Letter F
  0xFF47: 0x67, // Fullwidth Latin Small Letter G
  0xFF48: 0x68, // Fullwidth Latin Small Letter H
  0xFF49: 0x69, // Fullwidth Latin Small Letter I
  0xFF4A: 0x6A, // Fullwidth Latin Small Letter J
  0xFF4B: 0x6B, // Fullwidth Latin Small Letter K
  0xFF4C: 0x6C, // Fullwidth Latin Small Letter L
  0xFF4D: 0x6D, // Fullwidth Latin Small Letter M
  0xFF4E: 0x6E, // Fullwidth Latin Small Letter N
  0xFF4F: 0x6F, // Fullwidth Latin Small Letter O
  0xFF50: 0x70, // Fullwidth Latin Small Letter P
  0xFF51: 0x71, // Fullwidth Latin Small Letter Q
  0xFF52: 0x72, // Fullwidth Latin Small Letter R
  0xFF53: 0x73, // Fullwidth Latin Small Letter S
  0xFF54: 0x74, // Fullwidth Latin Small Letter T
  0xFF55: 0x75, // Fullwidth Latin Small Letter U
  0xFF56: 0x76, // Fullwidth Latin Small Letter V
  0xFF57: 0x77, // Fullwidth Latin Small Letter W
  0xFF58: 0x78, // Fullwidth Latin Small Letter X
  0xFF59: 0x79, // Fullwidth Latin Small Letter Y
  0xFF5A: 0x7A, // Fullwidth Latin Small Letter Z
  0xFF5B: 0x7B, // Fullwidth Left Curly Bracket
  0xFF5C: 0x7C, // Fullwidth Vertical Line
  0xFF5D: 0x7D, // Fullwidth Right Curly Bracket
  0xFF5E: 0x7E, // Fullwidth Tilde
};
