import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.snapchat.android.Timber;
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
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public final class amj
  implements amk
{
  private final Intent a;
  private final ajx b;
  private final AndroidNotificationManager c;
  
  public amj(Intent paramIntent)
  {
    this(paramIntent, ajx.a(), AndroidNotificationManager.a());
  }
  
  @cf
  private amj(Intent paramIntent, ajx paramajx, AndroidNotificationManager paramAndroidNotificationManager)
  {
    a = paramIntent;
    b = paramajx;
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
          bool1 = ajx.bL();
          bool2 = ((SharedPreferences)localObject4).getBoolean("snapchatUserIsLoggedIn", true);
          bool3 = a.getBooleanExtra("clear", false);
          boolean bool4 = a.getBooleanExtra("display_notifications", false);
          localObject3 = a.getStringExtra("notification_type");
          if (!bool4) {
            break;
          }
          localObject1 = c;
          Timber.c("AndroidNotificationManager", "displayNotifications", new Object[0]);
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
    String str5;
    Object localObject9;
    String str6;
    long l1;
    long l2;
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
      str5 = ((Bundle)localObject1).getString("snap_metadata");
      if (!TextUtils.isEmpty((CharSequence)localObject6))
      {
        localObject6 = AndroidNotificationManager.Type.valueOf(((String)localObject6).toUpperCase(Locale.US));
        bool2 = Boolean.valueOf(((Bundle)localObject1).getString("silent")).booleanValue();
        Timber.c("AndroidNotificationManager", "GCM Intent Extras", new Object[0]);
        localObject9 = ((Bundle)localObject1).keySet().iterator();
        while (((Iterator)localObject9).hasNext())
        {
          str6 = (String)((Iterator)localObject9).next();
          Timber.c("AndroidNotificationManager", " > key=" + str6 + ", value=" + ((Bundle)localObject1).get(str6), new Object[0]);
        }
        if ((localObject6 != AndroidNotificationManager.Type.CHAT) && (localObject6 != AndroidNotificationManager.Type.TYPING)) {
          break label1577;
        }
        l1 = NotificationTable.a(???, ((AndroidNotificationManager.Type)localObject6).name(), (String)localObject4);
        l2 = l3 - l1;
        Timber.c("AndroidNotificationManager", "latestNonNinjaNotificationTimestamp=" + l1, new Object[0]);
        Timber.c("AndroidNotificationManager", "elapsedSinceLatestNonNinja=" + l2, new Object[0]);
        if (l2 >= 1200000L) {
          break label1577;
        }
        Timber.c("AndroidNotificationManager", "Turn on the ninja mode of this chat notification!", new Object[0]);
      }
    }
    label680:
    label696:
    label735:
    label760:
    label1122:
    label1127:
    label1572:
    label1577:
    for (boolean bool1 = true;; bool1 = false)
    {
      if (localObject6 == AndroidNotificationManager.Type.SNAP)
      {
        localObject9 = ym.b((String)localObject4);
        str6 = (String)localObject5 + "r";
        if ((localObject9 != null) && (((ChatConversation)localObject9).d(str6) != null))
        {
          Timber.a("AndroidNotificationManager", "SNAP-LOG: Received snap push notification but snap is already in conversation id: %s, sender: %s", new Object[] { str6, str1 });
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
          break label1122;
        }
        i = 1;
        if ((localObject6 != AndroidNotificationManager.Type.CHAT) || (!ChatsReceivedInLastHourTable.a(???, str3))) {
          break label1127;
        }
        ChatsReceivedInLastHourTable.b(???, str3);
        Timber.c("AndroidNotificationManager", "This notification is for a chat message that has already been seen. Will not sync or display.", new Object[0]);
        j = 0;
        i = 0;
      }
      for (;;)
      {
        if (i != 0)
        {
          if (localObject6 == AndroidNotificationManager.Type.TYPING)
          {
            NotificationTable.a(???, AndroidNotificationManager.Type.TYPING.name());
            l1 = 0L;
            ((AndroidNotificationManager)localObject3).a(???, (String)localObject5, l3, str1, (String)localObject4, str2, str3, l1, (AndroidNotificationManager.Type)localObject6, bool1, str4);
            ((AndroidNotificationManager)localObject3).b(???, (AndroidNotificationManager.Type)localObject6);
          }
        }
        else
        {
          if ((localObject6 == AndroidNotificationManager.Type.CHAT) || (localObject6 == AndroidNotificationManager.Type.CASH))
          {
            NotificationTable.b(???, AndroidNotificationManager.Type.TYPING.name(), (String)localObject4);
            ((AndroidNotificationManager)localObject3).b(???, AndroidNotificationManager.Type.TYPING);
          }
          if (j != 0)
          {
            ??? = ajv.a(???);
            switch (com.snapchat.android.notification.AndroidNotificationManager.2.a[localObject6.ordinal()])
            {
            default: 
              b.a(true, false);
            }
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
          localObject1 = ym.b(???);
          if (localObject1 == null) {
            break;
          }
          new yj();
          l1 = System.currentTimeMillis();
          l2 = System.currentTimeMillis();
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
              } while (!(localObject4 instanceof akb));
              localObject5 = (akb)localObject4;
            } while ((!TextUtils.equals(((ChatFeedItem)localObject4).j(), mMyUsername)) || (((akb)localObject5).o()) || (((akb)localObject5).W() > l1 - 300000L));
            ((akb)localObject5).a(l2);
          }
          i = 0;
          break label680;
          i = 0;
          break label696;
          if (localObject6 == AndroidNotificationManager.Type.UPLOAD_LOGS_REQUEST)
          {
            localObject9 = new amb(???, str2);
            ((amb)localObject9).a();
            ((amb)localObject9).b();
            ((amb)localObject9).c();
            j = 0;
            i = 0;
            break label735;
          }
          if (localObject6 != AndroidNotificationManager.Type.EMAIL_VERIFIED) {
            break label1572;
          }
          ajx.t(true);
          ajx.i(ajx.bn());
          ajx.u(null);
          j = 0;
          i = 0;
          break label735;
          if ((??? != null) && ((localObject6 == AndroidNotificationManager.Type.CHAT) || (localObject6 == AndroidNotificationManager.Type.CHAT_SCREENSHOT)))
          {
            l2 = Long.valueOf((String)???).longValue();
            l1 = l2;
            if (TextUtils.isEmpty((CharSequence)localObject4)) {
              break label760;
            }
            l1 = l2;
            if (TextUtils.isEmpty((CharSequence)localObject8)) {
              break label760;
            }
            c.a((String)localObject4, (String)localObject8);
            l1 = l2;
            break label760;
          }
          if ((localObject6 == AndroidNotificationManager.Type.SNAP) && (str5 != null))
          {
            localObject8 = ama.a(str5);
            if (localObject8 != null)
            {
              str5 = b;
              localObject9 = c.a(str5, true, false, true);
              if (localObject9 != null)
              {
                str6 = a;
                synchronized (((ChatConversation)localObject9).o())
                {
                  if (((ChatConversation)localObject9).d(str6) == null)
                  {
                    ((ChatConversation)localObject9).a(new aje(str6, c, c, 0L, d, e, Snap.ClientSnapStatus.UNVIEWED_AND_UNLOADED, str5, f, g, false, h, i, null));
                    Timber.a("AndroidNotificationManager", "SNAP-LOG: Received snap push notification and added to conversation id: %s sender: %s", new Object[] { str6, str5 });
                    l1 = 0L;
                    break label760;
                  }
                  Timber.a("AndroidNotificationManager", "SNAP-LOG: Received snap push notification but oldest unviewed snap is already in conversation, id: %s, sender: %s", new Object[] { str6, str5 });
                }
              }
              l1 = 0L;
              break label760;
            }
            Timber.a("AndroidNotificationManager", "SNAP-LOG: Received snap push notification but couldn't deserialize metadata", new Object[0]);
          }
          l1 = 0L;
          break label760;
          localObject5 = ajx.l();
          if ((!TextUtils.isEmpty((CharSequence)localObject5)) && (!TextUtils.isEmpty((CharSequence)localObject4)))
          {
            localObject4 = axi.a((String)localObject5, atv.a(localObject4));
            Timber.g("AndroidNotificationManager", "CHAT-LOG: AndroidNotificationManager executing LoadConversationPageTask %s", new Object[] { localObject4 });
            td.b((String)localObject4, new AndroidNotificationManager.1((AndroidNotificationManager)localObject3, (String)localObject4, ???));
          }
        }
        return;
        j = 1;
      }
    }
  }
  
  public final void f() {}
}

/* Location:
 * Qualified Name:     amj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */