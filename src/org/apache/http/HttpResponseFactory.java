package org.apache.http;

import org.apache.http.protocol.HttpContext;

public abstract interface HttpResponseFactory
{
  public abstract HttpResponse newHttpResponse(ProtocolVersion paramProtocolVersion, int paramInt, HttpContext paramHttpContext);
  
  public abstract HttpResponse newHttpResponse(StatusLine paramStatusLine, HttpContext paramHttpContext);
}

/* Location:
 * Qualified Name:     org.apache.http.HttpResponseFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */