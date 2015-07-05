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

public final class ni
{
  private static final ni INSTANCE = new ni();
  private final bgk mClock;
  private final EasyMetric.EasyMetricFactory mEasyMetricFactory;
  
  private ni()
  {
    this(new EasyMetric.EasyMetricFactory(), new bgk());
  }
  
  private ni(EasyMetric.EasyMetricFactory paramEasyMetricFactory, bgk parambgk)
  {
    mEasyMetricFactory = paramEasyMetricFactory;
    mClock = parambgk;
  }
  
  public static ni a()
  {
    return INSTANCE;
  }
  
  public static void a(@cgb aim paramaim, long paramLong, int paramInt, boolean paramBoolean, @cgb String paramString)
  {
    Object localObject = mSnapType.toString().toLowerCase();
    switch (paramaim.h())
    {
    case 3: 
    default: 
      paramaim = "null";
      localObject = EasyMetric.EasyMetricFactory.a("SNAP_MEDIA_UPLOAD").a(paramLong).a("type", paramaim).a("context", localObject).a("request_size_bytes", Integer.valueOf(paramInt));
      if (!paramBoolean) {
        break;
      }
    }
    for (paramaim = "true";; paramaim = "false")
    {
      ((EasyMetric)localObject).a("success", paramaim).a("reachability", paramString).a(false);
      return;
      paramaim = "image";
      break;
      paramaim = "video_audio";
      break;
      paramaim = "video_no_audio";
      break;
      paramaim = "discover";
      break;
    }
  }
  
  public static void a(@cgb ChatConversation paramChatConversation, @cgb String paramString)
  {
    Iterator localIterator = mItemsForFeedIcon.iterator();
    ChatFeedItem localChatFeedItem;
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      localChatFeedItem = (ChatFeedItem)localIterator.next();
    } while (!(localChatFeedItem instanceof aje));
    for (boolean bool = ((aje)localChatFeedItem).L();; bool = false)
    {
      paramChatConversation = paramChatConversation.d(paramString);
      int i;
      if ((paramChatConversation != null) && ((paramChatConversation instanceof aje)))
      {
        paramChatConversation = (aje)paramChatConversation;
        if ((paramChatConversation.z()) || (paramChatConversation.A())) {
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
  
  public static void a(@cgc AndroidNotificationManager.Type paramType)
  {
    if (paramType == null)
    {
      new EasyMetric("BACKGROUND_NOTIFICATION_UNSPECIFIED").b(false);
      return;
    }
    new EasyMetric("BACKGROUND_NOTIFICATION_" + paramType.name().toUpperCase(Locale.US)).b(false);
  }
  
  public static void a(@cgb String paramString)
  {
    EasyMetric.EasyMetricFactory.a("SNAP_TAP_TO_RETRY").a("context", paramString).a(false);
  }
  
  public static void b(AndroidNotificationManager.Type paramType)
  {
    new ErrorMetric("EMPTY_PUSH_NOTIFICATION_TEXT").a("PUSH_NOTIFICATION_TYPE", paramType.name()).b(false);
  }
  
  public static void b(@cgc String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      new EasyMetric("NOTIFICATION_RECEIVED_UNSPECIFIED").b(false);
      return;
    }
    new EasyMetric("NOTIFICATION_RECEIVED_" + paramString.toUpperCase(Locale.US)).b(false);
  }
  
  public static void c(@cgc String paramString)
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
 * Qualified Name:     ni
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */