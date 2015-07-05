package android.support.v4.net;

import java.net.Socket;

final class TrafficStatsCompat$BaseTrafficStatsCompatImpl
  implements TrafficStatsCompat.TrafficStatsCompatImpl
{
  private ThreadLocal<SocketTags> mThreadSocketTags = new ThreadLocal()
  {
    private static TrafficStatsCompat.BaseTrafficStatsCompatImpl.SocketTags initialValue()
    {
      return new TrafficStatsCompat.BaseTrafficStatsCompatImpl.SocketTags((byte)0);
    }
  };
  
  public final void clearThreadStatsTag()
  {
    mThreadSocketTags.get()).statsTag = -1;
  }
  
  public final int getThreadStatsTag()
  {
    return mThreadSocketTags.get()).statsTag;
  }
  
  public final void incrementOperationCount(int paramInt) {}
  
  public final void incrementOperationCount(int paramInt1, int paramInt2) {}
  
  public final void setThreadStatsTag(int paramInt)
  {
    mThreadSocketTags.get()).statsTag = paramInt;
  }
  
  public final void tagSocket(Socket paramSocket) {}
  
  public final void untagSocket(Socket paramSocket) {}
  
  static final class SocketTags
  {
    public int statsTag = -1;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.net.TrafficStatsCompat.BaseTrafficStatsCompatImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */