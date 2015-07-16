.class final Lnet/hockeyapp/android/FeedbackActivity$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/hockeyapp/android/FeedbackActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->a:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 591
    .line 592
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->a:Lnet/hockeyapp/android/FeedbackActivity;

    new-instance v3, Lbwr;

    invoke-direct {v3}, Lbwr;-><init>()V

    invoke-static {v0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->a(Lnet/hockeyapp/android/FeedbackActivity;Lbwr;)Lbwr;

    .line 594
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 595
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 596
    const-string v3, "parse_feedback_response"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lbwv;

    .line 597
    if-eqz v0, :cond_3

    .line 598
    iget-object v3, v0, Lbwv;->a:Ljava/lang/String;

    const-string v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 602
    iget-object v2, v0, Lbwv;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 604
    sget-object v2, Lbxj$a;->a:Lbxj;

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->a:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v3}, Lnet/hockeyapp/android/FeedbackActivity;->c(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lbwv;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lbxj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 606
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->a:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v2, v0}, Lnet/hockeyapp/android/FeedbackActivity;->a(Lnet/hockeyapp/android/FeedbackActivity;Lbwv;)V

    .line 607
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->a:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v0}, Lnet/hockeyapp/android/FeedbackActivity;->d(Lnet/hockeyapp/android/FeedbackActivity;)Z

    move v0, v1

    .line 617
    :goto_0
    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->a:Lnet/hockeyapp/android/FeedbackActivity;

    new-instance v2, Lnet/hockeyapp/android/FeedbackActivity$3$1;

    invoke-direct {v2, p0}, Lnet/hockeyapp/android/FeedbackActivity$3$1;-><init>(Lnet/hockeyapp/android/FeedbackActivity$3;)V

    invoke-virtual {v0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 628
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->a:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->a(Z)V

    .line 629
    return-void

    :cond_1
    move v0, v2

    .line 611
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method
