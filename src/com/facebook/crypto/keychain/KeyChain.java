package com.facebook.crypto.keychain;

public abstract interface KeyChain
{
  public abstract void destroyKeys();
  
  public abstract byte[] getCipherKey();
  
  public abstract byte[] getMacKey();
  
  public abstract byte[] getNewIV();
}

/* Location:
 * Qualified Name:     com.facebook.crypto.keychain.KeyChain
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */