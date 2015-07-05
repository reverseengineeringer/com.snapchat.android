import android.text.TextUtils;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.discover.model.DSnapPage;
import java.util.Map;

final class adv$2
  implements EventListener
{
  adv$2(adv paramadv) {}
  
  public final void processEvent(Event paramEvent)
  {
    String str2 = null;
    Object localObject1;
    int i;
    if (TextUtils.equals(paramEvent.getType(), "progress"))
    {
      Timber.a("DSnapItemRemoteVideoAdapter", "%s got BrightCove event: %s", new Object[] { a.e, paramEvent.toString() });
      localObject1 = paramEvent.getType();
      i = -1;
      switch (((String)localObject1).hashCode())
      {
      default: 
        label104:
        switch (i)
        {
        }
        break;
      }
    }
    for (;;)
    {
      a.i();
      return;
      Timber.c("DSnapItemRemoteVideoAdapter", "%s got BrightCove event: %s", new Object[] { a.e, paramEvent.toString() });
      break;
      if (!((String)localObject1).equals("didPlay")) {
        break label104;
      }
      i = 0;
      break label104;
      if (!((String)localObject1).equals("sourceNotFound")) {
        break label104;
      }
      i = 1;
      break label104;
      if (!((String)localObject1).equals("sourceNotPlayable")) {
        break label104;
      }
      i = 2;
      break label104;
      if (!((String)localObject1).equals("error")) {
        break label104;
      }
      i = 3;
      break label104;
      if (!((String)localObject1).equals("completed")) {
        break label104;
      }
      i = 4;
      break label104;
      a.f = false;
      a.g();
      a.b.a(a.g, false, true);
    }
    a.f = false;
    a.g();
    a.b.a(a.g, false, false);
    adv localadv = a;
    label357:
    Object localObject2;
    label385:
    String str1;
    label415:
    Object localObject3;
    Object localObject4;
    String str3;
    if (properties != null)
    {
      localObject1 = (Video)properties.get("video");
      if (localObject1 != null)
      {
        localObject1 = ((Video)localObject1).getId();
        localObject2 = (Source)properties.get("source");
        if (localObject2 != null)
        {
          localObject2 = ((Source)localObject2).getUrl();
          if (properties.containsKey("errorCode"))
          {
            str1 = properties.get("errorCode").toString();
            localObject3 = localObject2;
            localObject4 = localObject1;
            str3 = str1;
            if (properties.containsKey("errorMessage"))
            {
              str2 = properties.get("errorMessage").toString();
              str3 = str1;
              localObject4 = localObject1;
              localObject3 = localObject2;
            }
          }
        }
      }
    }
    for (;;)
    {
      localObject1 = e.h;
      localObject2 = e.a;
      str1 = e.b();
      paramEvent = paramEvent.getType();
      paramEvent = EasyMetric.EasyMetricFactory.a("DISCOVER_BRIGHTCOVE_ERROR").a("publisher_name", localObject1).a("dsnap_id", localObject2).a("hash", str1).a("error_type", paramEvent);
      if (localObject4 != null) {
        paramEvent.a("video_id", localObject4);
      }
      if (localObject3 != null) {
        paramEvent.a("source", localObject3);
      }
      if (str3 != null) {
        paramEvent.a("error_code", str3);
      }
      if (str2 != null) {
        paramEvent.a("error_message", str2);
      }
      paramEvent.a(false);
      break;
      a.g();
      break;
      str1 = null;
      break label415;
      localObject2 = null;
      break label385;
      localObject1 = null;
      break label357;
      str3 = null;
      localObject3 = null;
      localObject4 = null;
    }
  }
}

/* Location:
 * Qualified Name:     adv.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */