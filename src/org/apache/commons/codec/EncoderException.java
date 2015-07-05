package org.apache.commons.codec;

public class EncoderException
  extends Exception
{
  private static final long serialVersionUID = 1L;
  
  public EncoderException() {}
  
  public EncoderException(String paramString)
  {
    super(paramString);
  }
  
  public EncoderException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public EncoderException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.EncoderException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */