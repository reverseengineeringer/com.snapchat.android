package org.apache.http.message;

import java.util.ArrayList;
import java.util.List;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.Immutable;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@Immutable
public class BasicHeaderValueParser
  implements HeaderValueParser
{
  private static final char[] ALL_DELIMITERS = { 59, 44 };
  @Deprecated
  public static final BasicHeaderValueParser DEFAULT = new BasicHeaderValueParser();
  private static final char ELEM_DELIMITER = ',';
  public static final BasicHeaderValueParser INSTANCE = new BasicHeaderValueParser();
  private static final char PARAM_DELIMITER = ';';
  
  private static boolean isOneOf(char paramChar, char[] paramArrayOfChar)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int j;
    int i;
    if (paramArrayOfChar != null)
    {
      j = paramArrayOfChar.length;
      i = 0;
    }
    for (;;)
    {
      bool1 = bool2;
      if (i < j)
      {
        if (paramChar == paramArrayOfChar[i]) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public static HeaderElement[] parseElements(String paramString, HeaderValueParser paramHeaderValueParser)
  {
    Args.notNull(paramString, "Value");
    CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(paramString.length());
    localCharArrayBuffer.append(paramString);
    paramString = new ParserCursor(0, paramString.length());
    if (paramHeaderValueParser != null) {}
    for (;;)
    {
      return paramHeaderValueParser.parseElements(localCharArrayBuffer, paramString);
      paramHeaderValueParser = INSTANCE;
    }
  }
  
  public static HeaderElement parseHeaderElement(String paramString, HeaderValueParser paramHeaderValueParser)
  {
    Args.notNull(paramString, "Value");
    CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(paramString.length());
    localCharArrayBuffer.append(paramString);
    paramString = new ParserCursor(0, paramString.length());
    if (paramHeaderValueParser != null) {}
    for (;;)
    {
      return paramHeaderValueParser.parseHeaderElement(localCharArrayBuffer, paramString);
      paramHeaderValueParser = INSTANCE;
    }
  }
  
  public static NameValuePair parseNameValuePair(String paramString, HeaderValueParser paramHeaderValueParser)
  {
    Args.notNull(paramString, "Value");
    CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(paramString.length());
    localCharArrayBuffer.append(paramString);
    paramString = new ParserCursor(0, paramString.length());
    if (paramHeaderValueParser != null) {}
    for (;;)
    {
      return paramHeaderValueParser.parseNameValuePair(localCharArrayBuffer, paramString);
      paramHeaderValueParser = INSTANCE;
    }
  }
  
  public static NameValuePair[] parseParameters(String paramString, HeaderValueParser paramHeaderValueParser)
  {
    Args.notNull(paramString, "Value");
    CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(paramString.length());
    localCharArrayBuffer.append(paramString);
    paramString = new ParserCursor(0, paramString.length());
    if (paramHeaderValueParser != null) {}
    for (;;)
    {
      return paramHeaderValueParser.parseParameters(localCharArrayBuffer, paramString);
      paramHeaderValueParser = INSTANCE;
    }
  }
  
  protected HeaderElement createHeaderElement(String paramString1, String paramString2, NameValuePair[] paramArrayOfNameValuePair)
  {
    return new BasicHeaderElement(paramString1, paramString2, paramArrayOfNameValuePair);
  }
  
  protected NameValuePair createNameValuePair(String paramString1, String paramString2)
  {
    return new BasicNameValuePair(paramString1, paramString2);
  }
  
  public HeaderElement[] parseElements(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor)
  {
    Args.notNull(paramCharArrayBuffer, "Char array buffer");
    Args.notNull(paramParserCursor, "Parser cursor");
    ArrayList localArrayList = new ArrayList();
    while (!paramParserCursor.atEnd())
    {
      HeaderElement localHeaderElement = parseHeaderElement(paramCharArrayBuffer, paramParserCursor);
      if ((localHeaderElement.getName().length() != 0) || (localHeaderElement.getValue() != null)) {
        localArrayList.add(localHeaderElement);
      }
    }
    return (HeaderElement[])localArrayList.toArray(new HeaderElement[localArrayList.size()]);
  }
  
  public HeaderElement parseHeaderElement(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor)
  {
    Args.notNull(paramCharArrayBuffer, "Char array buffer");
    Args.notNull(paramParserCursor, "Parser cursor");
    NameValuePair localNameValuePair = parseNameValuePair(paramCharArrayBuffer, paramParserCursor);
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (!paramParserCursor.atEnd())
    {
      localObject1 = localObject2;
      if (paramCharArrayBuffer.charAt(paramParserCursor.getPos() - 1) != ',') {
        localObject1 = parseParameters(paramCharArrayBuffer, paramParserCursor);
      }
    }
    return createHeaderElement(localNameValuePair.getName(), localNameValuePair.getValue(), (NameValuePair[])localObject1);
  }
  
  public NameValuePair parseNameValuePair(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor)
  {
    return parseNameValuePair(paramCharArrayBuffer, paramParserCursor, ALL_DELIMITERS);
  }
  
  public NameValuePair parseNameValuePair(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor, char[] paramArrayOfChar)
  {
    int i1 = 1;
    Args.notNull(paramCharArrayBuffer, "Char array buffer");
    Args.notNull(paramParserCursor, "Parser cursor");
    int j = paramParserCursor.getPos();
    int i = paramParserCursor.getPos();
    int i2 = paramParserCursor.getUpperBound();
    char c;
    if (j < i2)
    {
      c = paramCharArrayBuffer.charAt(j);
      if (c != '=') {
        if (!isOneOf(c, paramArrayOfChar)) {}
      }
    }
    for (int k = 1;; k = 0)
    {
      String str;
      if (j == i2)
      {
        str = paramCharArrayBuffer.substringTrimmed(i, i2);
        k = 1;
      }
      for (;;)
      {
        if (k == 0) {
          break label136;
        }
        paramParserCursor.updatePos(j);
        return createNameValuePair(str, null);
        j += 1;
        break;
        str = paramCharArrayBuffer.substringTrimmed(i, j);
        j += 1;
      }
      label136:
      int n = 0;
      int m = 0;
      i = j;
      if (i < i2)
      {
        c = paramCharArrayBuffer.charAt(i);
        if ((c == '"') && (n == 0)) {
          if (m == 0)
          {
            m = 1;
            label181:
            if ((m != 0) || (n != 0) || (!isOneOf(c, paramArrayOfChar))) {
              break label238;
            }
            m = i1;
          }
        }
      }
      for (;;)
      {
        if ((j < i) && (HTTP.isWhitespace(paramCharArrayBuffer.charAt(j))))
        {
          j += 1;
          continue;
          m = 0;
          break label181;
          label238:
          if ((n == 0) && (m != 0) && (c == '\\')) {}
          for (n = 1;; n = 0)
          {
            i += 1;
            break;
          }
        }
        for (;;)
        {
          if ((k > j) && (HTTP.isWhitespace(paramCharArrayBuffer.charAt(k - 1))))
          {
            k -= 1;
          }
          else
          {
            i1 = k;
            n = j;
            if (k - j >= 2)
            {
              i1 = k;
              n = j;
              if (paramCharArrayBuffer.charAt(j) == '"')
              {
                i1 = k;
                n = j;
                if (paramCharArrayBuffer.charAt(k - 1) == '"')
                {
                  n = j + 1;
                  i1 = k - 1;
                }
              }
            }
            paramCharArrayBuffer = paramCharArrayBuffer.substring(n, i1);
            if (m != 0) {
              i += 1;
            }
            for (;;)
            {
              paramParserCursor.updatePos(i);
              return createNameValuePair(str, paramCharArrayBuffer);
            }
            k = i;
          }
        }
        break label181;
        m = k;
      }
    }
  }
  
  public NameValuePair[] parseParameters(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor)
  {
    Args.notNull(paramCharArrayBuffer, "Char array buffer");
    Args.notNull(paramParserCursor, "Parser cursor");
    int i = paramParserCursor.getPos();
    int j = paramParserCursor.getUpperBound();
    while ((i < j) && (HTTP.isWhitespace(paramCharArrayBuffer.charAt(i)))) {
      i += 1;
    }
    paramParserCursor.updatePos(i);
    if (paramParserCursor.atEnd()) {
      return new NameValuePair[0];
    }
    ArrayList localArrayList = new ArrayList();
    do
    {
      if (paramParserCursor.atEnd()) {
        break;
      }
      localArrayList.add(parseNameValuePair(paramCharArrayBuffer, paramParserCursor));
    } while (paramCharArrayBuffer.charAt(paramParserCursor.getPos() - 1) != ',');
    return (NameValuePair[])localArrayList.toArray(new NameValuePair[localArrayList.size()]);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.message.BasicHeaderValueParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */