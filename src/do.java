import java.util.Comparator;
import javax.annotation.Nullable;

@cd
public abstract class do<T>
  implements Comparator<T>
{
  @cd
  public <S extends T> do<S> a()
  {
    return new dm(this);
  }
  
  public abstract int compare(@Nullable T paramT1, @Nullable T paramT2);
}

/* Location:
 * Qualified Name:     do
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */