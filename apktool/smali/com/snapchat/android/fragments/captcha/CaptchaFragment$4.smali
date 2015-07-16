.class final Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/ProgressBar;

.field final synthetic d:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->d:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->a:Landroid/widget/Button;

    iput-object p3, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->c:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->d:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 172
    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->b:Landroid/widget/TextView;

    const v1, 0x7f0c005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 176
    new-instance v0, Lpd;

    iget-object v1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->d:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-direct {v0, v1}, Lpd;-><init>(Lpd$b;)V

    sget-object v1, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpd;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
