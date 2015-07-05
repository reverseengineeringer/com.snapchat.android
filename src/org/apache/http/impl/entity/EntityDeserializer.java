package org.apache.http.impl.entity;

import org.apache.http.HttpEntity;
import org.apache.http.HttpMessage;
import org.apache.http.annotation.Immutable;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.impl.io.ChunkedInputStream;
import org.apache.http.impl.io.ContentLengthInputStream;
import org.apache.http.impl.io.IdentityInputStream;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;

@Deprecated
@Immutable
public class EntityDeserializer
{
  private final ContentLengthStrategy lenStrategy;
  
  public EntityDeserializer(ContentLengthStrategy paramContentLengthStrategy)
  {
    lenStrategy = ((ContentLengthStrategy)Args.notNull(paramContentLengthStrategy, "Content length strategy"));
  }
  
  public HttpEntity deserialize(SessionInputBuffer paramSessionInputBuffer, HttpMessage paramHttpMessage)
  {
    Args.notNull(paramSessionInputBuffer, "Session input buffer");
    Args.notNull(paramHttpMessage, "HTTP message");
    return doDeserialize(paramSessionInputBuffer, paramHttpMessage);
  }
  
  protected BasicHttpEntity doDeserialize(SessionInputBuffer paramSessionInputBuffer, HttpMessage paramHttpMessage)
  {
    BasicHttpEntity localBasicHttpEntity = new BasicHttpEntity();
    long l = lenStrategy.determineLength(paramHttpMessage);
    if (l == -2L)
    {
      localBasicHttpEntity.setChunked(true);
      localBasicHttpEntity.setContentLength(-1L);
      localBasicHttpEntity.setContent(new ChunkedInputStream(paramSessionInputBuffer));
    }
    for (;;)
    {
      paramSessionInputBuffer = paramHttpMessage.getFirstHeader("Content-Type");
      if (paramSessionInputBuffer != null) {
        localBasicHttpEntity.setContentType(paramSessionInputBuffer);
      }
      paramSessionInputBuffer = paramHttpMessage.getFirstHeader("Content-Encoding");
      if (paramSessionInputBuffer != null) {
        localBasicHttpEntity.setContentEncoding(paramSessionInputBuffer);
      }
      return localBasicHttpEntity;
      if (l == -1L)
      {
        localBasicHttpEntity.setChunked(false);
        localBasicHttpEntity.setContentLength(-1L);
        localBasicHttpEntity.setContent(new IdentityInputStream(paramSessionInputBuffer));
      }
      else
      {
        localBasicHttpEntity.setChunked(false);
        localBasicHttpEntity.setContentLength(l);
        localBasicHttpEntity.setContent(new ContentLengthInputStream(paramSessionInputBuffer, l));
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.entity.EntityDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */