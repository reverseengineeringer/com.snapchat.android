import android.widget.TextView;

final class bvk$1
  extends bvp
{
  bvk$1(bvk parambvk, TextView paramTextView, String paramString1, String paramString2) {}
  
  public final void a(bvy parambvy)
  {
    if ((parambvy instanceof bvz))
    {
      long l = g;
      parambvy = String.format("%.2f", new Object[] { Float.valueOf((float)l / 1048576.0F) }) + " MB";
      a.setText(b + "\n" + c + " - " + parambvy);
    }
  }
}

/* Location:
 * Qualified Name:     bvk.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */