import android.os.Handler;
import android.os.Looper;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public final class zd
{
  private static zd f;
  final tt a;
  final ConcurrentHashMap<String, Set<Long>> b;
  public final ConcurrentHashMap<String, Set<Long>> c;
  final ConcurrentHashMap<String, Boolean> d;
  final Handler e;
  
  private zd(@chc tt paramtt)
  {
    a = paramtt;
    b = new ConcurrentHashMap();
    c = new ConcurrentHashMap();
    d = new ConcurrentHashMap();
    e = new Handler(Looper.getMainLooper());
  }
  
  public static zd a()
  {
    try
    {
      if (f == null) {
        f = new zd(tt.a());
      }
      zd localzd = f;
      return localzd;
    }
    finally {}
  }
  
  static void a(@chc String arg0, @chc ConcurrentHashMap<String, Set<Long>> paramConcurrentHashMap, long paramLong)
  {
    if (paramConcurrentHashMap.containsKey(???)) {}
    synchronized ((Set)paramConcurrentHashMap.get(???))
    {
      ???.add(Long.valueOf(paramLong));
      return;
      HashSet localHashSet = new HashSet();
      paramConcurrentHashMap.put(???, localHashSet);
      ??? = localHashSet;
    }
  }
  
  public static void b()
  {
    try
    {
      if (f != null)
      {
        fe.removeCallbacksAndMessages(null);
        f = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final long a(@chc String paramString)
  {
    paramString = (Set)b.get(paramString);
    if (paramString != null) {
      try
      {
        if (!paramString.isEmpty())
        {
          long l = ((Long)Collections.min(paramString)).longValue();
          return l;
        }
      }
      finally {}
    }
    return Long.MAX_VALUE;
  }
  
  public final void a(@chc ChatConversation paramChatConversation, long paramLong)
  {
    final String str = mId;
    long l = mTheirLastConnSeqNum;
    if ((paramLong > l) || (paramLong == 0L)) {
      if ((ad) && (mIsRecipientPresent) && (paramLong - l > 1L))
      {
        for (l += 1L; l < paramLong; l += 1L) {
          a(str, c, l);
        }
        if (d.containsKey(str)) {
          break label131;
        }
        d.put(str, Boolean.valueOf(true));
        e.postDelayed(new Runnable()
        {
          public final void run()
          {
            d.remove(str);
            if (c(str)) {
              a.a(str, false);
            }
          }
        }, 8000L);
      }
    }
    label131:
    do
    {
      return;
      return;
      paramChatConversation = (Set)c.get(str);
    } while (paramChatConversation == null);
    paramChatConversation.remove(Long.valueOf(paramLong));
  }
  
  public final boolean a(@chc String paramString, long paramLong)
  {
    paramString = (Set)b.get(paramString);
    if (paramString != null) {
      try
      {
        Iterator localIterator = paramString.iterator();
        while (localIterator.hasNext()) {
          if (((Long)localIterator.next()).longValue() < paramLong) {
            return false;
          }
        }
      }
      finally {}
    }
    return true;
  }
  
  public final boolean b(@chc String paramString)
  {
    boolean bool = false;
    paramString = (Set)b.get(paramString);
    if (paramString != null) {
      try
      {
        if (!paramString.isEmpty()) {
          bool = true;
        }
        return bool;
      }
      finally {}
    }
    return false;
  }
  
  public final boolean b(@chc String paramString, long paramLong)
  {
    paramString = (Set)b.get(paramString);
    if (paramString != null) {
      try
      {
        boolean bool = paramString.remove(Long.valueOf(paramLong));
        return bool;
      }
      finally {}
    }
    return false;
  }
  
  protected final boolean c(@chc String paramString)
  {
    boolean bool = false;
    paramString = (Set)c.get(paramString);
    if (paramString != null) {
      try
      {
        if (!paramString.isEmpty()) {
          bool = true;
        }
        return bool;
      }
      finally {}
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     zd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */