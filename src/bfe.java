import android.widget.Filter;
import android.widget.Filter.FilterResults;
import java.util.List;

public abstract class bfe<T>
  extends Filter
{
  public final azo mExceptionReporter;
  protected final bfe.a<T> mInterface;
  
  public bfe(@cgb azo paramazo, @cgb bfe.a<T> parama)
  {
    mExceptionReporter = paramazo;
    mInterface = parama;
  }
  
  @cgc
  public abstract List<T> a(@cgc String paramString);
  
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
  
  protected final Filter.FilterResults performFiltering(@cgc CharSequence paramCharSequence)
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
  
  protected final void publishResults(CharSequence paramCharSequence, @cgc Filter.FilterResults paramFilterResults)
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
    public abstract void a(@cgc List<E> paramList);
  }
}

/* Location:
 * Qualified Name:     bfe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */