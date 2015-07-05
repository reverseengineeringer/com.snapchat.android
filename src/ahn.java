import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.location.LocationServices;

public final class ahn
{
  final GoogleApiClient a;
  private final ahm b;
  
  public ahn(Context paramContext)
  {
    this(new GoogleApiClient.Builder(paramContext).addApi(LocationServices.API).build(), new ahm());
  }
  
  private ahn(GoogleApiClient paramGoogleApiClient, ahm paramahm)
  {
    a = paramGoogleApiClient;
    a.connect();
    b = paramahm;
  }
}

/* Location:
 * Qualified Name:     ahn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */