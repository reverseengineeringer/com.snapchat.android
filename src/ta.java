import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;

public final class ta
{
  @SerializedName("accept_terms")
  @cgc
  private rd mAcceptTermsBlocker;
  @SerializedName("card")
  @cgc
  public rh mCardBlocker;
  @SerializedName("confirm")
  @cgc
  private rj mConfirmBlocker;
  @SerializedName("phone_number")
  @cgc
  private rq mPhoneNumberBlocker;
  @SerializedName("url")
  @cgc
  private String mUrl;
  
  @cgc
  private ry c()
  {
    if (mUrl != null) {
      return new ry(mUrl);
    }
    return null;
  }
  
  public final boolean a()
  {
    return (mAcceptTermsBlocker != null) || (mCardBlocker != null) || (mConfirmBlocker != null) || (mPhoneNumberBlocker != null) || (c() != null);
  }
  
  @cgb
  public final List<qv> b()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = mAcceptTermsBlocker;
    if (localObject != null) {
      localArrayList.add(localObject);
    }
    localObject = mCardBlocker;
    if (localObject != null) {
      localArrayList.add(localObject);
    }
    localObject = mConfirmBlocker;
    if (localObject != null) {
      localArrayList.add(localObject);
    }
    localObject = mPhoneNumberBlocker;
    if (localObject != null) {
      localArrayList.add(localObject);
    }
    if (localArrayList.isEmpty())
    {
      localObject = c();
      if (localObject != null) {
        localArrayList.add(localObject);
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     ta
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */