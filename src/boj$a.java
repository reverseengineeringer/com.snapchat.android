import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

final class boj$a<M>
  extends WeakReference<M>
{
  final boj a;
  
  public boj$a(boj paramboj, M paramM, ReferenceQueue<? super M> paramReferenceQueue)
  {
    super(paramM, paramReferenceQueue);
    a = paramboj;
  }
}

/* Location:
 * Qualified Name:     boj.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */