import android.os.Bundle;
import com.snapchat.android.Timber;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import org.json.JSONArray;
import org.json.JSONObject;

public final class mt
  implements mn
{
  private final int mPosition;
  private final mr mStream;
  
  public mt(mr parammr, int paramInt)
  {
    mStream = parammr;
    mPosition = paramInt;
  }
  
  private static ArrayList<String> a(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.has("third_party_urls")) {
      throw new IllegalStateException();
    }
    paramJSONObject = paramJSONObject.getJSONArray("third_party_urls");
    ArrayList localArrayList = new ArrayList();
    if (paramJSONObject.length() > 0)
    {
      int i = 0;
      while (i < paramJSONObject.length())
      {
        localArrayList.add(paramJSONObject.getString(i));
        i += 1;
      }
    }
    return localArrayList;
  }
  
  public final Bundle a(String paramString)
  {
    boolean bool = true;
    Bundle localBundle = new Bundle();
    paramString = new JSONObject(paramString);
    if (paramString.getString("type").equals("image")) {}
    for (int i = 0;; i = 1)
    {
      localBundle.putInt("type", i);
      if (paramString.has("media_zipped_with_overlay")) {
        bool = paramString.getBoolean("media_zipped_with_overlay");
      }
      if (paramString.has("third_party_urls")) {
        localBundle.putStringArrayList("third_party_urls", a(paramString));
      }
      localBundle.putBoolean("media_zipped_with_overlay", bool);
      localBundle.putString("content", paramString.getString("content"));
      localBundle.putString("imp-url", paramString.getString("imp-url"));
      localBundle.putDouble("duration", paramString.getDouble("duration"));
      return localBundle;
    }
  }
  
  public final void a(mo parammo)
  {
    int i = 100;
    mAdStreamPosition = mPosition;
    mr localmr = mStream;
    for (;;)
    {
      synchronized (mMutex)
      {
        int j = mAdStreamPosition;
        if (!mPositionsWithInFlightRequests.contains(Integer.valueOf(j)))
        {
          Timber.e("StoryAdStream", "AdTransformResponse %s received for position %d which is not in the in flight request set %s", new Object[] { parammo, Integer.valueOf(j), mPositionsWithInFlightRequests });
          return;
        }
        mPositionsWithInFlightRequests.remove(Integer.valueOf(j));
        if (mPositionAdResponseCache.containsKey(Integer.valueOf(j))) {
          Timber.e("StoryAdStream", "AdTransformResponse %s received for position %d, while we already have a response for this position. Discarding the old response.", new Object[] { parammo, Integer.valueOf(j) });
        }
        if (parammo.b())
        {
          mPositionAdResponseCache.put(Integer.valueOf(j), parammo);
          mTimeBetweenRetriesMilliSeconds = 0;
        }
        if (j == mNextPosition)
        {
          if (parammo.b()) {
            localmr.a(parammo);
          }
        }
        else {
          return;
        }
      }
      parammo = mAdRequestError;
      if (mInPlayback) {
        mStoryAdStreamListener.a(parammo);
      }
      if (mTimeBetweenRetriesMilliSeconds >= 100) {
        i = mTimeBetweenRetriesMilliSeconds * 2;
      }
      mTimeBetweenRetriesMilliSeconds = i;
      mTimeBetweenRetriesMilliSeconds = Math.min(60000, mTimeBetweenRetriesMilliSeconds);
      Timber.b("StoryAdStream", "Scheduling another retry in %s milliseconds", new Object[] { Integer.valueOf(mTimeBetweenRetriesMilliSeconds) });
      mTimer.schedule(new mr.a(localmr, (byte)0), mTimeBetweenRetriesMilliSeconds);
    }
  }
}

/* Location:
 * Qualified Name:     mt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */