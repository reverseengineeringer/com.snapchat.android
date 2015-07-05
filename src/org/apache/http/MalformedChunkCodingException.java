package org.apache.http;

import java.io.IOException;

public class MalformedChunkCodingException
  extends IOException
{
  private static final long serialVersionUID = 2158560246948994524L;
  
  public MalformedChunkCodingException() {}
  
  public MalformedChunkCodingException(String paramString)
  {
    super(paramString);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.MalformedChunkCodingException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */