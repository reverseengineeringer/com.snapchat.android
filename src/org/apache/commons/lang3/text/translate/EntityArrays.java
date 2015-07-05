package org.apache.commons.lang3.text.translate;

import java.lang.reflect.Array;

public class EntityArrays
{
  private static final String[][] APOS_ESCAPE;
  private static final String[][] APOS_UNESCAPE;
  private static final String[][] BASIC_ESCAPE;
  private static final String[][] BASIC_UNESCAPE;
  private static final String[][] HTML40_EXTENDED_ESCAPE;
  private static final String[][] HTML40_EXTENDED_UNESCAPE;
  private static final String[][] ISO8859_1_ESCAPE;
  private static final String[][] ISO8859_1_UNESCAPE;
  private static final String[][] JAVA_CTRL_CHARS_ESCAPE;
  private static final String[][] JAVA_CTRL_CHARS_UNESCAPE;
  
  static
  {
    String[][] arrayOfString = new String[96][];
    arrayOfString[0] = { " ", "&nbsp;" };
    arrayOfString[1] = { "¡", "&iexcl;" };
    arrayOfString[2] = { "¢", "&cent;" };
    arrayOfString[3] = { "£", "&pound;" };
    arrayOfString[4] = { "¤", "&curren;" };
    arrayOfString[5] = { "¥", "&yen;" };
    arrayOfString[6] = { "¦", "&brvbar;" };
    arrayOfString[7] = { "§", "&sect;" };
    arrayOfString[8] = { "¨", "&uml;" };
    arrayOfString[9] = { "©", "&copy;" };
    arrayOfString[10] = { "ª", "&ordf;" };
    arrayOfString[11] = { "«", "&laquo;" };
    arrayOfString[12] = { "¬", "&not;" };
    arrayOfString[13] = { "­", "&shy;" };
    arrayOfString[14] = { "®", "&reg;" };
    arrayOfString[15] = { "¯", "&macr;" };
    arrayOfString[16] = { "°", "&deg;" };
    arrayOfString[17] = { "±", "&plusmn;" };
    arrayOfString[18] = { "²", "&sup2;" };
    arrayOfString[19] = { "³", "&sup3;" };
    arrayOfString[20] = { "´", "&acute;" };
    arrayOfString[21] = { "µ", "&micro;" };
    arrayOfString[22] = { "¶", "&para;" };
    arrayOfString[23] = { "·", "&middot;" };
    arrayOfString[24] = { "¸", "&cedil;" };
    arrayOfString[25] = { "¹", "&sup1;" };
    arrayOfString[26] = { "º", "&ordm;" };
    arrayOfString[27] = { "»", "&raquo;" };
    arrayOfString[28] = { "¼", "&frac14;" };
    arrayOfString[29] = { "½", "&frac12;" };
    arrayOfString[30] = { "¾", "&frac34;" };
    arrayOfString[31] = { "¿", "&iquest;" };
    arrayOfString[32] = { "À", "&Agrave;" };
    arrayOfString[33] = { "Á", "&Aacute;" };
    arrayOfString[34] = { "Â", "&Acirc;" };
    arrayOfString[35] = { "Ã", "&Atilde;" };
    arrayOfString[36] = { "Ä", "&Auml;" };
    arrayOfString[37] = { "Å", "&Aring;" };
    arrayOfString[38] = { "Æ", "&AElig;" };
    arrayOfString[39] = { "Ç", "&Ccedil;" };
    arrayOfString[40] = { "È", "&Egrave;" };
    arrayOfString[41] = { "É", "&Eacute;" };
    arrayOfString[42] = { "Ê", "&Ecirc;" };
    arrayOfString[43] = { "Ë", "&Euml;" };
    arrayOfString[44] = { "Ì", "&Igrave;" };
    arrayOfString[45] = { "Í", "&Iacute;" };
    arrayOfString[46] = { "Î", "&Icirc;" };
    arrayOfString[47] = { "Ï", "&Iuml;" };
    arrayOfString[48] = { "Ð", "&ETH;" };
    arrayOfString[49] = { "Ñ", "&Ntilde;" };
    arrayOfString[50] = { "Ò", "&Ograve;" };
    arrayOfString[51] = { "Ó", "&Oacute;" };
    arrayOfString[52] = { "Ô", "&Ocirc;" };
    arrayOfString[53] = { "Õ", "&Otilde;" };
    arrayOfString[54] = { "Ö", "&Ouml;" };
    arrayOfString[55] = { "×", "&times;" };
    arrayOfString[56] = { "Ø", "&Oslash;" };
    arrayOfString[57] = { "Ù", "&Ugrave;" };
    arrayOfString[58] = { "Ú", "&Uacute;" };
    arrayOfString[59] = { "Û", "&Ucirc;" };
    arrayOfString[60] = { "Ü", "&Uuml;" };
    arrayOfString[61] = { "Ý", "&Yacute;" };
    arrayOfString[62] = { "Þ", "&THORN;" };
    arrayOfString[63] = { "ß", "&szlig;" };
    arrayOfString[64] = { "à", "&agrave;" };
    arrayOfString[65] = { "á", "&aacute;" };
    arrayOfString[66] = { "â", "&acirc;" };
    arrayOfString[67] = { "ã", "&atilde;" };
    arrayOfString[68] = { "ä", "&auml;" };
    arrayOfString[69] = { "å", "&aring;" };
    arrayOfString[70] = { "æ", "&aelig;" };
    arrayOfString[71] = { "ç", "&ccedil;" };
    arrayOfString[72] = { "è", "&egrave;" };
    arrayOfString[73] = { "é", "&eacute;" };
    arrayOfString[74] = { "ê", "&ecirc;" };
    arrayOfString[75] = { "ë", "&euml;" };
    arrayOfString[76] = { "ì", "&igrave;" };
    arrayOfString[77] = { "í", "&iacute;" };
    arrayOfString[78] = { "î", "&icirc;" };
    arrayOfString[79] = { "ï", "&iuml;" };
    arrayOfString[80] = { "ð", "&eth;" };
    arrayOfString[81] = { "ñ", "&ntilde;" };
    arrayOfString[82] = { "ò", "&ograve;" };
    arrayOfString[83] = { "ó", "&oacute;" };
    arrayOfString[84] = { "ô", "&ocirc;" };
    arrayOfString[85] = { "õ", "&otilde;" };
    arrayOfString[86] = { "ö", "&ouml;" };
    arrayOfString[87] = { "÷", "&divide;" };
    arrayOfString[88] = { "ø", "&oslash;" };
    arrayOfString[89] = { "ù", "&ugrave;" };
    arrayOfString[90] = { "ú", "&uacute;" };
    arrayOfString[91] = { "û", "&ucirc;" };
    arrayOfString[92] = { "ü", "&uuml;" };
    arrayOfString[93] = { "ý", "&yacute;" };
    arrayOfString[94] = { "þ", "&thorn;" };
    arrayOfString[95] = { "ÿ", "&yuml;" };
    ISO8859_1_ESCAPE = arrayOfString;
    ISO8859_1_UNESCAPE = invert(arrayOfString);
    arrayOfString = new String[''][];
    arrayOfString[0] = { "ƒ", "&fnof;" };
    arrayOfString[1] = { "Α", "&Alpha;" };
    arrayOfString[2] = { "Β", "&Beta;" };
    arrayOfString[3] = { "Γ", "&Gamma;" };
    arrayOfString[4] = { "Δ", "&Delta;" };
    arrayOfString[5] = { "Ε", "&Epsilon;" };
    arrayOfString[6] = { "Ζ", "&Zeta;" };
    arrayOfString[7] = { "Η", "&Eta;" };
    arrayOfString[8] = { "Θ", "&Theta;" };
    arrayOfString[9] = { "Ι", "&Iota;" };
    arrayOfString[10] = { "Κ", "&Kappa;" };
    arrayOfString[11] = { "Λ", "&Lambda;" };
    arrayOfString[12] = { "Μ", "&Mu;" };
    arrayOfString[13] = { "Ν", "&Nu;" };
    arrayOfString[14] = { "Ξ", "&Xi;" };
    arrayOfString[15] = { "Ο", "&Omicron;" };
    arrayOfString[16] = { "Π", "&Pi;" };
    arrayOfString[17] = { "Ρ", "&Rho;" };
    arrayOfString[18] = { "Σ", "&Sigma;" };
    arrayOfString[19] = { "Τ", "&Tau;" };
    arrayOfString[20] = { "Υ", "&Upsilon;" };
    arrayOfString[21] = { "Φ", "&Phi;" };
    arrayOfString[22] = { "Χ", "&Chi;" };
    arrayOfString[23] = { "Ψ", "&Psi;" };
    arrayOfString[24] = { "Ω", "&Omega;" };
    arrayOfString[25] = { "α", "&alpha;" };
    arrayOfString[26] = { "β", "&beta;" };
    arrayOfString[27] = { "γ", "&gamma;" };
    arrayOfString[28] = { "δ", "&delta;" };
    arrayOfString[29] = { "ε", "&epsilon;" };
    arrayOfString[30] = { "ζ", "&zeta;" };
    arrayOfString[31] = { "η", "&eta;" };
    arrayOfString[32] = { "θ", "&theta;" };
    arrayOfString[33] = { "ι", "&iota;" };
    arrayOfString[34] = { "κ", "&kappa;" };
    arrayOfString[35] = { "λ", "&lambda;" };
    arrayOfString[36] = { "μ", "&mu;" };
    arrayOfString[37] = { "ν", "&nu;" };
    arrayOfString[38] = { "ξ", "&xi;" };
    arrayOfString[39] = { "ο", "&omicron;" };
    arrayOfString[40] = { "π", "&pi;" };
    arrayOfString[41] = { "ρ", "&rho;" };
    arrayOfString[42] = { "ς", "&sigmaf;" };
    arrayOfString[43] = { "σ", "&sigma;" };
    arrayOfString[44] = { "τ", "&tau;" };
    arrayOfString[45] = { "υ", "&upsilon;" };
    arrayOfString[46] = { "φ", "&phi;" };
    arrayOfString[47] = { "χ", "&chi;" };
    arrayOfString[48] = { "ψ", "&psi;" };
    arrayOfString[49] = { "ω", "&omega;" };
    arrayOfString[50] = { "ϑ", "&thetasym;" };
    arrayOfString[51] = { "ϒ", "&upsih;" };
    arrayOfString[52] = { "ϖ", "&piv;" };
    arrayOfString[53] = { "•", "&bull;" };
    arrayOfString[54] = { "…", "&hellip;" };
    arrayOfString[55] = { "′", "&prime;" };
    arrayOfString[56] = { "″", "&Prime;" };
    arrayOfString[57] = { "‾", "&oline;" };
    arrayOfString[58] = { "⁄", "&frasl;" };
    arrayOfString[59] = { "℘", "&weierp;" };
    arrayOfString[60] = { "ℑ", "&image;" };
    arrayOfString[61] = { "ℜ", "&real;" };
    arrayOfString[62] = { "™", "&trade;" };
    arrayOfString[63] = { "ℵ", "&alefsym;" };
    arrayOfString[64] = { "←", "&larr;" };
    arrayOfString[65] = { "↑", "&uarr;" };
    arrayOfString[66] = { "→", "&rarr;" };
    arrayOfString[67] = { "↓", "&darr;" };
    arrayOfString[68] = { "↔", "&harr;" };
    arrayOfString[69] = { "↵", "&crarr;" };
    arrayOfString[70] = { "⇐", "&lArr;" };
    arrayOfString[71] = { "⇑", "&uArr;" };
    arrayOfString[72] = { "⇒", "&rArr;" };
    arrayOfString[73] = { "⇓", "&dArr;" };
    arrayOfString[74] = { "⇔", "&hArr;" };
    arrayOfString[75] = { "∀", "&forall;" };
    arrayOfString[76] = { "∂", "&part;" };
    arrayOfString[77] = { "∃", "&exist;" };
    arrayOfString[78] = { "∅", "&empty;" };
    arrayOfString[79] = { "∇", "&nabla;" };
    arrayOfString[80] = { "∈", "&isin;" };
    arrayOfString[81] = { "∉", "&notin;" };
    arrayOfString[82] = { "∋", "&ni;" };
    arrayOfString[83] = { "∏", "&prod;" };
    arrayOfString[84] = { "∑", "&sum;" };
    arrayOfString[85] = { "−", "&minus;" };
    arrayOfString[86] = { "∗", "&lowast;" };
    arrayOfString[87] = { "√", "&radic;" };
    arrayOfString[88] = { "∝", "&prop;" };
    arrayOfString[89] = { "∞", "&infin;" };
    arrayOfString[90] = { "∠", "&ang;" };
    arrayOfString[91] = { "∧", "&and;" };
    arrayOfString[92] = { "∨", "&or;" };
    arrayOfString[93] = { "∩", "&cap;" };
    arrayOfString[94] = { "∪", "&cup;" };
    arrayOfString[95] = { "∫", "&int;" };
    arrayOfString[96] = { "∴", "&there4;" };
    arrayOfString[97] = { "∼", "&sim;" };
    arrayOfString[98] = { "≅", "&cong;" };
    arrayOfString[99] = { "≈", "&asymp;" };
    arrayOfString[100] = { "≠", "&ne;" };
    arrayOfString[101] = { "≡", "&equiv;" };
    arrayOfString[102] = { "≤", "&le;" };
    arrayOfString[103] = { "≥", "&ge;" };
    arrayOfString[104] = { "⊂", "&sub;" };
    arrayOfString[105] = { "⊃", "&sup;" };
    arrayOfString[106] = { "⊆", "&sube;" };
    arrayOfString[107] = { "⊇", "&supe;" };
    arrayOfString[108] = { "⊕", "&oplus;" };
    arrayOfString[109] = { "⊗", "&otimes;" };
    arrayOfString[110] = { "⊥", "&perp;" };
    arrayOfString[111] = { "⋅", "&sdot;" };
    arrayOfString[112] = { "⌈", "&lceil;" };
    arrayOfString[113] = { "⌉", "&rceil;" };
    arrayOfString[114] = { "⌊", "&lfloor;" };
    arrayOfString[115] = { "⌋", "&rfloor;" };
    arrayOfString[116] = { "〈", "&lang;" };
    arrayOfString[117] = { "〉", "&rang;" };
    arrayOfString[118] = { "◊", "&loz;" };
    arrayOfString[119] = { "♠", "&spades;" };
    arrayOfString[120] = { "♣", "&clubs;" };
    arrayOfString[121] = { "♥", "&hearts;" };
    arrayOfString[122] = { "♦", "&diams;" };
    arrayOfString[123] = { "Œ", "&OElig;" };
    arrayOfString[124] = { "œ", "&oelig;" };
    arrayOfString[125] = { "Š", "&Scaron;" };
    arrayOfString[126] = { "š", "&scaron;" };
    arrayOfString[127] = { "Ÿ", "&Yuml;" };
    arrayOfString[''] = { "ˆ", "&circ;" };
    arrayOfString[''] = { "˜", "&tilde;" };
    arrayOfString[''] = { " ", "&ensp;" };
    arrayOfString[''] = { " ", "&emsp;" };
    arrayOfString[''] = { " ", "&thinsp;" };
    arrayOfString[''] = { "‌", "&zwnj;" };
    arrayOfString[''] = { "‍", "&zwj;" };
    arrayOfString[''] = { "‎", "&lrm;" };
    arrayOfString[''] = { "‏", "&rlm;" };
    arrayOfString[''] = { "–", "&ndash;" };
    arrayOfString[''] = { "—", "&mdash;" };
    arrayOfString[''] = { "‘", "&lsquo;" };
    arrayOfString[''] = { "’", "&rsquo;" };
    arrayOfString[''] = { "‚", "&sbquo;" };
    arrayOfString[''] = { "“", "&ldquo;" };
    arrayOfString[''] = { "”", "&rdquo;" };
    arrayOfString[''] = { "„", "&bdquo;" };
    arrayOfString[''] = { "†", "&dagger;" };
    arrayOfString[''] = { "‡", "&Dagger;" };
    arrayOfString[''] = { "‰", "&permil;" };
    arrayOfString[''] = { "‹", "&lsaquo;" };
    arrayOfString[''] = { "›", "&rsaquo;" };
    arrayOfString[''] = { "€", "&euro;" };
    HTML40_EXTENDED_ESCAPE = arrayOfString;
    HTML40_EXTENDED_UNESCAPE = invert(arrayOfString);
    arrayOfString = new String[4][];
    arrayOfString[0] = { "\"", "&quot;" };
    arrayOfString[1] = { "&", "&amp;" };
    arrayOfString[2] = { "<", "&lt;" };
    arrayOfString[3] = { ">", "&gt;" };
    BASIC_ESCAPE = arrayOfString;
    BASIC_UNESCAPE = invert(arrayOfString);
    arrayOfString = new String[1][];
    arrayOfString[0] = { "'", "&apos;" };
    APOS_ESCAPE = arrayOfString;
    APOS_UNESCAPE = invert(arrayOfString);
    arrayOfString = new String[5][];
    arrayOfString[0] = { "\b", "\\b" };
    arrayOfString[1] = { "\n", "\\n" };
    arrayOfString[2] = { "\t", "\\t" };
    arrayOfString[3] = { "\f", "\\f" };
    arrayOfString[4] = { "\r", "\\r" };
    JAVA_CTRL_CHARS_ESCAPE = arrayOfString;
    JAVA_CTRL_CHARS_UNESCAPE = invert(arrayOfString);
  }
  
  public static String[][] APOS_ESCAPE()
  {
    return (String[][])APOS_ESCAPE.clone();
  }
  
  public static String[][] APOS_UNESCAPE()
  {
    return (String[][])APOS_UNESCAPE.clone();
  }
  
  public static String[][] BASIC_ESCAPE()
  {
    return (String[][])BASIC_ESCAPE.clone();
  }
  
  public static String[][] BASIC_UNESCAPE()
  {
    return (String[][])BASIC_UNESCAPE.clone();
  }
  
  public static String[][] HTML40_EXTENDED_ESCAPE()
  {
    return (String[][])HTML40_EXTENDED_ESCAPE.clone();
  }
  
  public static String[][] HTML40_EXTENDED_UNESCAPE()
  {
    return (String[][])HTML40_EXTENDED_UNESCAPE.clone();
  }
  
  public static String[][] ISO8859_1_ESCAPE()
  {
    return (String[][])ISO8859_1_ESCAPE.clone();
  }
  
  public static String[][] ISO8859_1_UNESCAPE()
  {
    return (String[][])ISO8859_1_UNESCAPE.clone();
  }
  
  public static String[][] JAVA_CTRL_CHARS_ESCAPE()
  {
    return (String[][])JAVA_CTRL_CHARS_ESCAPE.clone();
  }
  
  public static String[][] JAVA_CTRL_CHARS_UNESCAPE()
  {
    return (String[][])JAVA_CTRL_CHARS_UNESCAPE.clone();
  }
  
  public static String[][] invert(String[][] paramArrayOfString)
  {
    String[][] arrayOfString = (String[][])Array.newInstance(String.class, new int[] { paramArrayOfString.length, 2 });
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      arrayOfString[i][0] = paramArrayOfString[i][1];
      arrayOfString[i][1] = paramArrayOfString[i][0];
      i += 1;
    }
    return arrayOfString;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.translate.EntityArrays
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */