import android.content.Context;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.StorySnapLogbook.ActionState;

final class api$1
  extends pc
{
  api$1(api paramapi, StorySnapLogbook paramStorySnapLogbook1, Context paramContext, StorySnapLogbook paramStorySnapLogbook2, api.a parama)
  {
    super(paramStorySnapLogbook1, paramContext);
  }
  
  protected final void a(alp paramalp)
  {
    super.a(paramalp);
    b.b();
  }
  
  protected final void a(String paramString, int paramInt)
  {
    super.a(paramString, paramInt);
    a.a(StorySnapLogbook.ActionState.READY);
    b.d();
  }
  
  protected final void b(alp paramalp)
  {
    super.b(paramalp);
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
 * Qualified Name:     api.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */