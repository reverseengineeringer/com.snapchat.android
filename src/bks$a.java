import com.google.gson.annotations.SerializedName;

public enum bks$a
{
  DEFAULT_TYPE("DEFAULT_TYPE"),  TWO_FA_TYPE("TWO_FA_TYPE"),  UNRECOGNIZED_VALUE("UNRECOGNIZED_VALUE");
  
  public final String value;
  
  private bks$a(String paramString)
  {
    value = paramString;
  }
  
  public final String toString()
  {
    return value;
  }
}

/* Location:
 * Qualified Name:     bks.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */