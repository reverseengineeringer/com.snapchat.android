import android.text.TextUtils;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.Snap.ClientSnapStatus;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public final class avr
{
  public static Snap.ClientSnapStatus a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return Snap.ClientSnapStatus.RECEIVED_AND_VIEWED;
    }
    return Snap.ClientSnapStatus.UNVIEWED_AND_LOAD_STATE_TBD;
  }
  
  public static Snap a(@chc biy parambiy)
  {
    String str1 = parambiy.o();
    Object localObject1 = parambiy.l();
    String str2 = parambiy.k();
    Object localObject2 = localObject1;
    if (localObject1 != null)
    {
      localObject2 = localObject1;
      if (!TextUtils.isEmpty(str2))
      {
        localObject2 = localObject1;
        if (((String)localObject1).endsWith(str2.toUpperCase(Locale.US))) {
          localObject2 = ((String)localObject1).substring(0, ((String)localObject1).lastIndexOf(str2.toUpperCase(Locale.US)));
        }
      }
    }
    long l1 = avb.a(parambiy.r());
    long l2 = avb.a(parambiy.s());
    int j = avb.a(parambiy.q());
    int k = avb.a(parambiy.p());
    boolean bool2 = avb.a(parambiy.t());
    boolean bool1;
    String str3;
    double d;
    label161:
    String str4;
    if (k == 3)
    {
      bool1 = true;
      str3 = parambiy.a();
      str2 = parambiy.k();
      if (parambiy.c() == null) {
        break label310;
      }
      d = parambiy.c().doubleValue();
      str4 = parambiy.d();
      if (avb.a(parambiy.e()) != 1) {
        break label334;
      }
    }
    boolean bool4;
    boolean bool5;
    String str8;
    label310:
    label334:
    for (int i = 1;; i = 0)
    {
      String str5 = parambiy.f();
      String str6 = parambiy.h();
      String str7 = parambiy.g();
      boolean bool3 = avb.a(parambiy.i());
      bool4 = avb.a(parambiy.n());
      bool5 = avb.a(parambiy.m());
      str8 = parambiy.j();
      if (str3 == null) {
        break label369;
      }
      localObject1 = a(k);
      parambiy = (biy)localObject1;
      if (bool5)
      {
        parambiy = (biy)localObject1;
        if (localObject1 == Snap.ClientSnapStatus.RECEIVED_AND_VIEWED) {
          parambiy = Snap.ClientSnapStatus.RECEIVED_AND_REPLAYED;
        }
      }
      if (i == 0) {
        break label339;
      }
      return new ajj(str1, l1, l2, j, bool2, parambiy, str3, d, str4, str5, str6, str7, bool3, str8);
      bool1 = false;
      break;
      if (parambiy.b() != null)
      {
        d = parambiy.b().intValue();
        break label161;
      }
      d = 0.0D;
      break label161;
    }
    label339:
    return new aka(str1, l1, l2, l1, j, bool2, parambiy, str3, d, str4, bool1, str8);
    label369:
    if (str2 != null)
    {
      switch (k)
      {
      default: 
        parambiy = Snap.ClientSnapStatus.SENT_AND_OPENED;
        if (bool4) {
          localObject1 = Snap.ClientSnapStatus.PENDING;
        }
        break;
      }
      for (;;)
      {
        parambiy = new ake(str1, (String)localObject2, l1, l2, j, (Snap.ClientSnapStatus)localObject1, str2);
        parambiy.d(bool1);
        return parambiy;
        parambiy = Snap.ClientSnapStatus.SENT;
        break;
        parambiy = Snap.ClientSnapStatus.DELIVERED;
        break;
        parambiy = Snap.ClientSnapStatus.SENT_AND_OPENED;
        break;
        parambiy = Snap.ClientSnapStatus.SENT_AND_SCREENSHOTTED;
        break;
        localObject1 = parambiy;
        if (bool5) {
          if (parambiy == Snap.ClientSnapStatus.SENT_AND_SCREENSHOTTED) {
            localObject1 = Snap.ClientSnapStatus.SENT_AND_REPLAYED_AND_SCREENSHOTTED;
          } else {
            localObject1 = Snap.ClientSnapStatus.SENT_AND_REPLAYED;
          }
        }
      }
    }
    return null;
  }
  
  public static String a(String paramString)
  {
    String str;
    if (paramString.charAt(paramString.length() - 1) != 'r')
    {
      str = paramString;
      if (paramString.charAt(paramString.length() - 1) != 's') {}
    }
    else
    {
      str = paramString.substring(0, paramString.length() - 1);
    }
    return str;
  }
  
  public static ArrayList<StorySnapLogbook> a(List<aji> paramList, String paramString)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localArrayList.add(new StorySnapLogbook((aji)paramList.next(), paramString, akr.l()));
    }
    return localArrayList;
  }
  
  public static void a()
  {
    Iterator localIterator1 = akx.c().f().iterator();
    while (localIterator1.hasNext())
    {
      ChatConversation localChatConversation = (ChatConversation)localIterator1.next();
      synchronized (localChatConversation.o())
      {
        Iterator localIterator2 = ???.iterator();
        while (localIterator2.hasNext())
        {
          ChatFeedItem localChatFeedItem = (ChatFeedItem)localIterator2.next();
          if (((localChatFeedItem instanceof aka)) && (((aka)localChatFeedItem).B()) && ((((aka)localChatFeedItem).an()) || (((aka)localChatFeedItem).u()))) {
            ((aka)localChatFeedItem).a(localChatConversation);
          }
        }
      }
    }
  }
  
  public static boolean a(@chc Mediabryo paramMediabryo)
  {
    int i = paramMediabryo.h();
    return (i == 1) || (i == 2);
  }
  
  public static void b()
  {
    Iterator localIterator1 = akx.c().f().iterator();
    while (localIterator1.hasNext())
    {
      ChatConversation localChatConversation = (ChatConversation)localIterator1.next();
      synchronized (localChatConversation.o())
      {
        Iterator localIterator2 = ???.iterator();
        while (localIterator2.hasNext())
        {
          ChatFeedItem localChatFeedItem = (ChatFeedItem)localIterator2.next();
          if (((localChatFeedItem instanceof aka)) && (((aka)localChatFeedItem).an())) {
            ((aka)localChatFeedItem).a(localChatConversation);
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     avr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */