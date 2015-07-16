import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;

public final class tq
{
  @SerializedName("accept_terms")
  @chd
  private rt mAcceptTermsBlocker;
  @SerializedName("card")
  @chd
  public rx mCardBlocker;
  @SerializedName("confirm")
  @chd
  private rz mConfirmBlocker;
  @SerializedName("phone_number")
  @chd
  private sg mPhoneNumberBlocker;
  @SerializedName("url")
  @chd
  private String mUrl;
  
  @chd
  private so c()
  {
    if (mUrl != null) {
      return new so(mUrl);
    }
    return null;
  }
  
  public final boolean a()
  {
    return (mAcceptTermsBlocker != null) || (mCardBlocker != null) || (mConfirmBlocker != null) || (mPhoneNumberBlocker != null) || (c() != null);
  }
  
  @chc
  public final List<rl> b()
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
 * Qualified Name:     tq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */