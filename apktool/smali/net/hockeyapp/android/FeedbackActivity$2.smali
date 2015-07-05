.class final Lnet/hockeyapp/android/FeedbackActivity$2;
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
    .line 537
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->a:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/16 v7, 0x40c

    const/4 v1, 0x1

    .line 540
    const/4 v0, 0x0

    .line 541
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->a:Lnet/hockeyapp/android/FeedbackActivity;

    new-instance v3, Lbvq;

    invoke-direct {v3}, Lbvq;-><init>()V

    invoke-static {v2, v3}, Lnet/hockeyapp/android/FeedbackActivity;->a(Lnet/hockeyapp/android/FeedbackActivity;Lbvq;)Lbvq;

    .line 543
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 544
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 545
    const-string v3, "feedback_response"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 546
    const-string v4, "feedback_status"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 547
    const-string v5, "request_type"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 548
    const-string v5, "send"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xc9

    if-eq v5, v6, :cond_2

    .line 550
    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->a:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v1}, Lnet/hockeyapp/android/FeedbackActivity;->a(Lnet/hockeyapp/android/FeedbackActivity;)Lbvq;

    move-result-object v1

    invoke-static {v7}, Lbvi;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lbvq;->a:Ljava/lang/String;

    .line 569
    :goto_0
    if-nez v0, :cond_1

    .line 570
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->a:Lnet/hockeyapp/android/FeedbackActivity;

    new-instance v1, Lnet/hockeyapp/android/FeedbackActivity$2$1;

    invoke-direct {v1, p0}, Lnet/hockeyapp/android/FeedbackActivity$2$1;-><init>(Lnet/hockeyapp/android/FeedbackActivity$2;)V

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 580
    :cond_1
    return-void

    .line 552
    :cond_2
    const-string v5, "fetch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x194

    if-eq v5, v6, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x1a6

    if-ne v4, v5, :cond_4

    .line 554
    :cond_3
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->a:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v0}, Lnet/hockeyapp/android/FeedbackActivity;->b(Lnet/hockeyapp/android/FeedbackActivity;)V

    move v0, v1

    .line 555
    goto :goto_0

    .line 557
    :cond_4
    if-eqz v3, :cond_5

    .line 558
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->a:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v0, v3, v2}, Lnet/hockeyapp/android/FeedbackActivity;->a(Lnet/hockeyapp/android/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 559
    goto :goto_0

    .line 562
    :cond_5
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->a:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v1}, Lnet/hockeyapp/android/FeedbackActivity;->a(Lnet/hockeyapp/android/FeedbackActivity;)Lbvq;

    move-result-object v1

    const/16 v2, 0x40d

    invoke-static {v2}, Lbvi;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lbvq;->a:Ljava/lang/String;

    goto :goto_0

    .line 566
    :cond_6
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->a:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v1}, Lnet/hockeyapp/android/FeedbackActivity;->a(Lnet/hockeyapp/android/FeedbackActivity;)Lbvq;

    move-result-object v1

    invoke-static {v7}, Lbvi;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lbvq;->a:Ljava/lang/String;

    goto :goto_0
.end method
