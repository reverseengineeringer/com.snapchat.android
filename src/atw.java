import android.telephony.PhoneNumberUtils;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.text.style.URLSpan;
import android.util.Patterns;
import android.webkit.WebView;
import android.widget.TextView;
import com.snapchat.android.ui.FixTouchConsumeTextView;
import com.snapchat.android.util.chat.SnapchatUrlSpan;
import com.snapchat.android.util.chat.UrlType;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class atw
{
  public static final int ALL = 15;
  public static final int EMAIL_ADDRESSES = 2;
  public static final int MAP_ADDRESSES = 8;
  public static final int PHONE_NUMBERS = 4;
  public static final int WEB_URLS = 1;
  public static final atw.a sUrlMatchFilter = new atw.a()
  {
    public final boolean a(CharSequence paramAnonymousCharSequence, int paramAnonymousInt)
    {
      if (paramAnonymousInt == 0) {}
      while (paramAnonymousCharSequence.charAt(paramAnonymousInt - 1) != '@') {
        return true;
      }
      return false;
    }
  };
  
  private static final void a(TextView paramTextView)
  {
    MovementMethod localMovementMethod = paramTextView.getMovementMethod();
    if (((localMovementMethod == null) || (!(localMovementMethod instanceof LinkMovementMethod))) && (paramTextView.getLinksClickable())) {
      paramTextView.setMovementMethod(LinkMovementMethod.getInstance());
    }
  }
  
  private static final void a(ArrayList<aus> paramArrayList)
  {
    Collections.sort(paramArrayList, new Comparator()
    {
      public final boolean equals(Object paramAnonymousObject)
      {
        return false;
      }
    });
    int k = paramArrayList.size();
    int j = 0;
    aus localaus1;
    aus localaus2;
    int i;
    if (j < k - 1)
    {
      localaus1 = (aus)paramArrayList.get(j);
      localaus2 = (aus)paramArrayList.get(j + 1);
      if ((start <= start) && (end > start)) {
        if (end <= end) {
          i = j + 1;
        }
      }
    }
    for (;;)
    {
      if (i != -1)
      {
        paramArrayList.remove(i);
        k -= 1;
        break;
        if (end - start > end - start)
        {
          i = j + 1;
          continue;
        }
        if (end - start >= end - start) {
          break label178;
        }
        i = j;
        continue;
      }
      j += 1;
      break;
      return;
      label178:
      i = -1;
    }
  }
  
  private static final void a(ArrayList<aus> paramArrayList, Spannable paramSpannable)
  {
    paramSpannable = paramSpannable.toString();
    int i = 0;
    for (;;)
    {
      String str = WebView.findAddress(paramSpannable);
      aus localaus;
      if (str != null)
      {
        int j = paramSpannable.indexOf(str);
        if (j >= 0)
        {
          localaus = new aus();
          int k = str.length() + j;
          start = (j + i);
          end = (i + k);
          type = UrlType.MAP;
          paramSpannable = paramSpannable.substring(k);
          i += k;
        }
      }
      try
      {
        str = URLEncoder.encode(str, "UTF-8");
        url = ("geo:0,0?q=" + str);
        paramArrayList.add(localaus);
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
      return;
    }
  }
  
  private static final void a(ArrayList<aus> paramArrayList, Spannable paramSpannable, Pattern paramPattern, String[] paramArrayOfString, atw.a parama)
  {
    Matcher localMatcher = paramPattern.matcher(paramSpannable);
    int m;
    int n;
    aus localaus;
    int j;
    label69:
    int i;
    for (;;)
    {
      if (localMatcher.find())
      {
        m = localMatcher.start();
        n = localMatcher.end();
        if ((parama == null) || (parama.a(paramSpannable, m)))
        {
          localaus = new aus();
          paramPattern = localMatcher.group(0);
          int k = 0;
          j = 0;
          i = k;
          if (j >= paramArrayOfString.length) {
            break label231;
          }
          if (paramPattern.regionMatches(true, 0, paramArrayOfString[j], 0, paramArrayOfString[j].length()))
          {
            i = 1;
            if (paramPattern.regionMatches(false, 0, paramArrayOfString[j], 0, paramArrayOfString[j].length())) {
              break label231;
            }
            paramPattern = paramArrayOfString[j] + paramPattern.substring(paramArrayOfString[j].length());
            i = 1;
          }
        }
      }
    }
    label231:
    for (;;)
    {
      Object localObject = paramPattern;
      if (i == 0) {
        localObject = paramArrayOfString[0] + paramPattern;
      }
      url = ((String)localObject);
      start = m;
      end = n;
      paramArrayList.add(localaus);
      break;
      j += 1;
      break label69;
      return;
    }
  }
  
  private static boolean a(alj paramalj, Spannable paramSpannable)
  {
    Object localObject1 = (SnapchatUrlSpan[])paramSpannable.getSpans(0, paramSpannable.length(), SnapchatUrlSpan.class);
    int i = localObject1.length - 1;
    while (i >= 0)
    {
      paramSpannable.removeSpan(localObject1[i]);
      i -= 1;
    }
    localObject1 = new ArrayList();
    Object localObject2 = Patterns.WEB_URL;
    Object localObject3 = sUrlMatchFilter;
    a((ArrayList)localObject1, paramSpannable, (Pattern)localObject2, new String[] { "http://", "https://", "rtsp://" }, (atw.a)localObject3);
    a((ArrayList)localObject1, paramSpannable, Patterns.EMAIL_ADDRESS, new String[] { "mailto:" }, null);
    a((ArrayList)localObject1, paramSpannable);
    b((ArrayList)localObject1, paramSpannable);
    a((ArrayList)localObject1);
    if (((ArrayList)localObject1).size() == 0) {
      return false;
    }
    localObject1 = ((ArrayList)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (aus)((Iterator)localObject1).next();
      localObject3 = type;
      String str = url;
      i = start;
      int j = end;
      paramSpannable.setSpan(new SnapchatUrlSpan(str, paramalj, (UrlType)localObject3), i, j, 33);
    }
    return true;
  }
  
  public static final boolean a(alj paramalj, FixTouchConsumeTextView paramFixTouchConsumeTextView)
  {
    Object localObject = paramFixTouchConsumeTextView.getText();
    if ((localObject instanceof Spannable))
    {
      if (a(paramalj, (Spannable)localObject))
      {
        a(paramFixTouchConsumeTextView);
        return true;
      }
      return false;
    }
    localObject = SpannableString.valueOf((CharSequence)localObject);
    if (a(paramalj, (Spannable)localObject))
    {
      a(paramFixTouchConsumeTextView);
      paramFixTouchConsumeTextView.setText((CharSequence)localObject);
      return true;
    }
    return false;
  }
  
  private static final void b(ArrayList<aus> paramArrayList, Spannable paramSpannable)
  {
    paramSpannable = new ey.2(ey.a(), paramSpannable.toString(), Locale.getDefault().getCountry(), ey.a.a).iterator();
    while (paramSpannable.hasNext())
    {
      ew localew = (ew)paramSpannable.next();
      aus localaus = new aus();
      url = ("tel:" + PhoneNumberUtils.stripSeparators(b));
      start = a;
      end = localew.a();
      type = UrlType.TEL;
      paramArrayList.add(localaus);
    }
  }
  
  public static final boolean b(alj paramalj, FixTouchConsumeTextView paramFixTouchConsumeTextView)
  {
    if (((paramalj instanceof ale)) || (((paramalj instanceof ald)) && (mHasLinks)))
    {
      paramalj = (akw)paramalj;
      Object localObject1 = paramalj.aj();
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        return false;
      }
      localObject1 = new SpannableStringBuilder(Html.fromHtml((String)localObject1));
      Object[] arrayOfObject = ((SpannableStringBuilder)localObject1).getSpans(0, ((SpannableStringBuilder)localObject1).length(), Object.class);
      if ((arrayOfObject == null) || (arrayOfObject.length == 0)) {
        return false;
      }
      int j = arrayOfObject.length;
      int i = 0;
      while (i < j)
      {
        Object localObject2 = arrayOfObject[i];
        URLSpan localURLSpan = (URLSpan)localObject2;
        ((SpannableStringBuilder)localObject1).setSpan(new SnapchatUrlSpan(localURLSpan.getURL(), paramalj, UrlType.LINK), ((SpannableStringBuilder)localObject1).getSpanStart(localObject2), ((SpannableStringBuilder)localObject1).getSpanEnd(localObject2), 33);
        ((SpannableStringBuilder)localObject1).removeSpan(localURLSpan);
        i += 1;
      }
      paramFixTouchConsumeTextView.setText((CharSequence)localObject1);
      return true;
    }
    return false;
  }
  
  public static abstract interface a
  {
    public abstract boolean a(CharSequence paramCharSequence, int paramInt);
  }
}

/* Location:
 * Qualified Name:     atw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */