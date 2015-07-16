import android.location.Location;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ajq
{
  public final String mId;
  final List<LatLng> mPoints = new ArrayList();
  
  public ajq(@chc biz parambiz)
  {
    mId = parambiz.a();
    parambiz = parambiz.b().iterator();
    while (parambiz.hasNext())
    {
      bip localbip = (bip)parambiz.next();
      mPoints.add(new LatLng(localbip.a().doubleValue(), localbip.b().doubleValue()));
    }
  }
  
  public final boolean a(@chc Location paramLocation)
  {
    double d2 = 0.0D;
    int i = 0;
    if (i < mPoints.size())
    {
      LatLng localLatLng2 = (LatLng)mPoints.get(i);
      LatLng localLatLng1 = (LatLng)mPoints.get((i + 1) % mPoints.size());
      localLatLng2 = new LatLng(latitude - paramLocation.getLatitude(), longitude - paramLocation.getLongitude());
      localLatLng1 = new LatLng(latitude - paramLocation.getLatitude(), longitude - paramLocation.getLongitude());
      double d1 = Math.atan2(longitude, latitude);
      double d3 = (Math.atan2(longitude, latitude) - d1) % 6.283185307179586D;
      if (d3 >= 3.141592653589793D) {
        d1 = d3 - 6.283185307179586D;
      }
      for (;;)
      {
        d2 += d1;
        i += 1;
        break;
        d1 = d3;
        if (d3 < -3.141592653589793D) {
          d1 = d3 + 6.283185307179586D;
        }
      }
    }
    return Math.abs(d2) >= 3.141592653589793D;
  }
}

/* Location:
 * Qualified Name:     ajq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */