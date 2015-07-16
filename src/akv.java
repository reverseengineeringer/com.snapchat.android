import android.location.Location;

public final class akv
{
  public static final int LOCATION_CACHE_DISTANCE_MILES = 5;
  public static final int LOCATION_CACHE_LIFETIME_MILLIS = 1200000;
  public static final float METERS_PER_MILE = 1609.34F;
  private final Location mLastLocation;
  public final String mTempC;
  public final String mTempF;
  private final long mTimeLastRequested;
  
  public akv(als paramals)
  {
    mTimeLastRequested = mTimestamp;
    mTempF = Integer.toString((int)mFahrenheit);
    mTempC = Integer.toString((int)mCelsius);
    mLastLocation = new Location("");
    mLastLocation.setLatitude(mLatitude);
    mLastLocation.setLongitude(mLongitude);
  }
}

/* Location:
 * Qualified Name:     akv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */