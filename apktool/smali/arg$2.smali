.class final Larg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Larg;


# direct methods
.method constructor <init>(Larg;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Larg$2;->a:Larg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Larg$2;->a:Larg;

    invoke-virtual {v0, p1, p2}, Larg;->a(J)V

    .line 512
    return-void
.end method

.method public final a(Laje;)V
    .locals 6

    .prologue
    .line 519
    iget-object v0, p0, Larg$2;->a:Larg;

    iget-object v1, v0, Larg;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    :try_start_0
    const-string v0, "MediaSnapViewSession"

    const-string v2, "SNAP-VIEW: timer finished for %s (active=%b)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Larg$2;->a:Larg;

    iget-object v5, v5, Larg;->c:Laje;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Larg$2;->a:Larg;

    invoke-virtual {v5}, Larg;->f()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    iget-object v0, p0, Larg$2;->a:Larg;

    iget-object v0, v0, Larg;->f:Lcom/squareup/otto/Bus;

    new-instance v2, Lbek;

    iget-object v3, p0, Larg$2;->a:Larg;

    iget-object v3, v3, Larg;->c:Laje;

    instance-of v3, v3, Lajr;

    invoke-direct {v2, v3}, Lbek;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 523
    iget-object v0, p0, Larg$2;->a:Larg;

    sget-object v2, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->TIMER_EXPIRED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-virtual {v0, v2}, Larg;->a(Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)Z

    .line 524
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Laje;)V
    .locals 0

    .prologue
    .line 530
    return-void
.end method
