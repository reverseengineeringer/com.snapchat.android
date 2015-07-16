import android.location.Location;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.model.server.GeofilterResponse;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class qk
  extends tx
  implements ui.b<qk.d>
{
  private static final String TAG = "GetLocationDataTask";
  final qk.a mCallback;
  final ban mExceptionReporter;
  final Location mLocation;
  final String mPreviousRequestChecksum;
  
  public qk(@chc qk.a parama, @chc Location paramLocation, @chc String paramString)
  {
    this(parama, paramLocation, paramString, new ban());
  }
  
  private qk(@chc qk.a parama, @chc Location paramLocation, @chc String paramString, @chc ban paramban)
  {
    mCallback = parama;
    mLocation = paramLocation;
    mPreviousRequestChecksum = paramString;
    mExceptionReporter = paramban;
    registerCallback(qk.d.class, this);
  }
  
  public final String getPath()
  {
    return "/loq/loc_data";
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(@chc akv paramakv);
    
    public abstract void a(@chc String paramString);
    
    public abstract void a(@chc List<ajr> paramList);
    
    public abstract void b(@chc List<ajy> paramList);
    
    public abstract void c(@chc List<ajr> paramList);
  }
  
  static final class b
  {
    @SerializedName("pre_cache_geofilters")
    @chd
    List<GeofilterResponse> cachable_filters;
    @SerializedName("filters")
    @chd
    List<GeofilterResponse> filters;
    @SerializedName("our_story_auths")
    @chd
    List<bjn> our_stories;
    @SerializedName("weather")
    @chd
    als weather;
  }
  
  @ud
  public final class c
    extends qc
  {
    @SerializedName("loc_accuracy_in_meters")
    Double accuracy = Double.valueOf(mLocation.getAccuracy());
    @SerializedName("lat")
    Double latitude = Double.valueOf(mLocation.getLatitude());
    @SerializedName("long")
    Double longitude = Double.valueOf(mLocation.getLongitude());
    @SerializedName("checksums_dict")
    String mChecksumDict = mPreviousRequestChecksum;
    @SerializedName("username")
    String username = akr.l();
    
    public c() {}
  }
  
  static class d
  {
    @SerializedName("created_friend_stories")
    @chd
    List<biv> createdFriendStories;
    @SerializedName("created_friend")
    @chd
    List<biu> createdFriends;
    @SerializedName("location")
    @chd
    qk.b location;
    @SerializedName("server_info")
    @chd
    bjx serverInfo;
  }
}

/* Location:
 * Qualified Name:     qk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */