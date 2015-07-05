package org.apache.http;

public abstract interface Header
{
  public abstract HeaderElement[] getElements();
  
  public abstract String getName();
  
  public abstract String getValue();
}

/* Location:
 * Qualified Name:     org.apache.http.Header
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */