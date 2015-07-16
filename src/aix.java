import android.location.Location;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonParseException;
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

@bxs
public final class aix
  extends aiw
{
  public final axn d;
  public final Object e = new Object();
  @bxp
  public Map<String, ajr> f = new HashMap();
  public volatile boolean g = false;
  private final ban h;
  private final Gson i;
  private final ain j;
  
  public aix()
  {
    this(axo.GEOFILTER_METADATA_CACHE, new ban(), ain.a());
    bhp.b(new Runnable()
    {
      public final void run()
      {
        synchronized (e)
        {
          aix localaix = aix.this;
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
  
  private aix(axn paramaxn, ban paramban, ain paramain)
  {
    d = paramaxn;
    h = paramban;
    j = paramain;
    i = new GsonBuilder().registerTypeAdapter(cht.class, new ajo()).create();
  }
  
  protected final Map<String, ajr> a(axn paramaxn)
  {
    HashMap localHashMap = new HashMap(paramaxn.c() * 2);
    Iterator localIterator = paramaxn.d().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)((Map.Entry)localIterator.next()).getKey();
      try
      {
        byte[] arrayOfByte = paramaxn.a(str);
        if (arrayOfByte == null) {
          paramaxn.c(str);
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        localUnsupportedEncodingException.getMessage();
        paramaxn.c(str);
        continue;
        Object localObject = new String(localUnsupportedEncodingException, "UTF-8");
        localObject = (ajr)i.fromJson((String)localObject, ajr.class);
        cht localcht = new cht();
        if ((mClientCacheExpiration != null) && (!mClientCacheExpiration.c(localcht))) {
          break label176;
        }
        paramaxn.c(str);
      }
      catch (JsonParseException localJsonParseException)
      {
        localJsonParseException.getMessage();
        paramaxn.c(str);
      }
      continue;
      label176:
      localHashMap.put(str, localJsonParseException);
    }
    return localHashMap;
  }
  
  @cbr
  public final void a(@chc ajr paramajr)
  {
    if (!g) {
      return;
    }
    synchronized (e)
    {
      f.put(mFilterId, paramajr);
      bhp.b();
    }
    try
    {
      if (mFilterId == null) {
        h.a(new on("Could not serialize geofilter filter id is null "));
      }
      for (;;)
      {
        a(paramajr, false);
        return;
        paramajr = finally;
        throw paramajr;
        ??? = i.toJson(paramajr, ajr.class);
        if ((??? != null) && (((String)???).length() != 0)) {
          break;
        }
        ??? = "Could not serialize geofilter " + mFilterId;
        h.a(new on((String)???));
      }
    }
    catch (axq localaxq)
    {
      for (;;)
      {
        localaxq.getMessage();
        continue;
        Object localObject2 = localaxq.getBytes(Charset.forName("UTF-8"));
        if ((localObject2 == null) || (localObject2.length == 0))
        {
          localObject2 = "Could not getBytes for " + mFilterId;
          h.a(new on((String)localObject2));
        }
        else
        {
          d.a(mFilterId, (byte[])localObject2);
        }
      }
    }
  }
  
  @cbr
  @chc
  public final List<ajr> c()
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
      ajr localajr;
      synchronized (e)
      {
        Iterator localIterator = f.entrySet().iterator();
        if (!localIterator.hasNext()) {
          break label146;
        }
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localajr = (ajr)localEntry.getValue();
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
 * Qualified Name:     aix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */