package org.apache.http.message;

import java.util.Locale;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolVersion;
import org.apache.http.ReasonPhraseCatalog;
import org.apache.http.StatusLine;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;

@NotThreadSafe
public class BasicHttpResponse
  extends AbstractHttpMessage
  implements HttpResponse
{
  private int code;
  private HttpEntity entity;
  private Locale locale;
  private final ReasonPhraseCatalog reasonCatalog;
  private String reasonPhrase;
  private StatusLine statusline;
  private ProtocolVersion ver;
  
  public BasicHttpResponse(ProtocolVersion paramProtocolVersion, int paramInt, String paramString)
  {
    Args.notNegative(paramInt, "Status code");
    statusline = null;
    ver = paramProtocolVersion;
    code = paramInt;
    reasonPhrase = paramString;
    reasonCatalog = null;
    locale = null;
  }
  
  public BasicHttpResponse(StatusLine paramStatusLine)
  {
    statusline = ((StatusLine)Args.notNull(paramStatusLine, "Status line"));
    ver = paramStatusLine.getProtocolVersion();
    code = paramStatusLine.getStatusCode();
    reasonPhrase = paramStatusLine.getReasonPhrase();
    reasonCatalog = null;
    locale = null;
  }
  
  public BasicHttpResponse(StatusLine paramStatusLine, ReasonPhraseCatalog paramReasonPhraseCatalog, Locale paramLocale)
  {
    statusline = ((StatusLine)Args.notNull(paramStatusLine, "Status line"));
    ver = paramStatusLine.getProtocolVersion();
    code = paramStatusLine.getStatusCode();
    reasonPhrase = paramStatusLine.getReasonPhrase();
    reasonCatalog = paramReasonPhraseCatalog;
    locale = paramLocale;
  }
  
  public HttpEntity getEntity()
  {
    return entity;
  }
  
  public Locale getLocale()
  {
    return locale;
  }
  
  public ProtocolVersion getProtocolVersion()
  {
    return ver;
  }
  
  protected String getReason(int paramInt)
  {
    if (reasonCatalog != null)
    {
      ReasonPhraseCatalog localReasonPhraseCatalog = reasonCatalog;
      if (locale != null) {}
      for (Locale localLocale = locale;; localLocale = Locale.getDefault()) {
        return localReasonPhraseCatalog.getReason(paramInt, localLocale);
      }
    }
    return null;
  }
  
  public StatusLine getStatusLine()
  {
    Object localObject;
    int i;
    if (statusline == null)
    {
      if (ver == null) {
        break label55;
      }
      localObject = ver;
      i = code;
      if (reasonPhrase == null) {
        break label62;
      }
    }
    label55:
    label62:
    for (String str = reasonPhrase;; str = getReason(code))
    {
      statusline = new BasicStatusLine((ProtocolVersion)localObject, i, str);
      return statusline;
      localObject = HttpVersion.HTTP_1_1;
      break;
    }
  }
  
  public void setEntity(HttpEntity paramHttpEntity)
  {
    entity = paramHttpEntity;
  }
  
  public void setLocale(Locale paramLocale)
  {
    locale = ((Locale)Args.notNull(paramLocale, "Locale"));
    statusline = null;
  }
  
  public void setReasonPhrase(String paramString)
  {
    statusline = null;
    reasonPhrase = paramString;
  }
  
  public void setStatusCode(int paramInt)
  {
    Args.notNegative(paramInt, "Status code");
    statusline = null;
    code = paramInt;
    reasonPhrase = null;
  }
  
  public void setStatusLine(ProtocolVersion paramProtocolVersion, int paramInt)
  {
    Args.notNegative(paramInt, "Status code");
    statusline = null;
    ver = paramProtocolVersion;
    code = paramInt;
    reasonPhrase = null;
  }
  
  public void setStatusLine(ProtocolVersion paramProtocolVersion, int paramInt, String paramString)
  {
    Args.notNegative(paramInt, "Status code");
    statusline = null;
    ver = paramProtocolVersion;
    code = paramInt;
    reasonPhrase = paramString;
  }
  
  public void setStatusLine(StatusLine paramStatusLine)
  {
    statusline = ((StatusLine)Args.notNull(paramStatusLine, "Status line"));
    ver = paramStatusLine.getProtocolVersion();
    code = paramStatusLine.getStatusCode();
    reasonPhrase = paramStatusLine.getReasonPhrase();
  }
  
  public String toString()
  {
    return getStatusLine() + " " + headergroup;
  }
}

/* Location:
 * Qualified Name:     org.apache.http.message.BasicHttpResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */