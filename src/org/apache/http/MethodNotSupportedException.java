package org.apache.http;

public class MethodNotSupportedException
  extends HttpException
{
  private static final long serialVersionUID = 3365359036840171201L;
  
  public MethodNotSupportedException(String paramString)
  {
    super(paramString);
  }
  
  public MethodNotSupportedException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.MethodNotSupportedException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */