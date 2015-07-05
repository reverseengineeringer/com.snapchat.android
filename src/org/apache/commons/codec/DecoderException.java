package org.apache.commons.codec;

public class DecoderException
  extends Exception
{
  private static final long serialVersionUID = 1L;
  
  public DecoderException() {}
  
  public DecoderException(String paramString)
  {
    super(paramString);
  }
  
  public DecoderException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public DecoderException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.DecoderException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */