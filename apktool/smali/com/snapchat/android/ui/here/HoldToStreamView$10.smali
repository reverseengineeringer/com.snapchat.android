.class final Lcom/snapchat/android/ui/here/HoldToStreamView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/snapchat/android/ui/here/HoldToStreamView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/here/HoldToStreamView;Z)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iput-boolean p2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 773
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->d(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;->a:Z

    iget-boolean v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsDisplayingVideo:Z

    if-eq v2, v1, :cond_0

    iput-boolean v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsDisplayingVideo:Z

    invoke-static {}, Lzm;->a()Lzm;

    move-result-object v1

    iget-boolean v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    iget-boolean v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    iget-boolean v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsDisplayingVideo:Z

    invoke-virtual {v1, v0, v2, v3, v4}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;ZZZ)V

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iget-object v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Lcom/snapchat/android/ui/here/StreamView$a;

    iget-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;->a:Z

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/here/StreamView$a;->b(Z)V

    .line 777
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iget-object v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Lcom/snapchat/android/ui/here/StreamView$a;

    iget-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;->a:Z

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/here/StreamView$a;->c(Z)V

    .line 778
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->e(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    .line 779
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->f(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    .line 780
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;->a:Z

    if-eqz v0, :cond_2

    .line 781
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->g(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    .line 782
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iget-object v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Lcom/snapchat/android/ui/here/StreamView$a;

    invoke-interface {v0}, Lcom/snapchat/android/ui/here/StreamView$a;->p()V

    .line 786
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->i(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/snapchat/android/analytics/HereAnalytics;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;->a:Z

    iget-boolean v2, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mIsVideoIncoming:Z

    if-eq v2, v1, :cond_1

    iput-boolean v1, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mIsVideoIncoming:Z

    iget-boolean v2, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mIsVideoIncoming:Z

    if-eqz v2, :cond_3

    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "HERE_INCOMING_SESSION_START"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mVideoIncomingStart:J

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setIncomingVideo("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Ljava/lang/String;)V

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->invalidate()V

    .line 788
    return-void

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->h(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    goto :goto_0

    .line 786
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mVideoIncomingStart:J

    sub-long/2addr v2, v4

    new-instance v4, Lid;

    invoke-direct {v4}, Lid;-><init>()V

    long-to-double v6, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, v4, Lid;->view_time_sec:Ljava/lang/Double;

    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    new-instance v4, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v5, "HERE_INCOMING_SESSION_END"

    invoke-direct {v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "reason"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_1
.end method
