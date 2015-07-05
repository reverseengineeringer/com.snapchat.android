package org.apache.http.message;

import org.apache.http.Header;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.util.CharArrayBuffer;

public abstract interface LineParser
{
  public abstract boolean hasProtocolVersion(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor);
  
  public abstract Header parseHeader(CharArrayBuffer paramCharArrayBuffer);
  
  public abstract ProtocolVersion parseProtocolVersion(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor);
  
  public abstract RequestLine parseRequestLine(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor);
  
  public abstract StatusLine parseStatusLine(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor);
}

/* Location:
 * Qualified Name:     org.apache.http.message.LineParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */