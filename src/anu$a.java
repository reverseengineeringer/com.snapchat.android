import com.google.gson.annotations.SerializedName;

@ud
public final class anu$a
  extends qc
{
  @SerializedName("lat")
  Double a;
  @SerializedName("long")
  Double b;
  @SerializedName("accuracyMeters")
  Float c;
  @SerializedName("totalPollingDurationMillis")
  Long d;
  @SerializedName("action")
  String e;
  
  public anu$a(anu paramanu, double paramDouble1, double paramDouble2, Float paramFloat, long paramLong, String paramString)
  {
    a = Double.valueOf(paramDouble1);
    b = Double.valueOf(paramDouble2);
    c = paramFloat;
    d = Long.valueOf(paramLong);
    e = paramString;
  }
}

/* Location:
 * Qualified Name:     anu.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */