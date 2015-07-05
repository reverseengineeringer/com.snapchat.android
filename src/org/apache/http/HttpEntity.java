package org.apache.http;

import java.io.InputStream;
import java.io.OutputStream;

public abstract interface HttpEntity
{
  @Deprecated
  public abstract void consumeContent();
  
  public abstract InputStream getContent();
  
  public abstract Header getContentEncoding();
  
  public abstract long getContentLength();
  
  public abstract Header getContentType();
  
  public abstract boolean isChunked();
  
  public abstract boolean isRepeatable();
  
  public abstract boolean isStreaming();
  
  public abstract void writeTo(OutputStream paramOutputStream);
}

/* Location:
 * Qualified Name:     org.apache.http.HttpEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */