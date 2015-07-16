import com.addlive.service.AddLiveService;
import com.snapchat.android.livechat.AdlHelper;
import com.snapchat.android.livechat.AdlHelper.c;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

final class aig
{
  private static final List<String> b = Arrays.asList(new String[] { "https://cnc.addlive.io/events.store" });
  final AddLiveService a;
  
  aig(AddLiveService paramAddLiveService)
  {
    a = paramAddLiveService;
  }
  
  final void a()
  {
    String str = (String)b.get((int)(System.currentTimeMillis() % b.size()));
    a.setProperty(AdlHelper.a("setProperty(global.service.eventsTrackingEndpoint"), "global.service.eventsTrackingEndpoint", str);
    a.setProperty(AdlHelper.a("setProperty(global.service.eventsTrackingSession"), "global.service.eventsTrackingSession", UUID.randomUUID().toString());
    a.startEventsTracking(AdlHelper.a("startEventsTracking"), "ADL_Performance.log");
  }
}

/* Location:
 * Qualified Name:     aig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */