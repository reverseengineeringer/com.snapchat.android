package org.apache.http.entity;

import org.apache.http.HttpMessage;

public abstract interface ContentLengthStrategy
{
  public static final int CHUNKED = -2;
  public static final int IDENTITY = -1;
  
  public abstract long determineLength(HttpMessage paramHttpMessage);
}

/* Location:
 * Qualified Name:     org.apache.http.entity.ContentLengthStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */