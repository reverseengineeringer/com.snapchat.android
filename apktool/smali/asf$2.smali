.class final Lasf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lasf;


# direct methods
.method constructor <init>(Lasf;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lasf$2;->a:Lasf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Laka;)V
    .locals 4

    .prologue
    .line 517
    iget-object v0, p0, Lasf$2;->a:Lasf;

    iget-object v1, v0, Lasf;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 518
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lasf$2;->a:Lasf;

    iget-object v3, v3, Lasf;->c:Laka;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lasf$2;->a:Lasf;

    invoke-virtual {v3}, Lasf;->f()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    .line 520
    iget-object v0, p0, Lasf$2;->a:Lasf;

    iget-object v0, v0, Lasf;->f:Lcom/squareup/otto/Bus;

    new-instance v2, Lbfj;

    iget-object v3, p0, Lasf$2;->a:Lasf;

    iget-object v3, v3, Lasf;->c:Laka;

    instance-of v3, v3, Lakl;

    invoke-direct {v2, v3}, Lbfj;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 521
    iget-object v0, p0, Lasf$2;->a:Lasf;

    sget-object v2, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->TIMER_EXPIRED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-virtual {v0, v2}, Lasf;->a(Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)Z

    .line 522
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Laka;J)V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lasf$2;->a:Lasf;

    invoke-virtual {v0, p2, p3}, Lasf;->a(J)V

    .line 510
    return-void
.end method

.method public final b(Laka;)V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method public final c(Laka;)V
    .locals 0

    .prologue
    .line 533
    return-void
.end method
