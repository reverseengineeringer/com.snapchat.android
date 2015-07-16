import java.text.Normalizer;
import java.text.Normalizer.Form;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ats
{
  public static String a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return ats.a.a().matcher(Normalizer.normalize(paramString, Normalizer.Form.NFD)).replaceAll("");
  }
  
  static final class a
  {
    private static final Pattern LAZY_INSTANCE = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
  }
}

/* Location:
 * Qualified Name:     ats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */