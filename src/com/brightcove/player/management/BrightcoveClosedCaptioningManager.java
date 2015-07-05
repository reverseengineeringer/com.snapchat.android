package com.brightcove.player.management;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Typeface;
import com.brightcove.player.captioning.BrightcoveClosedCaptioningStyle;
import com.brightcove.player.captioning.BrightcoveClosedCaptioningStyle.Builder;
import com.brightcove.player.captioning.BrightcoveClosedCaptioningTextView.EdgeAttribute;

public class BrightcoveClosedCaptioningManager
{
  public static final String PREFS_NAME = "ClosedCaptioningStyle";
  public static final String PREF_BACKGROUND_COLOR = "BackgroundColor";
  public static final String PREF_EDGE_ATTRIBUTE = "EdgeAttribute";
  public static final String PREF_EDGE_COLOR = "EdgeColor";
  public static final String PREF_HIGHLIGHT_COLOR = "HighlightColor";
  public static final String PREF_TEXT_COLOR = "TextColor";
  public static final String PREF_TEXT_SIZE = "TextSize";
  public static final String PREF_TYPEFACE = "Typeface";
  public static final String TAG = BrightcoveClosedCaptioningManager.class.getSimpleName();
  private static BrightcoveClosedCaptioningManager sInstance = null;
  private final Context context;
  private BrightcoveClosedCaptioningStyle style;
  
  private BrightcoveClosedCaptioningManager(Context paramContext)
  {
    context = paramContext.getApplicationContext();
    loadStyle();
  }
  
  public static BrightcoveClosedCaptioningManager getInstance(Context paramContext)
  {
    if (sInstance == null) {
      sInstance = new BrightcoveClosedCaptioningManager(paramContext);
    }
    return sInstance;
  }
  
  public BrightcoveClosedCaptioningStyle getStyle()
  {
    return style;
  }
  
  protected void loadStyle()
  {
    String.format("Loading CaptionsStyle from %s", new Object[] { "ClosedCaptioningStyle" });
    SharedPreferences localSharedPreferences = context.getSharedPreferences("ClosedCaptioningStyle", 0);
    BrightcoveClosedCaptioningStyle.Builder localBuilder = BrightcoveClosedCaptioningStyle.newBuilder(context);
    localBuilder.setBackgroundColor(localSharedPreferences.getInt("BackgroundColor", 0));
    localBuilder.setHighlightColor(localSharedPreferences.getInt("HighlightColor", 0));
    localBuilder.setTypeface(Typeface.defaultFromStyle(localSharedPreferences.getInt("Typeface", BrightcoveClosedCaptioningStyle.DEFAULT_TYPEFACE.getStyle())));
    localBuilder.setTextColor(localSharedPreferences.getInt("TextColor", -1));
    localBuilder.setTextSize(localSharedPreferences.getFloat("TextSize", 14.0F));
    localBuilder.setEdgeAttribute(BrightcoveClosedCaptioningTextView.EdgeAttribute.values()[localSharedPreferences.getInt("EdgeAttribute", BrightcoveClosedCaptioningStyle.DEFAULT_EDGE_ATTRIBUTE.ordinal())]);
    localBuilder.setEdgeColor(localSharedPreferences.getInt("EdgeColor", 0));
    style = localBuilder.create();
    String.format("CaptionsStyle is %s", new Object[] { style.toString() });
  }
  
  protected void persistStyle()
  {
    String.format("Writing CaptionsStyle to %s", new Object[] { "ClosedCaptioningStyle" });
    SharedPreferences.Editor localEditor = context.getSharedPreferences("ClosedCaptioningStyle", 0).edit();
    localEditor.putInt("BackgroundColor", style.backgroundColor);
    localEditor.putInt("HighlightColor", style.highlightColor);
    localEditor.putInt("Typeface", style.typeface.getStyle());
    localEditor.putInt("TextColor", style.textColor);
    localEditor.putFloat("TextSize", style.textSize);
    localEditor.putInt("EdgeAttribute", style.edgeAttribute.ordinal());
    localEditor.putInt("EdgeColor", style.edgeColor);
    localEditor.commit();
  }
  
  public void setStyle(BrightcoveClosedCaptioningStyle paramBrightcoveClosedCaptioningStyle)
  {
    style = paramBrightcoveClosedCaptioningStyle;
    persistStyle();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.management.BrightcoveClosedCaptioningManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */