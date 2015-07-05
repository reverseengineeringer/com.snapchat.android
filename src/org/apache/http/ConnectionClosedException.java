package org.apache.http;

import java.io.IOException;

public class ConnectionClosedException
  extends IOException
{
  private static final long serialVersionUID = 617550366255636674L;
  
  public ConnectionClosedException(String paramString)
  {
    super(paramString);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.ConnectionClosedException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */