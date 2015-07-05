package android.support.v4.net;

import java.net.Socket;

final class TrafficStatsCompat$IcsTrafficStatsCompatImpl
  implements TrafficStatsCompat.TrafficStatsCompatImpl
{
  public final void clearThreadStatsTag() {}
  
  public final int getThreadStatsTag()
  {
    return TrafficStatsCompatIcs.getThreadStatsTag();
  }
  
  public final void incrementOperationCount(int paramInt)
  {
    TrafficStatsCompatIcs.incrementOperationCount(paramInt);
  }
  
  public final void incrementOperationCount(int paramInt1, int paramInt2)
  {
    TrafficStatsCompatIcs.incrementOperationCount(paramInt1, paramInt2);
  }
  
  public final void setThreadStatsTag(int paramInt)
  {
    TrafficStatsCompatIcs.setThreadStatsTag(paramInt);
  }
  
  public final void tagSocket(Socket paramSocket)
  {
    TrafficStatsCompatIcs.tagSocket(paramSocket);
  }
  
  public final void untagSocket(Socket paramSocket)
  {
    TrafficStatsCompatIcs.untagSocket(paramSocket);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.net.TrafficStatsCompat.IcsTrafficStatsCompatImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */