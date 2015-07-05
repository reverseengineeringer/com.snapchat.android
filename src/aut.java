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

public final class aut
{
  public static Snap a(@cgb bhy parambhy)
  {
    String str1 = parambhy.q();
    Object localObject1 = parambhy.n();
    String str2 = parambhy.m();
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
    long l1 = aud.a(parambhy.t());
    long l2 = aud.a(parambhy.u());
    int j = aud.a(parambhy.s());
    int k = aud.a(parambhy.r());
    boolean bool2 = aud.a(parambhy.v());
    boolean bool1;
    String str3;
    double d1;
    label161:
    String str4;
    long l3;
    double d2;
    int i;
    label198:
    String str5;
    String str6;
    String str7;
    boolean bool3;
    boolean bool4;
    boolean bool5;
    String str8;
    if (k == 3)
    {
      bool1 = true;
      str3 = parambhy.a();
      str2 = parambhy.m();
      if (parambhy.c() == null) {
        break label356;
      }
      d1 = parambhy.c().doubleValue();
      str4 = parambhy.d();
      l3 = aud.a(parambhy.f());
      d2 = aud.a(parambhy.e());
      if (aud.a(parambhy.g()) != 1) {
        break label380;
      }
      i = 1;
      str5 = parambhy.h();
      str6 = parambhy.j();
      str7 = parambhy.i();
      bool3 = aud.a(parambhy.k());
      bool4 = aud.a(parambhy.p());
      bool5 = aud.a(parambhy.o());
      str8 = parambhy.l();
      if (str3 == null) {
        break label427;
      }
      switch (k)
      {
      }
    }
    for (parambhy = Snap.ClientSnapStatus.RECEIVED_AND_VIEWED;; parambhy = Snap.ClientSnapStatus.UNVIEWED_AND_LOAD_STATE_TBD)
    {
      localObject1 = parambhy;
      if (bool5)
      {
        localObject1 = parambhy;
        if (parambhy == Snap.ClientSnapStatus.RECEIVED_AND_VIEWED) {
          localObject1 = Snap.ClientSnapStatus.RECEIVED_AND_REPLAYED;
        }
      }
      if (i == 0) {
        break label393;
      }
      return new ain(str1, l1, l2, j, bool2, (Snap.ClientSnapStatus)localObject1, str3, d1, str4, l3, d2, str5, str6, str7, bool3, str8);
      bool1 = false;
      break;
      label356:
      if (parambhy.b() != null)
      {
        d1 = parambhy.b().intValue();
        break label161;
      }
      d1 = 0.0D;
      break label161;
      label380:
      i = 0;
      break label198;
    }
    label393:
    return new aje(str1, l1, l2, l1, j, bool2, (Snap.ClientSnapStatus)localObject1, str3, d1, str4, bool1, l3, d2, str8);
    label427:
    if (str2 != null)
    {
      switch (k)
      {
      default: 
        parambhy = Snap.ClientSnapStatus.SENT_AND_OPENED;
        if (bool4) {
          localObject1 = Snap.ClientSnapStatus.PENDING;
        }
        break;
      }
      for (;;)
      {
        parambhy = new aji(str1, (String)localObject2, l1, l2, j, (Snap.ClientSnapStatus)localObject1, str2);
        parambhy.d(bool1);
        return parambhy;
        parambhy = Snap.ClientSnapStatus.SENT;
        break;
        parambhy = Snap.ClientSnapStatus.DELIVERED;
        break;
        parambhy = Snap.ClientSnapStatus.SENT_AND_OPENED;
        break;
        parambhy = Snap.ClientSnapStatus.SENT_AND_SCREENSHOTTED;
        break;
        localObject1 = parambhy;
        if (bool5) {
          if (parambhy == Snap.ClientSnapStatus.SENT_AND_SCREENSHOTTED) {
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
  
  public static ArrayList<StorySnapLogbook> a(List<aim> paramList, String paramString)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localArrayList.add(new StorySnapLogbook((aim)paramList.next(), paramString, ajx.l()));
    }
    return localArrayList;
  }
  
  public static void a()
  {
    Iterator localIterator1 = akc.b().e().iterator();
    while (localIterator1.hasNext()) {
      synchronized (((ChatConversation)localIterator1.next()).o())
      {
        Iterator localIterator2 = ???.iterator();
        while (localIterator2.hasNext())
        {
          ChatFeedItem localChatFeedItem = (ChatFeedItem)localIterator2.next();
          if (((localChatFeedItem instanceof aje)) && (((aje)localChatFeedItem).A()) && ((((aje)localChatFeedItem).ap()) || (((aje)localChatFeedItem).t()))) {
            ((aje)localChatFeedItem).o();
          }
        }
      }
    }
  }
  
  public static boolean a(@cgb Mediabryo paramMediabryo)
  {
    int i = paramMediabryo.h();
    return (i == 1) || (i == 2);
  }
  
  public static void b()
  {
    Iterator localIterator1 = akc.b().e().iterator();
    while (localIterator1.hasNext()) {
      synchronized (((ChatConversation)localIterator1.next()).o())
      {
        Iterator localIterator2 = ???.iterator();
        while (localIterator2.hasNext())
        {
          ChatFeedItem localChatFeedItem = (ChatFeedItem)localIterator2.next();
          if (((localChatFeedItem instanceof aje)) && (((aje)localChatFeedItem).ap())) {
            ((aje)localChatFeedItem).o();
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     aut
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */