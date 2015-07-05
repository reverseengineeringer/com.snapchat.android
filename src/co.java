import javax.annotation.Nullable;

@cd
public final class co
{
  public static String a(@Nullable String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    return str;
  }
  
  @Nullable
  public static String b(@Nullable String paramString)
  {
    String str = paramString;
    if (c(paramString)) {
      str = null;
    }
    return str;
  }
  
  public static boolean c(@Nullable String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
}

/* Location:
 * Qualified Name:     co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */