import com.addlive.service.AddLiveService;
import com.snapchat.android.Timber;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

final class ahk
{
  private static final List<String> b = Arrays.asList(new String[] { "https://cnc.addlive.io/events.store" });
  final AddLiveService a;
  
  ahk(AddLiveService paramAddLiveService)
  {
    a = paramAddLiveService;
  }
  
  final void a()
  {
    Timber.c("livechat", "Setting up the AddLive performance gathering metrics", new Object[0]);
    String str = (String)b.get((int)(System.currentTimeMillis() % b.size()));
    a.setProperty(ahh.a("setProperty(global.service.eventsTrackingEndpoint"), "global.service.eventsTrackingEndpoint", str);
    a.setProperty(ahh.a("setProperty(global.service.eventsTrackingSession"), "global.service.eventsTrackingSession", UUID.randomUUID().toString());
    a.startEventsTracking(ahh.a("startEventsTracking"), "ADL_Performance.log");
  }
}

/* Location:
 * Qualified Name:     ahk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */