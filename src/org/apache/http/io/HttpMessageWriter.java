package org.apache.http.io;

import org.apache.http.HttpMessage;

public abstract interface HttpMessageWriter<T extends HttpMessage>
{
  public abstract void write(T paramT);
}

/* Location:
 * Qualified Name:     org.apache.http.io.HttpMessageWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */