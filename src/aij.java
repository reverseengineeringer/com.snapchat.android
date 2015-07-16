import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.location.LocationServices;

public final class aij
{
  final GoogleApiClient a;
  private final aii b;
  
  public aij(Context paramContext)
  {
    this(new GoogleApiClient.Builder(paramContext).addApi(LocationServices.API).build(), new aii());
  }
  
  private aij(GoogleApiClient paramGoogleApiClient, aii paramaii)
  {
    a = paramGoogleApiClient;
    a.connect();
    b = paramaii;
  }
}

/* Location:
 * Qualified Name:     aij
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */