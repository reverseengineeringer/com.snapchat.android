import android.widget.TextView;

final class bwl$1
  extends bwq
{
  bwl$1(bwl parambwl, TextView paramTextView, String paramString1, String paramString2) {}
  
  public final void a(bwz parambwz)
  {
    if ((parambwz instanceof bxa))
    {
      long l = g;
      parambwz = String.format("%.2f", new Object[] { Float.valueOf((float)l / 1048576.0F) }) + " MB";
      a.setText(b + "\n" + c + " - " + parambwz);
    }
  }
}

/* Location:
 * Qualified Name:     bwl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */