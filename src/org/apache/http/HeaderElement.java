package org.apache.http;

public abstract interface HeaderElement
{
  public abstract String getName();
  
  public abstract NameValuePair getParameter(int paramInt);
  
  public abstract NameValuePair getParameterByName(String paramString);
  
  public abstract int getParameterCount();
  
  public abstract NameValuePair[] getParameters();
  
  public abstract String getValue();
}

/* Location:
 * Qualified Name:     org.apache.http.HeaderElement
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */