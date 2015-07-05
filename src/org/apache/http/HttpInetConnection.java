package org.apache.http;

import java.net.InetAddress;

public abstract interface HttpInetConnection
  extends HttpConnection
{
  public abstract InetAddress getLocalAddress();
  
  public abstract int getLocalPort();
  
  public abstract InetAddress getRemoteAddress();
  
  public abstract int getRemotePort();
}

/* Location:
 * Qualified Name:     org.apache.http.HttpInetConnection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */