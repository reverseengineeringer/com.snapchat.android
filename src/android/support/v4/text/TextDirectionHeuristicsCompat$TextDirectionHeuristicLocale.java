package android.support.v4.text;

import java.util.Locale;

final class TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale
  extends TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl
{
  public static final TextDirectionHeuristicLocale INSTANCE = new TextDirectionHeuristicLocale();
  
  public TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale()
  {
    super(null);
  }
  
  protected final boolean defaultIsRtl()
  {
    return TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.text.TextDirectionHeuristicsCompat.TextDirectionHeuristicLocale
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */