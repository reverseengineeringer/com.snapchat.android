.class final Lcom/snapchat/android/fragments/signup/PickUsernameFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$6;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$6;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->l(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    .line 337
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$6;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getWidth()I

    move-result v4

    .line 339
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$6;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->n(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/HorizontalScrollView;

    move-result-object v5

    if-ge v3, v4, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$6;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->m(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)I

    move-result v0

    move v2, v0

    :goto_0
    if-ge v3, v4, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$6;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->m(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)I

    move-result v0

    :goto_1
    invoke-virtual {v5, v2, v1, v0, v1}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    .line 346
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$6;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->l(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 348
    sub-int v2, v3, v4

    if-lez v2, :cond_0

    sub-int v2, v3, v4

    iget-object v3, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$6;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->m(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_0

    const/4 v1, 0x1

    .line 351
    :cond_0
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v2, v1, :cond_1

    .line 352
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 353
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$6;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->l(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 339
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
