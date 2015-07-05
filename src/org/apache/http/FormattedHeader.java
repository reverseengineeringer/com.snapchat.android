package org.apache.http;

import org.apache.http.util.CharArrayBuffer;

public abstract interface FormattedHeader
  extends Header
{
  public abstract CharArrayBuffer getBuffer();
  
  public abstract int getValuePos();
}

/* Location:
 * Qualified Name:     org.apache.http.FormattedHeader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */