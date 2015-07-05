package org.apache.http;

import java.io.Closeable;

public abstract interface HttpConnection
  extends Closeable
{
  public abstract void close();
  
  public abstract HttpConnectionMetrics getMetrics();
  
  public abstract int getSocketTimeout();
  
  public abstract boolean isOpen();
  
  public abstract boolean isStale();
  
  public abstract void setSocketTimeout(int paramInt);
  
  public abstract void shutdown();
}

/* Location:
 * Qualified Name:     org.apache.http.HttpConnection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */