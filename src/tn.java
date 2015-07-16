import com.google.gson.annotations.SerializedName;

public final class tn
{
  @SerializedName("statement_description")
  private final String mStatementDesc;
  @SerializedName("subject")
  private final String mSubject;
  
  public tn(@chd String paramString)
  {
    mSubject = paramString;
    mStatementDesc = paramString;
  }
}

/* Location:
 * Qualified Name:     tn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */