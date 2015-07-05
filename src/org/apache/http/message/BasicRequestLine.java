package org.apache.http.message;

import java.io.Serializable;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@Immutable
public class BasicRequestLine
  implements Serializable, Cloneable, RequestLine
{
  private static final long serialVersionUID = 2810581718468737193L;
  private final String method;
  private final ProtocolVersion protoversion;
  private final String uri;
  
  public BasicRequestLine(String paramString1, String paramString2, ProtocolVersion paramProtocolVersion)
  {
    method = ((String)Args.notNull(paramString1, "Method"));
    uri = ((String)Args.notNull(paramString2, "URI"));
    protoversion = ((ProtocolVersion)Args.notNull(paramProtocolVersion, "Version"));
  }
  
  public Object clone()
  {
    return super.clone();
  }
  
  public String getMethod()
  {
    return method;
  }
  
  public ProtocolVersion getProtocolVersion()
  {
    return protoversion;
  }
  
  public String getUri()
  {
    return uri;
  }
  
  public String toString()
  {
    return BasicLineFormatter.INSTANCE.formatRequestLine(null, this).toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.http.message.BasicRequestLine
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */