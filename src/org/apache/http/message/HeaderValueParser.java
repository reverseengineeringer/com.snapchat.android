package org.apache.http.message;

import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.util.CharArrayBuffer;

public abstract interface HeaderValueParser
{
  public abstract HeaderElement[] parseElements(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor);
  
  public abstract HeaderElement parseHeaderElement(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor);
  
  public abstract NameValuePair parseNameValuePair(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor);
  
  public abstract NameValuePair[] parseParameters(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor);
}

/* Location:
 * Qualified Name:     org.apache.http.message.HeaderValueParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */