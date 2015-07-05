import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.widget.EditText;
import com.snapchat.android.SnapchatApplication;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.inject.Inject;

public final class xu
{
  public static int a(@cgb Editable paramEditable)
  {
    int i = 0;
    Iterator localIterator = b(paramEditable).iterator();
    for (;;)
    {
      int j = i;
      if (localIterator.hasNext())
      {
        Object localObject = localIterator.next();
        j = c(paramEditable.subSequence(paramEditable.getSpanStart(localObject), paramEditable.getSpanEnd(localObject)).toString());
        if (j == -1) {
          j = -1;
        }
      }
      else
      {
        return j;
      }
      i += j;
    }
  }
  
  public static int a(@cgb EditText paramEditText)
  {
    Editable localEditable = paramEditText.getText();
    xu.a locala = a(localEditable.toString(), paramEditText.getSelectionEnd());
    Object localObject = locala;
    if (locala == null)
    {
      paramEditText = b(localEditable.toString(), paramEditText.getSelectionEnd());
      localObject = paramEditText;
      if (paramEditText == null) {
        throw new IllegalStateException("check containsCashtagAtSelection first");
      }
    }
    return e(localEditable.subSequence(a + 1, b).toString().replace(",", ""));
  }
  
  @cgc
  public static xu.a a(@cgb String paramString, int paramInt)
  {
    xu.a locala;
    if ((paramInt < 0) || (paramInt > paramString.length()))
    {
      locala = null;
      if (locala != null) {
        break label142;
      }
      locala = null;
    }
    for (;;)
    {
      return locala;
      int j = -1;
      int i = 0;
      while (i < paramInt)
      {
        if (paramString.substring(i, i + 1).matches("\\s")) {
          j = i;
        }
        i += 1;
      }
      int k = j + 1;
      j = paramString.length();
      i = paramString.length() - 1;
      while (i >= paramInt)
      {
        if (paramString.substring(i, i + 1).matches("\\s")) {
          j = i;
        }
        i -= 1;
      }
      if (k > j)
      {
        locala = new xu.a(paramInt, paramInt);
        break;
      }
      locala = new xu.a(k, j);
      break;
      label142:
      paramString = paramString.substring(a, b);
      if ((a(paramString)) && (c(paramString) >= 100)) {}
      for (paramInt = 1; paramInt == 0; paramInt = 0) {
        return null;
      }
    }
  }
  
  public static void a(@cgb EditText paramEditText, int paramInt)
  {
    Editable localEditable = paramEditText.getText();
    Object localObject2 = a(localEditable.toString(), paramInt);
    Object localObject1;
    if (localObject2 == null)
    {
      localObject2 = b(localEditable.toString(), paramInt);
      if (localObject2 != null)
      {
        paramInt = e(localEditable.toString().substring(a + 1, b));
        if (paramInt <= 0)
        {
          localObject1 = null;
          paramInt = localEditable.length();
          localEditable.replace(a, b, (CharSequence)localObject1);
          b += localEditable.length() - paramInt;
          localObject1 = localObject2;
        }
      }
    }
    for (;;)
    {
      localObject2 = b(localEditable.subSequence(a, b).toString());
      Object localObject3 = new Rect();
      paramEditText.getPaint().getTextBounds((String)localObject2, 0, ((String)localObject2).length(), (Rect)localObject3);
      paramInt = (int)(((Rect)localObject3).width() + avh.a(8.0F, SnapchatApplication.b()));
      float f = avh.a(24.0F, SnapchatApplication.b());
      int i = (int)((((Rect)localObject3).height() - f) / 2.0F) - 5;
      Object localObject4 = paramEditText.getPaint();
      int j = (int)f;
      int k = ((Rect)localObject3).height();
      localObject3 = new Paint((Paint)localObject4);
      ((Paint)localObject3).setTextAlign(Paint.Align.CENTER);
      ((Paint)localObject3).setColor(-1);
      localObject4 = Bitmap.createBitmap(paramInt, j, Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas((Bitmap)localObject4);
      Drawable localDrawable = SnapchatApplication.b().getResources().getDrawable(2130837678);
      localDrawable.setBounds(0, 0, paramInt, j);
      localDrawable.draw(localCanvas);
      f = (k + j) / 2;
      localCanvas.drawText((String)localObject2, paramInt / 2, f, (Paint)localObject3);
      localObject2 = new BitmapDrawable(SnapchatApplication.b().getResources(), (Bitmap)localObject4);
      ((Drawable)localObject2).setBounds(0, i, ((Drawable)localObject2).getIntrinsicWidth(), ((Drawable)localObject2).getIntrinsicHeight() + i);
      localEditable.setSpan(new ImageSpan((Drawable)localObject2, 0), a, b, 33);
      if (b != localEditable.length()) {
        break label627;
      }
      localEditable.insert(b, " ");
      paramEditText.setSelection(b + 1);
      return;
      if (paramInt % 100 == 0) {}
      for (localObject1 = String.format("%d", new Object[] { Integer.valueOf(paramInt / 100) });; localObject1 = String.format("%.2f", new Object[] { Float.valueOf(paramInt / 100.0F) }))
      {
        localObject1 = "$" + (String)localObject1;
        break;
      }
      throw new IllegalStateException("check containsCashtagAtSelection first");
      localObject3 = localEditable.subSequence(a, b).toString();
      localObject1 = localObject2;
      if (((String)localObject3).matches("\\$(?i:pi|e)"))
      {
        localObject1 = d((String)localObject3);
        paramInt = localEditable.length();
        localEditable.replace(a, b, (CharSequence)localObject1);
        b += localEditable.length() - paramInt;
        localObject1 = localObject2;
      }
    }
    label627:
    paramEditText.setSelection(b);
  }
  
  public static boolean a(@cgb String paramString)
  {
    return (paramString.matches("\\$([1-9],\\d{3})(\\.\\d{0,2})?")) || (paramString.matches("\\$([1-9]\\d{0,3}|0?)?(\\.(\\d{0,2}))?")) || (paramString.matches("\\$(?i:pi|e)"));
  }
  
  @cgb
  private static String b(@cgb String paramString)
  {
    String str;
    if (paramString.indexOf(".") == paramString.length() - 1) {
      str = paramString.substring(0, paramString.length() - 1);
    }
    do
    {
      return str;
      str = paramString;
    } while (paramString.indexOf(".") != paramString.length() - 2);
    return paramString + "0";
  }
  
  @cgb
  public static List<ImageSpan> b(@cgb Editable paramEditable)
  {
    return Arrays.asList(paramEditable.getSpans(0, paramEditable.length(), ImageSpan.class));
  }
  
  @cgc
  public static xu.a b(@cgb String paramString, int paramInt)
  {
    if ((paramInt > paramString.length()) || (paramInt < 0)) {
      return null;
    }
    int i;
    int j;
    if ((paramInt < paramString.length()) && (paramString.charAt(paramInt) == '$'))
    {
      i = paramInt;
      j = i;
    }
    for (;;)
    {
      if (j >= paramString.length() + 1) {
        break label169;
      }
      String str = paramString.substring(i, j);
      int k;
      if (str.matches("\\$\\(.*\\)"))
      {
        k = e(str.substring(1));
        if ((k != -1) && (k >= 100)) {
          k = 1;
        }
      }
      for (;;)
      {
        if (k != 0)
        {
          if (paramInt <= j)
          {
            return new xu.a(i, j);
            j = paramString.substring(0, paramInt).lastIndexOf('$');
            if (j >= 0)
            {
              i = j;
              if (j <= 0) {
                break;
              }
              i = j;
              if (paramString.substring(j - 1, j).matches("\\s")) {
                break;
              }
            }
            return null;
            k = 0;
            continue;
          }
          return null;
        }
      }
      j += 1;
    }
    label169:
    return null;
  }
  
  private static int c(@cgb String paramString)
  {
    int j = 0;
    if ("$.".equals(paramString)) {}
    do
    {
      return -1;
      paramString = b(d(paramString)).replace(",", "");
      paramString = Pattern.compile("\\$([1-9]\\d{0,3}|0?)?(\\.(\\d{0,2}))?").matcher(paramString);
    } while (!paramString.matches());
    String str = paramString.group(1);
    try
    {
      boolean bool = TextUtils.isEmpty(str);
      int i;
      if (bool)
      {
        i = 0;
        paramString = paramString.group(3);
        if (!TextUtils.isEmpty(paramString)) {
          break label95;
        }
      }
      for (;;)
      {
        return i * 100 + j;
        i = Integer.parseInt(str);
        break;
        label95:
        j = Integer.parseInt(paramString);
      }
      return -1;
    }
    catch (NumberFormatException paramString) {}
  }
  
  private static String d(@cgb String paramString)
  {
    return paramString.replaceAll("(?i)PI", "3.14").replaceAll("(?i)E", "2.72");
  }
  
  private static int e(@cgb String paramString)
  {
    int i = 1;
    paramString = d(paramString);
    boolean bool = Pattern.compile("([^\\d\\s\\.\\)]|^)\\s*\\+").matcher(paramString).find();
    if (!paramString.matches("[\\s\\d+/*\\-()\\.×÷]*")) {}
    while ((i != 0) || (bool))
    {
      return -1;
      i = 0;
    }
    paramString = paramString.replace('×', '*').replace('÷', '/');
    bwz localbwz = new bwz('\'', false, false, false, false);
    try
    {
      double d = Math.round(Double.parseDouble(localbwz.a(paramString, true)) * 100.0D);
      if (d > 2.147483647E9D) {
        throw new NumberFormatException();
      }
      i = Double.valueOf(d).intValue();
      return i;
    }
    catch (NumberFormatException paramString) {}catch (bwx paramString) {}
    return -1;
  }
  
  public static final class a
  {
    public int a;
    public int b;
    
    a(int paramInt1, int paramInt2)
    {
      a = paramInt1;
      b = paramInt2;
    }
  }
}

/* Location:
 * Qualified Name:     xu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */