.class final Lbnw$7;
.super Lbmk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lbni;

.field final synthetic d:Lbnw;


# direct methods
.method varargs constructor <init>(Lbnw;Ljava/lang/String;[Ljava/lang/Object;ILbni;)V
    .locals 0

    .prologue
    .line 862
    iput-object p1, p0, Lbnw$7;->d:Lbnw;

    iput p4, p0, Lbnw$7;->b:I

    iput-object p5, p0, Lbnw$7;->c:Lbni;

    invoke-direct {p0, p2, p3}, Lbmk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 864
    iget-object v0, p0, Lbnw$7;->d:Lbnw;

    invoke-static {v0}, Lbnw;->j(Lbnw;)Lbnt;

    move-result-object v0

    invoke-interface {v0}, Lbnt;->c()V

    .line 865
    iget-object v1, p0, Lbnw$7;->d:Lbnw;

    monitor-enter v1

    .line 866
    :try_start_0
    iget-object v0, p0, Lbnw$7;->d:Lbnw;

    invoke-static {v0}, Lbnw;->k(Lbnw;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lbnw$7;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 867
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
