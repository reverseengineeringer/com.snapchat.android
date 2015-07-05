package org.apache.http.io;

import org.apache.http.HttpMessage;

public abstract interface HttpMessageWriterFactory<T extends HttpMessage>
{
  public abstract HttpMessageWriter<T> create(SessionOutputBuffer paramSessionOutputBuffer);
}

/* Location:
 * Qualified Name:     org.apache.http.io.HttpMessageWriterFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */