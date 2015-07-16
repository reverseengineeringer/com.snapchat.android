import android.graphics.Color;
import java.util.HashMap;
import org.xml.sax.Attributes;

final class fy$d
{
  fy.f a = null;
  Attributes b;
  
  private fy$d(Attributes paramAttributes)
  {
    b = paramAttributes;
    paramAttributes = fy.a("style", paramAttributes);
    if (paramAttributes != null) {
      a = new fy.f(paramAttributes, (byte)0);
    }
  }
  
  public static Integer b(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    if (paramString.startsWith("#")) {}
    int i;
    try
    {
      i = Color.parseColor(paramString);
      return Integer.valueOf(i);
    }
    catch (IllegalArgumentException paramString) {}
    if ((paramString.startsWith("rgb(")) && (paramString.endsWith(")"))) {
      paramString = paramString.substring(4, paramString.length() - 1).split(",");
    }
    try
    {
      i = d(paramString[0]);
      int j = d(paramString[1]);
      int k = d(paramString[2]);
      return Integer.valueOf(k & 0xFF | (i & 0xFF) << 16 | (j & 0xFF) << 8);
    }
    catch (ArrayIndexOutOfBoundsException paramString)
    {
      return null;
    }
    catch (NumberFormatException paramString)
    {
      return null;
    }
    return fw.a(paramString);
    return null;
  }
  
  private static int d(String paramString)
  {
    if (paramString.endsWith("%")) {
      return Math.round(Float.parseFloat(paramString.substring(0, paramString.length() - 1)) / 100.0F * 255.0F);
    }
    return Integer.parseInt(paramString);
  }
  
  public final float a(String paramString, float paramFloat)
  {
    paramString = a(paramString);
    if (paramString == null) {
      return paramFloat;
    }
    try
    {
      float f = Float.parseFloat(paramString);
      return f;
    }
    catch (NumberFormatException paramString) {}
    return paramFloat;
  }
  
  public final String a(String paramString)
  {
    String str1 = null;
    if (a != null) {
      str1 = (String)a.a.get(paramString);
    }
    String str2 = str1;
    if (str1 == null) {
      str2 = fy.a(paramString, b);
    }
    return str2;
  }
  
  public final Float c(String paramString)
  {
    paramString = a(paramString);
    if (paramString == null) {
      return null;
    }
    try
    {
      float f = Float.parseFloat(paramString);
      return Float.valueOf(f);
    }
    catch (NumberFormatException paramString) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     fy.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */