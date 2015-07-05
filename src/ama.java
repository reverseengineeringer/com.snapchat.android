import android.util.Base64;
import android.util.Log;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.Timber;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;

public class ama
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
  public long h;
  @SerializedName("cap_pos")
  public double i;
  
  public static ama a(@cgb String paramString)
  {
    Object localObject = paramString.split(":");
    if (localObject.length != 2)
    {
      Timber.a("SnapPushMetadata", "SNAP-LOG: Snap push doesn't contain both IV and metadata! " + paramString, new Object[0]);
      return null;
    }
    paramString = ajx.F();
    if (paramString == null)
    {
      Timber.a("SnapPushMetadata", "SNAP-LOG: User auth token is null!", new Object[0]);
      return null;
    }
    paramString = paramString.getBytes();
    byte[] arrayOfByte = Base64.decode(localObject[0], 0);
    localObject = Base64.decode(localObject[1], 0);
    paramString = new CbcEncryptionAlgorithm(paramString, arrayOfByte).b((byte[])localObject, "no dataId provided");
    if (paramString == null)
    {
      Timber.a("SnapPushMetadata", "SNAP-LOG: Snap push decrypted metadata is null!", new Object[0]);
      return null;
    }
    try
    {
      paramString = (ama)atn.a().fromJson(new String(paramString), ama.class);
      return paramString;
    }
    catch (JsonSyntaxException paramString)
    {
      Timber.f("SnapPushMetadata", "SNAP-LOG: Error deserializing decrypted snap push metadata: " + Log.getStackTraceString(paramString), new Object[0]);
    }
    return null;
  }
  
  public String toString()
  {
    return "SnapPushMetadata{mId='" + a + '\'' + ", mSender='" + b + '\'' + ", mTimestamp=" + c + ", mMediaType=" + d + ", mZipped=" + e + ", mDisplayTime=" + f + ", mCaptionText='" + g + '\'' + ", mCaptionOrientation=" + h + ", mCaptionPosition=" + i + '}';
  }
}

/* Location:
 * Qualified Name:     ama
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */