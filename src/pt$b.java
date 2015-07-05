import com.google.gson.annotations.SerializedName;
import com.snapchat.android.model.server.GeofilterResponse;
import java.util.List;

final class pt$b
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

/* Location:
 * Qualified Name:     pt.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */