import android.widget.Filter;
import android.widget.Filter.FilterResults;
import java.util.List;

public abstract class bge<T>
  extends Filter
{
  public final ban mExceptionReporter;
  protected final bge.a<T> mInterface;
  
  public bge(@chc ban paramban, @chc bge.a<T> parama)
  {
    mExceptionReporter = paramban;
    mInterface = parama;
  }
  
  @chd
  public abstract List<T> a(@chd String paramString);
  
  public void a(Exception paramException)
  {
    try
    {
      mExceptionReporter.b(paramException);
      return;
    }
    catch (Exception paramException)
    {
      throw new Error(paramException);
    }
  }
  
  protected final Filter.FilterResults performFiltering(@chd CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {
      return null;
    }
    Filter.FilterResults localFilterResults = new Filter.FilterResults();
    try
    {
      values = a(paramCharSequence.toString());
      return localFilterResults;
    }
    catch (Exception paramCharSequence)
    {
      a(paramCharSequence);
    }
    return localFilterResults;
  }
  
  protected final void publishResults(CharSequence paramCharSequence, @chd Filter.FilterResults paramFilterResults)
  {
    if (paramFilterResults == null) {}
    for (paramCharSequence = null;; paramCharSequence = (List)values)
    {
      mInterface.a(paramCharSequence);
      return;
    }
  }
  
  public static abstract interface a<E>
  {
    public abstract void a(@chd List<E> paramList);
  }
}

/* Location:
 * Qualified Name:     bge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */