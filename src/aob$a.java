import com.google.gson.annotations.SerializedName;

@uo
public final class aob$a
{
  @SerializedName("timestamp")
  vc a;
  @SerializedName("req_token")
  vc b;
  @SerializedName("username")
  vc c;
  @SerializedName("data")
  ty d;
  
  aob$a(aob paramaob, String paramString, byte[] paramArrayOfByte)
  {
    a = new vc(paramString);
    b = new vc(pj.a(paramString));
    c = new vc(akr.l());
    d = new ty(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     aob.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */