package android.support.v4.net;

import android.os.Build.VERSION;
import java.net.Socket;

public final class TrafficStatsCompat
{
  private static final TrafficStatsCompatImpl IMPL = new BaseTrafficStatsCompatImpl();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      IMPL = new IcsTrafficStatsCompatImpl();
      return;
    }
  }
  
  private static void clearThreadStatsTag()
  {
    IMPL.clearThreadStatsTag();
  }
  
  private static int getThreadStatsTag()
  {
    return IMPL.getThreadStatsTag();
  }
  
  private static void incrementOperationCount(int paramInt)
  {
    IMPL.incrementOperationCount(paramInt);
  }
  
  private static void incrementOperationCount(int paramInt1, int paramInt2)
  {
    IMPL.incrementOperationCount(paramInt1, paramInt2);
  }
  
  private static void setThreadStatsTag(int paramInt)
  {
    IMPL.setThreadStatsTag(paramInt);
  }
  
  private static void tagSocket(Socket paramSocket)
  {
    IMPL.tagSocket(paramSocket);
  }
  
  private static void untagSocket(Socket paramSocket)
  {
    IMPL.untagSocket(paramSocket);
  }
  
  static final class BaseTrafficStatsCompatImpl
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
  
  static final class IcsTrafficStatsCompatImpl
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
  
  static abstract interface TrafficStatsCompatImpl
  {
    public abstract void clearThreadStatsTag();
    
    public abstract int getThreadStatsTag();
    
    public abstract void incrementOperationCount(int paramInt);
    
    public abstract void incrementOperationCount(int paramInt1, int paramInt2);
    
    public abstract void setThreadStatsTag(int paramInt);
    
    public abstract void tagSocket(Socket paramSocket);
    
    public abstract void untagSocket(Socket paramSocket);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.net.TrafficStatsCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */