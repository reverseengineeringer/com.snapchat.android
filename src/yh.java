import android.os.Handler;
import android.os.Looper;
import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public final class yh
{
  private static yh f;
  final td a;
  final ConcurrentHashMap<String, Set<Long>> b;
  public final ConcurrentHashMap<String, Set<Long>> c;
  final ConcurrentHashMap<String, Boolean> d;
  final Handler e;
  
  private yh(@cgb td paramtd)
  {
    a = paramtd;
    b = new ConcurrentHashMap();
    c = new ConcurrentHashMap();
    d = new ConcurrentHashMap();
    e = new Handler(Looper.getMainLooper());
  }
  
  public static yh a()
  {
    try
    {
      if (f == null) {
        f = new yh(td.a());
      }
      yh localyh = f;
      return localyh;
    }
    finally {}
  }
  
  static void a(@cgb String arg0, @cgb ConcurrentHashMap<String, Set<Long>> paramConcurrentHashMap, long paramLong)
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
  
  public final long a(@cgb String paramString)
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
  
  public final void a(@cgb ChatConversation paramChatConversation, long paramLong)
  {
    final String str = mId;
    long l2 = mTheirLastConnSeqNum;
    if ((paramLong > l2) || (paramLong == 0L)) {
      if ((ad) && (mIsRecipientPresent) && (paramLong - l2 > 1L))
      {
        for (long l1 = l2 + 1L; l1 < paramLong; l1 += 1L) {
          a(str, c, l1);
        }
        if (d.containsKey(str)) {
          break label164;
        }
        Timber.g("ChatGapDetector", "CHAT-LOG: Connection seqNum gap of %d starting with %d detected! Scheduling a conversation refresh", new Object[] { Long.valueOf(paramLong - l2 - 1L), Long.valueOf(l2 + 1L) });
        d.put(str, Boolean.valueOf(true));
        e.postDelayed(new Runnable()
        {
          public final void run()
          {
            d.remove(str);
            if (c(str))
            {
              Timber.g("ChatGapDetector", "CHAT-LOG: Executing conversation refresh", new Object[0]);
              a.a(str, false);
              return;
            }
            Timber.g("ChatGapDetector", "CHAT-LOG: Not executing conversation refresh because connection seqNum gap is filled", new Object[0]);
          }
        }, 8000L);
      }
    }
    label164:
    do
    {
      return;
      Timber.g("ChatGapDetector", "CHAT-LOG: Connection seqNum gap of %d starting with %d detected! Conversation refresh is already scheduled", new Object[] { Long.valueOf(paramLong - l2 - 1L), Long.valueOf(l2 + 1L) });
      return;
      paramChatConversation = (Set)c.get(str);
    } while (paramChatConversation == null);
    paramChatConversation.remove(Long.valueOf(paramLong));
  }
  
  public final boolean a(@cgb String paramString, long paramLong)
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
  
  public final boolean b(@cgb String paramString)
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
  
  public final boolean b(@cgb String paramString, long paramLong)
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
  
  protected final boolean c(@cgb String paramString)
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
 * Qualified Name:     yh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */