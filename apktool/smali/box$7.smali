.class final Lbox$7;
.super Lbnl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lboj;

.field final synthetic d:Lbox;


# direct methods
.method varargs constructor <init>(Lbox;Ljava/lang/String;[Ljava/lang/Object;ILboj;)V
    .locals 0

    .prologue
    .line 862
    iput-object p1, p0, Lbox$7;->d:Lbox;

    iput p4, p0, Lbox$7;->b:I

    iput-object p5, p0, Lbox$7;->c:Lboj;

    invoke-direct {p0, p2, p3}, Lbnl;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 864
    iget-object v0, p0, Lbox$7;->d:Lbox;

    invoke-static {v0}, Lbox;->j(Lbox;)Lbou;

    .line 865
    iget-object v1, p0, Lbox$7;->d:Lbox;

    monitor-enter v1

    .line 866
    :try_start_0
    iget-object v0, p0, Lbox$7;->d:Lbox;

    invoke-static {v0}, Lbox;->k(Lbox;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lbox$7;->b:I

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
