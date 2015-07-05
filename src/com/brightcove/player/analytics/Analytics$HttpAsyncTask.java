package com.brightcove.player.analytics;

import android.os.AsyncTask;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.media.HttpService;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class Analytics$HttpAsyncTask
  extends AsyncTask<Map<String, String>, Integer, Void>
{
  HttpService httpService = new HttpService(60, 60);
  
  public Analytics$HttpAsyncTask(Analytics paramAnalytics) {}
  
  @SafeVarargs
  protected final Void doInBackground(Map<String, String>... paramVarArgs)
  {
    Object localObject = paramVarArgs[0];
    paramVarArgs = new HashMap();
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      paramVarArgs.put(localEntry.getKey(), localEntry.getValue());
    }
    try
    {
      paramVarArgs = HttpService.buildURIWithQueryParameters("https://metrics.brightcove.com/tracker", paramVarArgs);
      httpService.doGetRequest(paramVarArgs);
      return null;
    }
    catch (MalformedURLException paramVarArgs)
    {
      for (;;)
      {
        Analytics.access$900(this$0).emit("error", Collections.singletonMap("error", paramVarArgs));
      }
    }
    catch (UnsupportedEncodingException paramVarArgs)
    {
      for (;;)
      {
        Analytics.access$1000(this$0).emit("error", Collections.singletonMap("error", paramVarArgs));
      }
    }
    catch (URISyntaxException paramVarArgs)
    {
      for (;;)
      {
        Analytics.access$1100(this$0).emit("error", Collections.singletonMap("error", paramVarArgs));
      }
    }
    catch (IOException paramVarArgs)
    {
      for (;;)
      {
        Analytics.access$1200(this$0).emit("error", Collections.singletonMap("error", paramVarArgs));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.analytics.Analytics.HttpAsyncTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */