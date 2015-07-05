package org.apache.http;

public class ProtocolException
  extends HttpException
{
  private static final long serialVersionUID = -2143571074341228994L;
  
  public ProtocolException() {}
  
  public ProtocolException(String paramString)
  {
    super(paramString);
  }
  
  public ProtocolException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.ProtocolException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */