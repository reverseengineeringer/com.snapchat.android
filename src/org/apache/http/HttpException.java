package org.apache.http;

public class HttpException
  extends Exception
{
  private static final long serialVersionUID = -5437299376222011036L;
  
  public HttpException() {}
  
  public HttpException(String paramString)
  {
    super(paramString);
  }
  
  public HttpException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    initCause(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.HttpException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */