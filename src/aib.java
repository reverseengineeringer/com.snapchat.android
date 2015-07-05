import android.location.Location;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonParseException;
import com.snapchat.android.Timber;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

@bwr
public final class aib
  extends aia
{
  public final awp d;
  public final Object e = new Object();
  @bwo
  public Map<String, aiv> f = new HashMap();
  public volatile boolean g = false;
  private final azo h;
  private final Gson i;
  private final ahr j;
  
  public aib()
  {
    this(awq.GEOFILTER_METADATA_CACHE, new azo(), ahr.a());
    bgp.b(new Runnable()
    {
      public final void run()
      {
        synchronized (e)
        {
          aib localaib = aib.this;
          Map localMap = a(d);
          synchronized (e)
          {
            f = localMap;
            g = true;
            return;
          }
        }
      }
    });
  }
  
  private aib(awp paramawp, azo paramazo, ahr paramahr)
  {
    d = paramawp;
    h = paramazo;
    j = paramahr;
    i = new GsonBuilder().registerTypeAdapter(cgs.class, new ais()).create();
  }
  
  protected final Map<String, aiv> a(awp paramawp)
  {
    HashMap localHashMap = new HashMap(paramawp.c() * 2);
    Iterator localIterator = paramawp.d().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)((Map.Entry)localIterator.next()).getKey();
      try
      {
        byte[] arrayOfByte = paramawp.a(str);
        if (arrayOfByte == null) {
          paramawp.c(str);
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        Timber.f("CachedGeofilterProvider", localUnsupportedEncodingException.getMessage(), new Object[0]);
        paramawp.c(str);
        continue;
        Object localObject = new String(localUnsupportedEncodingException, "UTF-8");
        localObject = (aiv)i.fromJson((String)localObject, aiv.class);
        cgs localcgs = new cgs();
        if ((mClientCacheExpiration != null) && (!mClientCacheExpiration.c(localcgs))) {
          break label192;
        }
        paramawp.c(str);
      }
      catch (JsonParseException localJsonParseException)
      {
        Timber.f("CachedGeofilterProvider", localJsonParseException.getMessage(), new Object[0]);
        paramawp.c(str);
      }
      continue;
      label192:
      localHashMap.put(str, localJsonParseException);
    }
    return localHashMap;
  }
  
  @caq
  public final void a(@cgb aiv paramaiv)
  {
    if (!g) {
      return;
    }
    synchronized (e)
    {
      f.put(mFilterId, paramaiv);
      bgp.b();
    }
    try
    {
      if (mFilterId == null)
      {
        Timber.f("CachedGeofilterProvider", "Could not serialize geofilter filter id is null ", new Object[0]);
        h.a(new nw("Could not serialize geofilter filter id is null "));
      }
      for (;;)
      {
        a(paramaiv, false);
        return;
        paramaiv = finally;
        throw paramaiv;
        ??? = i.toJson(paramaiv, aiv.class);
        if ((??? != null) && (((String)???).length() != 0)) {
          break;
        }
        ??? = "Could not serialize geofilter " + mFilterId;
        Timber.f("CachedGeofilterProvider", (String)???, new Object[0]);
        h.a(new nw((String)???));
      }
    }
    catch (aws localaws)
    {
      for (;;)
      {
        Timber.f("CachedGeofilterProvider", localaws.getMessage(), new Object[0]);
        continue;
        Object localObject2 = localaws.getBytes(Charset.forName("UTF-8"));
        if ((localObject2 == null) || (localObject2.length == 0))
        {
          localObject2 = "Could not getBytes for " + mFilterId;
          Timber.f("CachedGeofilterProvider", (String)localObject2, new Object[0]);
          h.a(new nw((String)localObject2));
        }
        else
        {
          d.a(mFilterId, (byte[])localObject2);
        }
      }
    }
  }
  
  @caq
  @cgb
  public final List<aiv> c()
  {
    ArrayList localArrayList = new ArrayList();
    if (!g) {
      return localArrayList;
    }
    Location localLocation = j.d();
    if (localLocation == null) {
      return localArrayList;
    }
    for (;;)
    {
      aiv localaiv;
      synchronized (e)
      {
        Iterator localIterator = f.entrySet().iterator();
        if (!localIterator.hasNext()) {
          break label146;
        }
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localaiv = (aiv)localEntry.getValue();
        if (mGeofence == null) {
          break label150;
        }
        if (localLocation == null)
        {
          break label150;
          if (!bool) {
            continue;
          }
          localArrayList.add(localEntry.getValue());
        }
      }
      boolean bool = mGeofence.a(localLocation);
      continue;
      label146:
      return localList;
      label150:
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     aib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */