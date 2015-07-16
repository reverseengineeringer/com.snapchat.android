package org.apache.commons.lang3;

import java.io.Writer;
import org.apache.commons.lang3.text.translate.AggregateTranslator;
import org.apache.commons.lang3.text.translate.CharSequenceTranslator;
import org.apache.commons.lang3.text.translate.EntityArrays;
import org.apache.commons.lang3.text.translate.JavaUnicodeEscaper;
import org.apache.commons.lang3.text.translate.LookupTranslator;
import org.apache.commons.lang3.text.translate.NumericEntityEscaper;
import org.apache.commons.lang3.text.translate.NumericEntityUnescaper;
import org.apache.commons.lang3.text.translate.NumericEntityUnescaper.OPTION;
import org.apache.commons.lang3.text.translate.OctalUnescaper;
import org.apache.commons.lang3.text.translate.UnicodeUnescaper;
import org.apache.commons.lang3.text.translate.UnicodeUnpairedSurrogateRemover;

public class StringEscapeUtils
{
  public static final CharSequenceTranslator ESCAPE_CSV;
  public static final CharSequenceTranslator ESCAPE_ECMASCRIPT;
  public static final CharSequenceTranslator ESCAPE_HTML3;
  public static final CharSequenceTranslator ESCAPE_HTML4;
  public static final CharSequenceTranslator ESCAPE_JAVA = new LookupTranslator(new String[][] { { "\"", "\\\"" }, { "\\", "\\\\" } }).with(new CharSequenceTranslator[] { new LookupTranslator(EntityArrays.JAVA_CTRL_CHARS_ESCAPE()) }).with(new CharSequenceTranslator[] { JavaUnicodeEscaper.outsideOf(32, 127) });
  public static final CharSequenceTranslator ESCAPE_JSON;
  @Deprecated
  public static final CharSequenceTranslator ESCAPE_XML;
  public static final CharSequenceTranslator ESCAPE_XML10;
  public static final CharSequenceTranslator ESCAPE_XML11;
  public static final CharSequenceTranslator UNESCAPE_CSV = new CsvUnescaper();
  public static final CharSequenceTranslator UNESCAPE_ECMASCRIPT;
  public static final CharSequenceTranslator UNESCAPE_HTML3;
  public static final CharSequenceTranslator UNESCAPE_HTML4;
  public static final CharSequenceTranslator UNESCAPE_JAVA;
  public static final CharSequenceTranslator UNESCAPE_JSON;
  public static final CharSequenceTranslator UNESCAPE_XML;
  
  static
  {
    Object localObject1 = { "\\", "\\\\" };
    Object localObject2 = { "/", "\\/" };
    ESCAPE_ECMASCRIPT = new AggregateTranslator(new CharSequenceTranslator[] { new LookupTranslator(new String[][] { { "'", "\\'" }, { "\"", "\\\"" }, localObject1, localObject2 }), new LookupTranslator(EntityArrays.JAVA_CTRL_CHARS_ESCAPE()), JavaUnicodeEscaper.outsideOf(32, 127) });
    localObject1 = new String[] { "\\", "\\\\" };
    ESCAPE_JSON = new AggregateTranslator(new CharSequenceTranslator[] { new LookupTranslator(new String[][] { { "\"", "\\\"" }, localObject1, { "/", "\\/" } }), new LookupTranslator(EntityArrays.JAVA_CTRL_CHARS_ESCAPE()), JavaUnicodeEscaper.outsideOf(32, 127) });
    ESCAPE_XML = new AggregateTranslator(new CharSequenceTranslator[] { new LookupTranslator(EntityArrays.BASIC_ESCAPE()), new LookupTranslator(EntityArrays.APOS_ESCAPE()) });
    localObject1 = new LookupTranslator(EntityArrays.BASIC_ESCAPE());
    localObject2 = new LookupTranslator(EntityArrays.APOS_ESCAPE());
    String[] arrayOfString1 = { "\000", "" };
    String[] arrayOfString2 = { "\001", "" };
    String[] arrayOfString3 = { "\002", "" };
    String[] arrayOfString4 = { "\003", "" };
    String[] arrayOfString5 = { "\005", "" };
    String[] arrayOfString6 = { "\006", "" };
    String[] arrayOfString7 = { "\013", "" };
    String[] arrayOfString8 = { "\f", "" };
    String[] arrayOfString9 = { "\020", "" };
    String[] arrayOfString10 = { "\021", "" };
    String[] arrayOfString11 = { "\023", "" };
    String[] arrayOfString12 = { "\025", "" };
    String[] arrayOfString13 = { "\026", "" };
    String[] arrayOfString14 = { "\027", "" };
    String[] arrayOfString15 = { "\030", "" };
    String[] arrayOfString16 = { "\031", "" };
    String[] arrayOfString17 = { "\033", "" };
    String[] arrayOfString18 = { "\034", "" };
    String[] arrayOfString19 = { "￾", "" };
    ESCAPE_XML10 = new AggregateTranslator(new CharSequenceTranslator[] { localObject1, localObject2, new LookupTranslator(new String[][] { arrayOfString1, arrayOfString2, arrayOfString3, arrayOfString4, { "\004", "" }, arrayOfString5, arrayOfString6, { "\007", "" }, { "\b", "" }, arrayOfString7, arrayOfString8, { "\016", "" }, { "\017", "" }, arrayOfString9, arrayOfString10, { "\022", "" }, arrayOfString11, { "\024", "" }, arrayOfString12, arrayOfString13, arrayOfString14, arrayOfString15, arrayOfString16, { "\032", "" }, arrayOfString17, arrayOfString18, { "\035", "" }, { "\036", "" }, { "\037", "" }, arrayOfString19, { "￿", "" } }), NumericEntityEscaper.between(127, 132), NumericEntityEscaper.between(134, 159), new UnicodeUnpairedSurrogateRemover() });
    ESCAPE_XML11 = new AggregateTranslator(new CharSequenceTranslator[] { new LookupTranslator(EntityArrays.BASIC_ESCAPE()), new LookupTranslator(EntityArrays.APOS_ESCAPE()), new LookupTranslator(new String[][] { { "\000", "" }, { "\013", "&#11;" }, { "\f", "&#12;" }, { "￾", "" }, { "￿", "" } }), NumericEntityEscaper.between(1, 8), NumericEntityEscaper.between(14, 31), NumericEntityEscaper.between(127, 132), NumericEntityEscaper.between(134, 159), new UnicodeUnpairedSurrogateRemover() });
    ESCAPE_HTML3 = new AggregateTranslator(new CharSequenceTranslator[] { new LookupTranslator(EntityArrays.BASIC_ESCAPE()), new LookupTranslator(EntityArrays.ISO8859_1_ESCAPE()) });
    ESCAPE_HTML4 = new AggregateTranslator(new CharSequenceTranslator[] { new LookupTranslator(EntityArrays.BASIC_ESCAPE()), new LookupTranslator(EntityArrays.ISO8859_1_ESCAPE()), new LookupTranslator(EntityArrays.HTML40_EXTENDED_ESCAPE()) });
    ESCAPE_CSV = new CsvEscaper();
    localObject1 = new AggregateTranslator(new CharSequenceTranslator[] { new OctalUnescaper(), new UnicodeUnescaper(), new LookupTranslator(EntityArrays.JAVA_CTRL_CHARS_UNESCAPE()), new LookupTranslator(new String[][] { { "\\\\", "\\" }, { "\\\"", "\"" }, { "\\'", "'" }, { "\\", "" } }) });
    UNESCAPE_JAVA = (CharSequenceTranslator)localObject1;
    UNESCAPE_ECMASCRIPT = (CharSequenceTranslator)localObject1;
    UNESCAPE_JSON = UNESCAPE_JAVA;
    UNESCAPE_HTML3 = new AggregateTranslator(new CharSequenceTranslator[] { new LookupTranslator(EntityArrays.BASIC_UNESCAPE()), new LookupTranslator(EntityArrays.ISO8859_1_UNESCAPE()), new NumericEntityUnescaper(new NumericEntityUnescaper.OPTION[0]) });
    UNESCAPE_HTML4 = new AggregateTranslator(new CharSequenceTranslator[] { new LookupTranslator(EntityArrays.BASIC_UNESCAPE()), new LookupTranslator(EntityArrays.ISO8859_1_UNESCAPE()), new LookupTranslator(EntityArrays.HTML40_EXTENDED_UNESCAPE()), new NumericEntityUnescaper(new NumericEntityUnescaper.OPTION[0]) });
    UNESCAPE_XML = new AggregateTranslator(new CharSequenceTranslator[] { new LookupTranslator(EntityArrays.BASIC_UNESCAPE()), new LookupTranslator(EntityArrays.APOS_UNESCAPE()), new NumericEntityUnescaper(new NumericEntityUnescaper.OPTION[0]) });
  }
  
  public static final String escapeCsv(String paramString)
  {
    return ESCAPE_CSV.translate(paramString);
  }
  
  public static final String escapeEcmaScript(String paramString)
  {
    return ESCAPE_ECMASCRIPT.translate(paramString);
  }
  
  public static final String escapeHtml3(String paramString)
  {
    return ESCAPE_HTML3.translate(paramString);
  }
  
  public static final String escapeHtml4(String paramString)
  {
    return ESCAPE_HTML4.translate(paramString);
  }
  
  public static final String escapeJava(String paramString)
  {
    return ESCAPE_JAVA.translate(paramString);
  }
  
  public static final String escapeJson(String paramString)
  {
    return ESCAPE_JSON.translate(paramString);
  }
  
  @Deprecated
  public static final String escapeXml(String paramString)
  {
    return ESCAPE_XML.translate(paramString);
  }
  
  public static String escapeXml10(String paramString)
  {
    return ESCAPE_XML10.translate(paramString);
  }
  
  public static String escapeXml11(String paramString)
  {
    return ESCAPE_XML11.translate(paramString);
  }
  
  public static final String unescapeCsv(String paramString)
  {
    return UNESCAPE_CSV.translate(paramString);
  }
  
  public static final String unescapeEcmaScript(String paramString)
  {
    return UNESCAPE_ECMASCRIPT.translate(paramString);
  }
  
  public static final String unescapeHtml3(String paramString)
  {
    return UNESCAPE_HTML3.translate(paramString);
  }
  
  public static final String unescapeHtml4(String paramString)
  {
    return UNESCAPE_HTML4.translate(paramString);
  }
  
  public static final String unescapeJava(String paramString)
  {
    return UNESCAPE_JAVA.translate(paramString);
  }
  
  public static final String unescapeJson(String paramString)
  {
    return UNESCAPE_JSON.translate(paramString);
  }
  
  public static final String unescapeXml(String paramString)
  {
    return UNESCAPE_XML.translate(paramString);
  }
  
  static class CsvEscaper
    extends CharSequenceTranslator
  {
    private static final char CSV_DELIMITER = ',';
    private static final char CSV_QUOTE = '"';
    private static final String CSV_QUOTE_STR = "\"";
    private static final char[] CSV_SEARCH_CHARS = { 44, 34, 13, 10 };
    
    public int translate(CharSequence paramCharSequence, int paramInt, Writer paramWriter)
    {
      if (paramInt != 0) {
        throw new IllegalStateException("CsvEscaper should never reach the [1] index");
      }
      if (StringUtils.containsNone(paramCharSequence.toString(), CSV_SEARCH_CHARS)) {
        paramWriter.write(paramCharSequence.toString());
      }
      for (;;)
      {
        return Character.codePointCount(paramCharSequence, 0, paramCharSequence.length());
        paramWriter.write(34);
        paramWriter.write(StringUtils.replace(paramCharSequence.toString(), CSV_QUOTE_STR, CSV_QUOTE_STR + CSV_QUOTE_STR));
        paramWriter.write(34);
      }
    }
  }
  
  static class CsvUnescaper
    extends CharSequenceTranslator
  {
    private static final char CSV_DELIMITER = ',';
    private static final char CSV_QUOTE = '"';
    private static final String CSV_QUOTE_STR = "\"";
    private static final char[] CSV_SEARCH_CHARS = { 44, 34, 13, 10 };
    
    public int translate(CharSequence paramCharSequence, int paramInt, Writer paramWriter)
    {
      if (paramInt != 0) {
        throw new IllegalStateException("CsvUnescaper should never reach the [1] index");
      }
      if ((paramCharSequence.charAt(0) != '"') || (paramCharSequence.charAt(paramCharSequence.length() - 1) != '"'))
      {
        paramWriter.write(paramCharSequence.toString());
        return Character.codePointCount(paramCharSequence, 0, paramCharSequence.length());
      }
      String str = paramCharSequence.subSequence(1, paramCharSequence.length() - 1).toString();
      if (StringUtils.containsAny(str, CSV_SEARCH_CHARS)) {
        paramWriter.write(StringUtils.replace(str, CSV_QUOTE_STR + CSV_QUOTE_STR, CSV_QUOTE_STR));
      }
      for (;;)
      {
        return Character.codePointCount(paramCharSequence, 0, paramCharSequence.length());
        paramWriter.write(paramCharSequence.toString());
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.StringEscapeUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */