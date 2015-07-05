package org.apache.http;

public abstract interface StatusLine
{
  public abstract ProtocolVersion getProtocolVersion();
  
  public abstract String getReasonPhrase();
  
  public abstract int getStatusCode();
}

/* Location:
 * Qualified Name:     org.apache.http.StatusLine
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */