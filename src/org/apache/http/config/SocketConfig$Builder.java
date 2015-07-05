package org.apache.http.config;

public class SocketConfig$Builder
{
  private boolean soKeepAlive;
  private int soLinger = -1;
  private boolean soReuseAddress;
  private int soTimeout;
  private boolean tcpNoDelay = true;
  
  public SocketConfig build()
  {
    return new SocketConfig(soTimeout, soReuseAddress, soLinger, soKeepAlive, tcpNoDelay);
  }
  
  public Builder setSoKeepAlive(boolean paramBoolean)
  {
    soKeepAlive = paramBoolean;
    return this;
  }
  
  public Builder setSoLinger(int paramInt)
  {
    soLinger = paramInt;
    return this;
  }
  
  public Builder setSoReuseAddress(boolean paramBoolean)
  {
    soReuseAddress = paramBoolean;
    return this;
  }
  
  public Builder setSoTimeout(int paramInt)
  {
    soTimeout = paramInt;
    return this;
  }
  
  public Builder setTcpNoDelay(boolean paramBoolean)
  {
    tcpNoDelay = paramBoolean;
    return this;
  }
}

/* Location:
 * Qualified Name:     org.apache.http.config.SocketConfig.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */