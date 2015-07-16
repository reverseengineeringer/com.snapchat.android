import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

@cd
public final class dt
{
  @cd
  public static <E> ArrayList<E> a(int paramInt)
  {
    cx.a(paramInt, "initialArraySize");
    return new ArrayList(paramInt);
  }
  
  @cd
  public static <E> ArrayList<E> a(Iterable<? extends E> paramIterable)
  {
    co.a(paramIterable);
    if ((paramIterable instanceof Collection)) {
      return new ArrayList(cy.a(paramIterable));
    }
    paramIterable = paramIterable.iterator();
    ArrayList localArrayList = new ArrayList();
    ds.a(localArrayList, paramIterable);
    return localArrayList;
  }
  
  @cd
  public static <E> ArrayList<E> a(E... paramVarArgs)
  {
    co.a(paramVarArgs);
    int i = paramVarArgs.length;
    cx.a(i, "arraySize");
    long l = i;
    ArrayList localArrayList = new ArrayList(ep.a(i / 10 + (5L + l)));
    Collections.addAll(localArrayList, paramVarArgs);
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */