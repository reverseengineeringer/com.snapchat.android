package org.apache.http;

public class UnsupportedHttpVersionException
  extends ProtocolException
{
  private static final long serialVersionUID = -1348448090193107031L;
  
  public UnsupportedHttpVersionException() {}
  
  public UnsupportedHttpVersionException(String paramString)
  {
    super(paramString);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.UnsupportedHttpVersionException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */