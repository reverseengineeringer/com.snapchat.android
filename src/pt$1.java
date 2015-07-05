import com.snapchat.android.Timber;
import com.snapchat.android.model.server.GeofilterResponse;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class pt$1
  implements Runnable
{
  pt$1(pt parampt, pt.d paramd) {}
  
  public final void run()
  {
    pt localpt = this$0;
    pt.d locald = val$result;
    String str;
    pt.b localb;
    Object localObject1;
    if (serverInfo == null)
    {
      str = null;
      if (str != null)
      {
        localb = location;
        localObject1 = serverInfo.f();
        bgp.b();
        if (localObject1 == null) {
          break label200;
        }
        localObject1 = (bie)mGsonWrapper.a((String)localObject1, bie.class);
        if ((localObject1 == null) || (bie.a.EQUAL != ((bie)localObject1).a())) {
          break label200;
        }
        Timber.c("GetLocationDataTask", "LocationResponse was same, nothing changed.", new Object[0]);
        mCallback.a();
      }
    }
    for (;;)
    {
      if (((createdFriends != null) && (!createdFriends.isEmpty())) || ((createdFriendStories != null) && (!createdFriendStories.isEmpty())))
      {
        if (mUser != null) {
          mUser.c(createdFriends);
        }
        ajq.a().a(createdFriendStories, true);
        ban.a().a(new bbs());
      }
      mCallback.a(str);
      return;
      str = serverInfo.b();
      break;
      label200:
      if (localb == null)
      {
        Timber.c("GetLocationDataTask", "LocationResponsePayload was null.", new Object[0]);
      }
      else
      {
        if (weather != null)
        {
          Timber.c("GetLocationDataTask", "Updating Weather", new Object[0]);
          mCallback.a(new aka(weather));
        }
        Iterator localIterator;
        Object localObject2;
        if (filters != null)
        {
          localObject1 = new ArrayList();
          Timber.c("GetLocationDataTask", "num geofilters from server" + filters.size(), new Object[0]);
          localIterator = filters.iterator();
          while (localIterator.hasNext())
          {
            GeofilterResponse localGeofilterResponse = (GeofilterResponse)localIterator.next();
            try
            {
              ((List)localObject1).add(new aiv(localGeofilterResponse));
            }
            catch (Exception localException1)
            {
              localObject2 = new nr(localException1.toString());
              mExceptionReporter.a((Throwable)localObject2);
            }
          }
          Timber.c("GetLocationDataTask", "Updating geofilters with " + ((List)localObject1).size() + " geofilters", new Object[0]);
          mCallback.a((List)localObject1);
        }
        if (cachable_filters != null)
        {
          localObject1 = new ArrayList(cachable_filters.size());
          localIterator = cachable_filters.iterator();
          while (localIterator.hasNext())
          {
            localObject2 = (GeofilterResponse)localIterator.next();
            try
            {
              ((List)localObject1).add(new aiv((GeofilterResponse)localObject2));
            }
            catch (Exception localException2)
            {
              nr localnr = new nr(localException2.toString());
              mExceptionReporter.a(localnr);
            }
          }
          mCallback.c((List)localObject1);
        }
        if (our_stories != null) {
          bgp.a(new pt.2(localpt, localb));
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     pt.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */