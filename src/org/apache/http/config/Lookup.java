package org.apache.http.config;

public abstract interface Lookup<I>
{
  public abstract I lookup(String paramString);
}

/* Location:
 * Qualified Name:     org.apache.http.config.Lookup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */