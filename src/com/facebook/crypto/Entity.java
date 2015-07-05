package com.facebook.crypto;

public class Entity
{
  private String mName;
  
  public Entity(String paramString)
  {
    mName = paramString;
  }
  
  public byte[] getBytes()
  {
    return mName.getBytes("UTF-16");
  }
}

/* Location:
 * Qualified Name:     com.facebook.crypto.Entity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */