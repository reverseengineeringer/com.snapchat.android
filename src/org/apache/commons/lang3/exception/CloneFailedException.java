package org.apache.commons.lang3.exception;

public class CloneFailedException
  extends RuntimeException
{
  private static final long serialVersionUID = 20091223L;
  
  public CloneFailedException(String paramString)
  {
    super(paramString);
  }
  
  public CloneFailedException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public CloneFailedException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.exception.CloneFailedException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */