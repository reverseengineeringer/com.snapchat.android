package org.apache.commons.lang3;

public class SerializationException
  extends RuntimeException
{
  private static final long serialVersionUID = 4029025366392702726L;
  
  public SerializationException() {}
  
  public SerializationException(String paramString)
  {
    super(paramString);
  }
  
  public SerializationException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public SerializationException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.SerializationException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */