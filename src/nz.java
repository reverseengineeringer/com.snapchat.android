import android.text.TextUtils;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public final class nz
{
  private static final nz INSTANCE = new nz();
  private final bhk mClock;
  private final EasyMetric.EasyMetricFactory mEasyMetricFactory;
  
  private nz()
  {
    this(new EasyMetric.EasyMetricFactory(), new bhk());
  }
  
  private nz(EasyMetric.EasyMetricFactory paramEasyMetricFactory, bhk parambhk)
  {
    mEasyMetricFactory = paramEasyMetricFactory;
    mClock = parambhk;
  }
  
  public static nz a()
  {
    return INSTANCE;
  }
  
  public static void a(@chc aji paramaji, long paramLong, int paramInt, boolean paramBoolean, @chc String paramString)
  {
    Object localObject = mSnapType.toString().toLowerCase();
    switch (paramaji.h())
    {
    case 3: 
    default: 
      paramaji = "null";
      localObject = EasyMetric.EasyMetricFactory.a("SNAP_MEDIA_UPLOAD").a(paramLong).a("type", paramaji).a("context", localObject).a("request_size_bytes", Integer.valueOf(paramInt));
      if (!paramBoolean) {
        break;
      }
    }
    for (paramaji = "true";; paramaji = "false")
    {
      ((EasyMetric)localObject).a("success", paramaji).a("reachability", paramString).a(false);
      return;
      paramaji = "image";
      break;
      paramaji = "video_audio";
      break;
      paramaji = "video_no_audio";
      break;
      paramaji = "discover";
      break;
    }
  }
  
  public static void a(aka paramaka, String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      EasyMetric.EasyMetricFactory.a("SNAP_RECEIVED").a("context", paramString).b(false);
    }
    if (!paramaka.A()) {
      EasyMetric.EasyMetricFactory.a("SNAP_DELIVERY_LATENCY").a(System.currentTimeMillis() - paramaka.U()).e();
    }
  }
  
  public static void a(@chc ChatConversation paramChatConversation, @chc String paramString)
  {
    Iterator localIterator = mItemsForFeedIcon.iterator();
    ChatFeedItem localChatFeedItem;
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      localChatFeedItem = (ChatFeedItem)localIterator.next();
    } while (!(localChatFeedItem instanceof aka));
    for (boolean bool = ((aka)localChatFeedItem).M();; bool = false)
    {
      paramChatConversation = paramChatConversation.d(paramString);
      int i;
      if ((paramChatConversation != null) && ((paramChatConversation instanceof aka)))
      {
        paramChatConversation = (aka)paramChatConversation;
        if ((paramChatConversation.A()) || (paramChatConversation.B())) {
          i = 1;
        }
      }
      for (;;)
      {
        EasyMetric.EasyMetricFactory.a("NOTIF_OPEN_SNAP_META_LOADED").a("success", Boolean.valueOf(bool)).a(false);
        if (i != 0) {
          EasyMetric.EasyMetricFactory.a("NOTIF_OPEN_SNAP_VIEWED").a(false);
        }
        return;
        i = 0;
        continue;
        i = 0;
      }
    }
  }
  
  public static void a(@chd AndroidNotificationManager.Type paramType)
  {
    if (paramType == null)
    {
      new EasyMetric("BACKGROUND_NOTIFICATION_UNSPECIFIED").b(false);
      return;
    }
    new EasyMetric("BACKGROUND_NOTIFICATION_" + paramType.name().toUpperCase(Locale.US)).b(false);
  }
  
  public static void a(@chc String paramString)
  {
    EasyMetric.EasyMetricFactory.a("SNAP_TAP_TO_RETRY").a("context", paramString).a(false);
  }
  
  public static void b(AndroidNotificationManager.Type paramType)
  {
    new ErrorMetric("EMPTY_PUSH_NOTIFICATION_TEXT").a("PUSH_NOTIFICATION_TYPE", paramType.name()).b(false);
  }
  
  public static void b(@chd String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      new EasyMetric("NOTIFICATION_RECEIVED_UNSPECIFIED").b(false);
      return;
    }
    new EasyMetric("NOTIFICATION_RECEIVED_" + paramString.toUpperCase(Locale.US)).b(false);
  }
  
  public static void c(@chd String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      new EasyMetric("NOTIFICATION_OPENED_UNSPECIFIED").b(false);
      return;
    }
    new EasyMetric("NOTIFICATION_OPENED_" + paramString.toUpperCase(Locale.US)).b(false);
  }
}

/* Location:
 * Qualified Name:     nz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */