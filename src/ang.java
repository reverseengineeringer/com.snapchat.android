import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.database.table.ChatsReceivedInLastHourTable;
import com.snapchat.android.database.table.NotificationTable;
import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.model.Snap.ClientSnapStatus;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.notification.AndroidNotificationManager.1;
import com.snapchat.android.notification.AndroidNotificationManager.2;
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public final class ang
  implements anh
{
  private final Intent a;
  private final akr b;
  private final AndroidNotificationManager c;
  
  public ang(Intent paramIntent)
  {
    this(paramIntent, akr.a(), AndroidNotificationManager.a());
  }
  
  @cf
  private ang(Intent paramIntent, akr paramakr, AndroidNotificationManager paramAndroidNotificationManager)
  {
    a = paramIntent;
    b = paramakr;
    c = paramAndroidNotificationManager;
  }
  
  public final Intent a()
  {
    return a;
  }
  
  public final void a(Context arg1)
  {
    if (a == null) {}
    Object localObject1;
    Object localObject4;
    boolean bool2;
    boolean bool3;
    do
    {
      do
      {
        for (;;)
        {
          return;
          localObject1 = (Intent)a.getParcelableExtra("gcm_intent");
          localObject4 = PreferenceManager.getDefaultSharedPreferences(???);
          bool1 = akr.bG();
          bool2 = ((SharedPreferences)localObject4).getBoolean("snapchatUserIsLoggedIn", true);
          bool3 = a.getBooleanExtra("clear", false);
          boolean bool4 = a.getBooleanExtra("display_notifications", false);
          localObject3 = a.getStringExtra("notification_type");
          if (!bool4) {
            break;
          }
          localObject1 = c;
          localObject3 = NotificationTable.a(???).iterator();
          while (((Iterator)localObject3).hasNext()) {
            ((AndroidNotificationManager)localObject1).b(???, AndroidNotificationManager.Type.valueOf((String)((Iterator)localObject3).next()));
          }
        }
        if (bool3)
        {
          if (TextUtils.isEmpty((CharSequence)localObject3))
          {
            AndroidNotificationManager.a(???);
            return;
          }
          AndroidNotificationManager.a(???, AndroidNotificationManager.Type.valueOf((String)localObject3));
          return;
        }
      } while (localObject1 == null);
      localObject1 = ((Intent)localObject1).getExtras();
    } while ((!bool1) || (!bool2) || (localObject1 == null));
    Object localObject3 = c;
    Object localObject5 = ((Bundle)localObject1).getString("username");
    long l3;
    String str1;
    String str2;
    String str3;
    Object localObject8;
    Object localObject6;
    String str4;
    Object localObject9;
    Object localObject10;
    String str5;
    if (TextUtils.equals(((SharedPreferences)localObject4).getString(SharedPreferenceKey.USERNAME.getKey(), null), (CharSequence)localObject5))
    {
      l3 = System.currentTimeMillis();
      localObject5 = ((Bundle)localObject1).getString("snap_id");
      str1 = ((Bundle)localObject1).getString("sender");
      localObject4 = ((Bundle)localObject1).getString("sender_username");
      str2 = ((Bundle)localObject1).getString("text");
      str3 = ((Bundle)localObject1).getString("chat_message_id");
      ??? = ((Bundle)localObject1).getString("seq_num");
      localObject8 = ((Bundle)localObject1).getString("chat_messages");
      localObject6 = ((Bundle)localObject1).getString("type");
      str4 = ((Bundle)localObject1).getString("cash_amount");
      localObject9 = ((Bundle)localObject1).getString("snap_metadata");
      if (!TextUtils.isEmpty((CharSequence)localObject6))
      {
        localObject6 = AndroidNotificationManager.Type.valueOf(((String)localObject6).toUpperCase(Locale.US));
        bool2 = Boolean.valueOf(((Bundle)localObject1).getString("silent")).booleanValue();
        localObject10 = ((Bundle)localObject1).keySet().iterator();
        while (((Iterator)localObject10).hasNext())
        {
          str5 = (String)((Iterator)localObject10).next();
          new StringBuilder(" > key=").append(str5).append(", value=").append(((Bundle)localObject1).get(str5));
        }
        if (((localObject6 != AndroidNotificationManager.Type.CHAT) && (localObject6 != AndroidNotificationManager.Type.TYPING)) || (l3 - NotificationTable.a(???, ((AndroidNotificationManager.Type)localObject6).name(), (String)localObject4) >= 1200000L)) {
          break label1386;
        }
      }
    }
    label551:
    label567:
    label594:
    label619:
    label982:
    label987:
    label1058:
    label1375:
    label1381:
    label1386:
    for (boolean bool1 = true;; bool1 = false)
    {
      if (localObject6 == AndroidNotificationManager.Type.SNAP)
      {
        localObject10 = zi.b((String)localObject4);
        str5 = (String)localObject5 + "r";
        if ((localObject10 != null) && (((ChatConversation)localObject10).d(str5) != null)) {
          EasyMetric.EasyMetricFactory.a("SNAP_LATE_PUSH").a(false);
        }
      }
      bool3 = TextUtils.equals((CharSequence)localObject4, ChatFragment.t());
      int i;
      int j;
      if ((localObject6 == AndroidNotificationManager.Type.TYPING) && (bool1))
      {
        i = 1;
        if ((bool3) || (i != 0) || (bool2)) {
          break label982;
        }
        i = 1;
        if ((localObject6 != AndroidNotificationManager.Type.CHAT) || (!ChatsReceivedInLastHourTable.a(???, str3))) {
          break label987;
        }
        ChatsReceivedInLastHourTable.b(???, str3);
        j = 0;
        i = 0;
      }
      for (;;)
      {
        long l1;
        if (i != 0)
        {
          if (localObject6 != AndroidNotificationManager.Type.TYPING) {
            break label1058;
          }
          NotificationTable.a(???, AndroidNotificationManager.Type.TYPING.name());
          l1 = 0L;
        }
        for (;;)
        {
          ((AndroidNotificationManager)localObject3).a(???, (String)localObject5, l3, str1, (String)localObject4, str2, str3, l1, (AndroidNotificationManager.Type)localObject6, bool1, str4);
          ((AndroidNotificationManager)localObject3).b(???, (AndroidNotificationManager.Type)localObject6);
          if ((localObject6 == AndroidNotificationManager.Type.CHAT) || (localObject6 == AndroidNotificationManager.Type.CASH))
          {
            NotificationTable.b(???, AndroidNotificationManager.Type.TYPING.name(), (String)localObject4);
            ((AndroidNotificationManager)localObject3).b(???, AndroidNotificationManager.Type.TYPING);
          }
          if (j != 0)
          {
            ??? = akp.a(???);
            switch (com.snapchat.android.notification.AndroidNotificationManager.3.a[localObject6.ordinal()])
            {
            default: 
              b.a(true, false);
            }
          }
          for (;;)
          {
            ??? = ((Bundle)localObject1).getString("type");
            if (TextUtils.isEmpty(???)) {
              break;
            }
            ??? = AndroidNotificationManager.Type.valueOf(???.toUpperCase(Locale.US));
            if ((??? != AndroidNotificationManager.Type.CHAT) && (??? != AndroidNotificationManager.Type.CHAT_SCREENSHOT) && (??? != AndroidNotificationManager.Type.CASH)) {
              break;
            }
            ??? = ((Bundle)localObject1).getString("sender_username");
            if (TextUtils.isEmpty(???)) {
              break;
            }
            localObject1 = zi.b(???);
            if (localObject1 == null) {
              break;
            }
            new zf();
            l1 = System.currentTimeMillis();
            long l2 = System.currentTimeMillis();
            synchronized (((ChatConversation)localObject1).o())
            {
              localObject3 = ???.iterator();
              do
              {
                do
                {
                  if (!((Iterator)localObject3).hasNext()) {
                    break;
                  }
                  localObject4 = (ChatFeedItem)((Iterator)localObject3).next();
                } while (!(localObject4 instanceof akw));
                localObject5 = (akw)localObject4;
              } while ((!TextUtils.equals(((ChatFeedItem)localObject4).j(), mMyUsername)) || (((akw)localObject5).o()) || (((akw)localObject5).U() > l1 - 300000L));
              ((akw)localObject5).a(l2);
            }
            i = 0;
            break label551;
            i = 0;
            break label567;
            if (localObject6 == AndroidNotificationManager.Type.UPLOAD_LOGS_REQUEST)
            {
              localObject10 = new amy(???, str2);
              ((amy)localObject10).a();
              ((amy)localObject10).b();
              ((amy)localObject10).c();
              j = 0;
              i = 0;
              break label594;
            }
            if (localObject6 != AndroidNotificationManager.Type.EMAIL_VERIFIED) {
              break label1381;
            }
            akr.s(true);
            akr.i(akr.bk());
            akr.u(null);
            j = 0;
            i = 0;
            break label594;
            if ((??? != null) && ((localObject6 == AndroidNotificationManager.Type.CHAT) || (localObject6 == AndroidNotificationManager.Type.CHAT_SCREENSHOT)))
            {
              l2 = Long.valueOf((String)???).longValue();
              l1 = l2;
              if (TextUtils.isEmpty((CharSequence)localObject4)) {
                break label619;
              }
              l1 = l2;
              if (TextUtils.isEmpty((CharSequence)localObject8)) {
                break label619;
              }
              c.a((String)localObject4, (String)localObject8);
              l1 = l2;
              break label619;
            }
            if ((localObject6 != AndroidNotificationManager.Type.SNAP) || (localObject9 == null)) {
              break label1375;
            }
            localObject9 = amx.a((String)localObject9);
            if (localObject9 == null) {
              break label1375;
            }
            localObject10 = b;
            localObject8 = c.a((String)localObject10, true, false, true);
            if (localObject8 == null) {
              break label1375;
            }
            str5 = a;
            synchronized (((ChatConversation)localObject8).o())
            {
              if (((ChatConversation)localObject8).d(str5) == null)
              {
                localObject9 = new aka(str5, c, c, 0L, d, e, Snap.ClientSnapStatus.UNVIEWED_AND_UNLOADED, (String)localObject10, f, g, false, null);
                ((ChatConversation)localObject8).a((ChatFeedItem)localObject9);
                ((ChatConversation)localObject8).v();
                nz.a((aka)localObject9, "notif");
                og.b((aka)localObject9);
                bhp.b(new AndroidNotificationManager.2((AndroidNotificationManager)localObject3, (ChatConversation)localObject8, (aka)localObject9));
                l1 = 0L;
                break label619;
              }
            }
            localObject5 = akr.l();
            if ((!TextUtils.isEmpty((CharSequence)localObject5)) && (!TextUtils.isEmpty((CharSequence)localObject4)))
            {
              localObject4 = ayg.a((String)localObject5, aut.a(localObject4));
              tt.b((String)localObject4, new AndroidNotificationManager.1((AndroidNotificationManager)localObject3, (String)localObject4, ???));
            }
          }
          return;
          l1 = 0L;
        }
        j = 1;
      }
    }
  }
  
  public final void b() {}
}

/* Location:
 * Qualified Name:     ang
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */