import android.util.Base64;
import android.util.Log;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;

public class amx
{
  @SerializedName("id")
  public String a;
  @SerializedName("sn")
  public String b;
  @SerializedName("sts")
  public long c;
  @SerializedName("m")
  public int d;
  @SerializedName("zipped")
  public boolean e;
  @SerializedName("timer")
  public double f;
  @SerializedName("cap_text")
  public String g;
  @SerializedName("cap_ori")
  private long h;
  @SerializedName("cap_pos")
  private double i;
  
  public static amx a(@chc String paramString)
  {
    paramString = paramString.split(":");
    if (paramString.length != 2) {
      return null;
    }
    Object localObject = akr.F();
    if (localObject == null) {
      return null;
    }
    localObject = ((String)localObject).getBytes();
    byte[] arrayOfByte = Base64.decode(paramString[0], 0);
    paramString = Base64.decode(paramString[1], 0);
    paramString = new CbcEncryptionAlgorithm((byte[])localObject, arrayOfByte).b(paramString, "no dataId provided");
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = (amx)aul.a().fromJson(new String(paramString), amx.class);
      return paramString;
    }
    catch (JsonSyntaxException paramString)
    {
      new StringBuilder("SNAP-LOG: Error deserializing decrypted snap push metadata: ").append(Log.getStackTraceString(paramString));
    }
    return null;
  }
  
  public String toString()
  {
    return "SnapPushMetadata{mId='" + a + '\'' + ", mSender='" + b + '\'' + ", mTimestamp=" + c + ", mMediaType=" + d + ", mZipped=" + e + ", mDisplayTime=" + f + ", mCaptionText='" + g + '\'' + ", mCaptionOrientation=" + h + ", mCaptionPosition=" + i + '}';
  }
}

/* Location:
 * Qualified Name:     amx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */