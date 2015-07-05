package org.apache.http.impl.io;

import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.HttpTransportMetrics;

@NotThreadSafe
public class HttpTransportMetricsImpl
  implements HttpTransportMetrics
{
  private long bytesTransferred = 0L;
  
  public long getBytesTransferred()
  {
    return bytesTransferred;
  }
  
  public void incrementBytesTransferred(long paramLong)
  {
    bytesTransferred += paramLong;
  }
  
  public void reset()
  {
    bytesTransferred = 0L;
  }
  
  public void setBytesTransferred(long paramLong)
  {
    bytesTransferred = paramLong;
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.io.HttpTransportMetricsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */