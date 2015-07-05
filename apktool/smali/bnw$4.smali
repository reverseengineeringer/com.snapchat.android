.class final Lbnw$4;
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

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lbnw;


# direct methods
.method varargs constructor <init>(Lbnw;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lbnw$4;->d:Lbnw;

    iput p4, p0, Lbnw$4;->b:I

    iput-object p5, p0, Lbnw$4;->c:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lbmk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 803
    iget-object v0, p0, Lbnw$4;->d:Lbnw;

    invoke-static {v0}, Lbnw;->j(Lbnw;)Lbnt;

    move-result-object v0

    invoke-interface {v0}, Lbnt;->a()Z

    .line 805
    :try_start_0
    iget-object v0, p0, Lbnw$4;->d:Lbnw;

    iget-object v0, v0, Lbnw;->i:Lbnk;

    iget v1, p0, Lbnw$4;->b:I

    sget-object v2, Lbni;->l:Lbni;

    invoke-interface {v0, v1, v2}, Lbnk;->a(ILbni;)V

    .line 807
    iget-object v1, p0, Lbnw$4;->d:Lbnw;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :try_start_1
    iget-object v0, p0, Lbnw$4;->d:Lbnw;

    invoke-static {v0}, Lbnw;->k(Lbnw;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lbnw$4;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 809
    monitor-exit v1

    .line 813
    :goto_0
    return-void

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 813
    :catch_0
    move-exception v0

    goto :goto_0
.end method
