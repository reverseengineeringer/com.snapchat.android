package org.apache.http;

import java.io.IOException;

public class ContentTooLongException
  extends IOException
{
  private static final long serialVersionUID = -924287689552495383L;
  
  public ContentTooLongException(String paramString)
  {
    super(paramString);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.ContentTooLongException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */