import android.location.Location;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.Timber;
import com.snapchat.android.model.server.GeofilterResponse;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class pt
  extends th
  implements ts.b<pt.d>
{
  private static final String TAG = "GetLocationDataTask";
  final pt.a mCallback;
  final azo mExceptionReporter;
  final Location mLocation;
  final String mPreviousRequestChecksum;
  
  public pt(@cgb pt.a parama, @cgb Location paramLocation, @cgb String paramString)
  {
    this(parama, paramLocation, paramString, new azo());
  }
  
  private pt(@cgb pt.a parama, @cgb Location paramLocation, @cgb String paramString, @cgb azo paramazo)
  {
    mCallback = parama;
    mLocation = paramLocation;
    mPreviousRequestChecksum = paramString;
    mExceptionReporter = paramazo;
    a(pt.d.class, this);
  }
  
  public final String d()
  {
    return "/loq/loc_data";
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(@cgb aka paramaka);
    
    public abstract void a(@cgb String paramString);
    
    public abstract void a(@cgb List<aiv> paramList);
    
    public abstract void b(@cgb List<ajc> paramList);
    
    public abstract void c(@cgb List<aiv> paramList);
  }
  
  static final class b
  {
    @SerializedName("pre_cache_geofilters")
    @cgc
    List<GeofilterResponse> cachable_filters;
    @SerializedName("filters")
    @cgc
    List<GeofilterResponse> filters;
    @SerializedName("our_story_auths")
    @cgc
    List<bin> our_stories;
    @SerializedName("weather")
    @cgc
    akx weather;
  }
  
  @tn
  public final class c
    extends pl
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
    String username = ajx.l();
    
    public c() {}
  }
  
  static class d
  {
    @SerializedName("created_friend_stories")
    @cgc
    List<bhv> createdFriendStories;
    @SerializedName("created_friend")
    @cgc
    List<bhu> createdFriends;
    @SerializedName("location")
    @cgc
    pt.b location;
    @SerializedName("server_info")
    @cgc
    biw serverInfo;
  }
}

/* Location:
 * Qualified Name:     pt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */