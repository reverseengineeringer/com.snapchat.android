import com.snapchat.android.model.server.GeofilterResponse;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class qk$1
  implements Runnable
{
  qk$1(qk paramqk, qk.d paramd) {}
  
  public final void run()
  {
    qk localqk = this$0;
    qk.d locald = val$result;
    String str;
    qk.b localb;
    Object localObject1;
    if (serverInfo == null)
    {
      str = null;
      if (str != null)
      {
        localb = location;
        localObject1 = serverInfo.f();
        bhp.b();
        if (localObject1 == null) {
          break label189;
        }
        localObject1 = (bje)mGsonWrapper.a((String)localObject1, bje.class);
        if ((localObject1 == null) || (bje.a.EQUAL != ((bje)localObject1).a())) {
          break label189;
        }
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
        akk.a().a(createdFriendStories, true);
        bbo.a().a(new bcs());
      }
      mCallback.a(str);
      return;
      str = serverInfo.b();
      break;
      label189:
      if (localb != null)
      {
        if (weather != null) {
          mCallback.a(new akv(weather));
        }
        Iterator localIterator;
        Object localObject2;
        if (filters != null)
        {
          localObject1 = new ArrayList();
          new StringBuilder("num geofilters from server").append(filters.size());
          localIterator = filters.iterator();
          while (localIterator.hasNext())
          {
            GeofilterResponse localGeofilterResponse = (GeofilterResponse)localIterator.next();
            try
            {
              ((List)localObject1).add(new ajr(localGeofilterResponse));
            }
            catch (Exception localException1)
            {
              localObject2 = new oi(localException1.toString());
              mExceptionReporter.a((Throwable)localObject2);
            }
          }
          new StringBuilder("Updating geofilters with ").append(((List)localObject1).size()).append(" geofilters");
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
              ((List)localObject1).add(new ajr((GeofilterResponse)localObject2));
            }
            catch (Exception localException2)
            {
              oi localoi = new oi(localException2.toString());
              mExceptionReporter.a(localoi);
            }
          }
          mCallback.c((List)localObject1);
        }
        if (our_stories != null) {
          bhp.a(new qk.2(localqk, localb));
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     qk.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */