import android.content.Context;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.StorySnapLogbook.ActionState;

final class aom$1
  extends ol
{
  aom$1(aom paramaom, StorySnapLogbook paramStorySnapLogbook1, Context paramContext, StorySnapLogbook paramStorySnapLogbook2, aom.a parama)
  {
    super(paramStorySnapLogbook1, paramContext);
  }
  
  protected final void a(aku paramaku)
  {
    super.a(paramaku);
    b.b();
  }
  
  protected final void a(String paramString, int paramInt)
  {
    super.a(paramString, paramInt);
    a.a(StorySnapLogbook.ActionState.READY);
    b.d();
  }
  
  protected final void b(aku paramaku)
  {
    super.b(paramaku);
    a.a(StorySnapLogbook.ActionState.DELETED);
    b.c();
  }
  
  protected final void onPreExecute()
  {
    super.onPreExecute();
    a.a(StorySnapLogbook.ActionState.DELETING);
    b.a();
  }
}

/* Location:
 * Qualified Name:     aom.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */