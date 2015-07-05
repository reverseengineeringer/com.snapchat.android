import com.snapchat.android.ui.caption.CaptionTypeEnums;
import java.util.HashMap;
import java.util.Map;

public final class apo
{
  public final CaptionTypeEnums a;
  private final boolean b;
  private final boolean c;
  private final boolean d;
  
  public apo(CaptionTypeEnums paramCaptionTypeEnums, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    a = paramCaptionTypeEnums;
    b = paramBoolean1;
    c = paramBoolean2;
    d = paramBoolean3;
  }
  
  public final Map<String, String> a()
  {
    HashMap localHashMap = new HashMap();
    Object localObject = a;
    switch (apo.1.a[localObject.ordinal()])
    {
    default: 
      localObject = "";
      localHashMap.put("caption", localObject);
      if (b)
      {
        localObject = "true";
        label71:
        localHashMap.put("free_move_mode", localObject);
        if (!c) {
          break label147;
        }
        localObject = "true";
        label91:
        localHashMap.put("color_mode", localObject);
        if (!d) {
          break label153;
        }
      }
      break;
    }
    label147:
    label153:
    for (localObject = "true";; localObject = "false")
    {
      localHashMap.put("scale_edited", localObject);
      return localHashMap;
      localObject = "DEFAULT";
      break;
      localObject = "BIG_TEXT";
      break;
      localObject = "BIG_TEXT_CENTER";
      break;
      localObject = "false";
      break label71;
      localObject = "false";
      break label91;
    }
  }
}

/* Location:
 * Qualified Name:     apo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */