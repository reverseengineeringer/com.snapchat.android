package org.apache.http;

public class TruncatedChunkException
  extends MalformedChunkCodingException
{
  private static final long serialVersionUID = -23506263930279460L;
  
  public TruncatedChunkException(String paramString)
  {
    super(paramString);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.TruncatedChunkException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */