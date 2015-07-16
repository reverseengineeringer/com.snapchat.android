import java.util.Comparator;
import javax.annotation.Nullable;

@cd
public abstract class dx<T>
  implements Comparator<T>
{
  @cd
  public <S extends T> dx<S> a()
  {
    return new dv(this);
  }
  
  public abstract int compare(@Nullable T paramT1, @Nullable T paramT2);
}

/* Location:
 * Qualified Name:     dx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */