.class final Lcom/snapchat/android/fragments/sendto/SendToFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/sendto/SendToFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/sendto/SendToFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$11;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 395
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$11;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$11;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/ui/window/WindowConfiguration;

    move-result-object v0

    .line 397
    sget-object v1, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BACKGROUND_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/window/WindowConfiguration;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    .line 398
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$11;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->p(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 400
    :cond_0
    return v2
.end method
