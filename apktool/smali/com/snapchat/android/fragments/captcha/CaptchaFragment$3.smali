.class final Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafo;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;Lafo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->c:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->a:Lafo;

    iput-object p3, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 138
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->c:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 139
    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->a:Lafo;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lafo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v0, Lafo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafo$b;

    iget-boolean v0, v0, Lafo$b;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 141
    :cond_1
    new-instance v0, Lpd;

    iget-object v2, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->c:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-direct {v0, v2, v1, v3}, Lpd;-><init>(Ljava/lang/String;Ljava/util/List;Lpd$a;)V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpd;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->c:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setClickable(Z)V

    .line 144
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->c:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->b(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->c:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->b(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->c:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
