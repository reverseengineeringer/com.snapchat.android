import com.google.gson.annotations.SerializedName;

public final class sx
{
  @SerializedName("statement_description")
  private final String mStatementDesc;
  @SerializedName("subject")
  private final String mSubject;
  
  public sx(@cgc String paramString)
  {
    mSubject = paramString;
    mStatementDesc = paramString;
  }
}

/* Location:
 * Qualified Name:     sx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */