import android.text.Html;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.style.TypefaceSpan;
import android.widget.TextView;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.emoji.Emoji;
import java.io.UnsupportedEncodingException;

public final class bbj
{
  private static final String FAKE_FRIENDMOJIS = a(Emoji.HEAVY_BLACK_HEART) + " " + a(Emoji.SMILING_FACE_WITH_SMILING_EYES) + " " + a(Emoji.WHITE_MEDIUM_STAR) + " " + a(Emoji.SMIRKING_FACE) + " " + a(Emoji.GRINNING_FACE_WITH_SMILING_EYES) + " " + a(Emoji.SMILING_FACE_WITH_SUNGLASSES) + " " + a(Emoji.CLAPPING_HANDS_SIGN) + " " + a(Emoji.FIRE) + " " + a(Emoji.YELLOW_HEART);
  private static int SMILEY_FACE_CODE_POINT = 9786;
  private static final String TAG = "EmojiUtils";
  
  public static CharSequence a(Emoji paramEmoji)
  {
    try
    {
      paramEmoji = Html.fromHtml(new String(paramEmoji.getBytes(), "UTF-8"));
      return paramEmoji;
    }
    catch (UnsupportedEncodingException paramEmoji) {}
    return "";
  }
  
  public static final String a()
  {
    return FAKE_FRIENDMOJIS;
  }
  
  public static void a(@chc TextView paramTextView, @chc String paramString)
  {
    if (ayh.a())
    {
      Object localObject = paramTextView.getText();
      if ((!TextUtils.isEmpty((CharSequence)localObject)) && ((localObject instanceof Spannable)))
      {
        String str = ((CharSequence)localObject).toString();
        localObject = (Spannable)localObject;
        int i = 0;
        while (i < str.length())
        {
          if (str.codePointAt(i) == SMILEY_FACE_CODE_POINT) {
            ((Spannable)localObject).setSpan(new TypefaceSpan(paramString), i, i + 1, 0);
          }
          i += 1;
        }
        paramTextView.setText((CharSequence)localObject);
      }
    }
  }
  
  public static boolean b()
  {
    boolean bool2 = false;
    boolean bool3 = ava.a(SharedPreferenceKey.DEVELOPER_OPTIONS_FAKE_FRIENDMOJI_ENABLED.getKey(), false);
    boolean bool1 = bool2;
    if (ReleaseManager.f())
    {
      bool1 = bool2;
      if (bool3) {
        bool1 = true;
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     bbj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */