import com.google.gson.annotations.SerializedName;

public final class als
{
  @SerializedName("celsius")
  public float mCelsius;
  @SerializedName("fahrenheit")
  public float mFahrenheit;
  @SerializedName("latitude")
  public double mLatitude;
  @SerializedName("longitude")
  public double mLongitude;
  @SerializedName("timestamp")
  public long mTimestamp;
  
  public final String toString()
  {
    return "WeatherResponse [latitude=" + mLatitude + ", longitude=" + mLongitude + ", timestamp=" + mTimestamp + ", fahrenheit=" + mFahrenheit + ", celsius=" + mCelsius + "]";
  }
}

/* Location:
 * Qualified Name:     als
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */