package org.apache.http.impl.entity;

import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpMessage;
import org.apache.http.annotation.Immutable;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.impl.io.ChunkedOutputStream;
import org.apache.http.impl.io.ContentLengthOutputStream;
import org.apache.http.impl.io.IdentityOutputStream;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.Args;

@Deprecated
@Immutable
public class EntitySerializer
{
  private final ContentLengthStrategy lenStrategy;
  
  public EntitySerializer(ContentLengthStrategy paramContentLengthStrategy)
  {
    lenStrategy = ((ContentLengthStrategy)Args.notNull(paramContentLengthStrategy, "Content length strategy"));
  }
  
  protected OutputStream doSerialize(SessionOutputBuffer paramSessionOutputBuffer, HttpMessage paramHttpMessage)
  {
    long l = lenStrategy.determineLength(paramHttpMessage);
    if (l == -2L) {
      return new ChunkedOutputStream(paramSessionOutputBuffer);
    }
    if (l == -1L) {
      return new IdentityOutputStream(paramSessionOutputBuffer);
    }
    return new ContentLengthOutputStream(paramSessionOutputBuffer, l);
  }
  
  public void serialize(SessionOutputBuffer paramSessionOutputBuffer, HttpMessage paramHttpMessage, HttpEntity paramHttpEntity)
  {
    Args.notNull(paramSessionOutputBuffer, "Session output buffer");
    Args.notNull(paramHttpMessage, "HTTP message");
    Args.notNull(paramHttpEntity, "HTTP entity");
    paramSessionOutputBuffer = doSerialize(paramSessionOutputBuffer, paramHttpMessage);
    paramHttpEntity.writeTo(paramSessionOutputBuffer);
    paramSessionOutputBuffer.close();
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.entity.EntitySerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */