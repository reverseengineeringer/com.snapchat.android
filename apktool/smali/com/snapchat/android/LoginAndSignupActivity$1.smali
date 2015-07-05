.class final Lcom/snapchat/android/LoginAndSignupActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/LoginAndSignupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/LoginAndSignupActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/LoginAndSignupActivity;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/snapchat/android/LoginAndSignupActivity$1;->a:Lcom/snapchat/android/LoginAndSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity$1;->a:Lcom/snapchat/android/LoginAndSignupActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LoginAndSignupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/snapchat/android/LoginAndSignupActivity$1;->a:Lcom/snapchat/android/LoginAndSignupActivity;

    invoke-static {v1}, Lcom/snapchat/android/LoginAndSignupActivity;->a(Lcom/snapchat/android/LoginAndSignupActivity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 45
    iget-object v1, p0, Lcom/snapchat/android/LoginAndSignupActivity$1;->a:Lcom/snapchat/android/LoginAndSignupActivity;

    invoke-static {v1}, Lcom/snapchat/android/LoginAndSignupActivity;->a(Lcom/snapchat/android/LoginAndSignupActivity;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 46
    iget-object v2, p0, Lcom/snapchat/android/LoginAndSignupActivity$1;->a:Lcom/snapchat/android/LoginAndSignupActivity;

    invoke-static {v2}, Lcom/snapchat/android/LoginAndSignupActivity;->a(Lcom/snapchat/android/LoginAndSignupActivity;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity$1;->a:Lcom/snapchat/android/LoginAndSignupActivity;

    invoke-static {v0}, Lcom/snapchat/android/LoginAndSignupActivity;->a(Lcom/snapchat/android/LoginAndSignupActivity;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 48
    sub-int/2addr v0, v1

    .line 52
    iget-object v1, p0, Lcom/snapchat/android/LoginAndSignupActivity$1;->a:Lcom/snapchat/android/LoginAndSignupActivity;

    invoke-static {v1}, Lcom/snapchat/android/LoginAndSignupActivity;->b(Lcom/snapchat/android/LoginAndSignupActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 53
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v0, :cond_0

    .line 54
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity$1;->a:Lcom/snapchat/android/LoginAndSignupActivity;

    invoke-static {v0}, Lcom/snapchat/android/LoginAndSignupActivity;->b(Lcom/snapchat/android/LoginAndSignupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    :cond_0
    return-void
.end method
