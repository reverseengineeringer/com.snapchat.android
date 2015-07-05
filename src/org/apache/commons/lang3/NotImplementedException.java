package org.apache.commons.lang3;

public class NotImplementedException
  extends UnsupportedOperationException
{
  private static final long serialVersionUID = 20131021L;
  private final String code;
  
  public NotImplementedException(String paramString)
  {
    this(paramString, null);
  }
  
  public NotImplementedException(String paramString1, String paramString2)
  {
    super(paramString1);
    code = paramString2;
  }
  
  public NotImplementedException(String paramString, Throwable paramThrowable)
  {
    this(paramString, paramThrowable, null);
  }
  
  public NotImplementedException(String paramString1, Throwable paramThrowable, String paramString2)
  {
    super(paramString1, paramThrowable);
    code = paramString2;
  }
  
  public NotImplementedException(Throwable paramThrowable)
  {
    this(paramThrowable, null);
  }
  
  public NotImplementedException(Throwable paramThrowable, String paramString)
  {
    super(paramThrowable);
    code = paramString;
  }
  
  public String getCode()
  {
    return code;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.NotImplementedException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */