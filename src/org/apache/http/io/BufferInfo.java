package org.apache.http.io;

public abstract interface BufferInfo
{
  public abstract int available();
  
  public abstract int capacity();
  
  public abstract int length();
}

/* Location:
 * Qualified Name:     org.apache.http.io.BufferInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */