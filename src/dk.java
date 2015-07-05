import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

@cd
public final class dk
{
  @cd
  public static <E> ArrayList<E> a(Iterable<? extends E> paramIterable)
  {
    ck.a(paramIterable);
    if ((paramIterable instanceof Collection)) {
      return new ArrayList(cu.a(paramIterable));
    }
    paramIterable = paramIterable.iterator();
    ArrayList localArrayList = new ArrayList();
    dj.a(localArrayList, paramIterable);
    return localArrayList;
  }
  
  @cd
  public static <E> ArrayList<E> a(E... paramVarArgs)
  {
    ck.a(paramVarArgs);
    int i = paramVarArgs.length;
    ct.a(i, "arraySize");
    long l = i;
    ArrayList localArrayList = new ArrayList(eg.a(i / 10 + (5L + l)));
    Collections.addAll(localArrayList, paramVarArgs);
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */