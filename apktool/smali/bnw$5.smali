.class final Lbnw$5;
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

.field final synthetic d:Z

.field final synthetic e:Lbnw;


# direct methods
.method varargs constructor <init>(Lbnw;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lbnw$5;->e:Lbnw;

    iput p4, p0, Lbnw$5;->b:I

    iput-object p5, p0, Lbnw$5;->c:Ljava/util/List;

    iput-boolean p6, p0, Lbnw$5;->d:Z

    invoke-direct {p0, p2, p3}, Lbmk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 821
    iget-object v0, p0, Lbnw$5;->e:Lbnw;

    invoke-static {v0}, Lbnw;->j(Lbnw;)Lbnt;

    move-result-object v0

    invoke-interface {v0}, Lbnt;->b()Z

    .line 823
    :try_start_0
    iget-object v0, p0, Lbnw$5;->e:Lbnw;

    iget-object v0, v0, Lbnw;->i:Lbnk;

    iget v1, p0, Lbnw$5;->b:I

    sget-object v2, Lbni;->l:Lbni;

    invoke-interface {v0, v1, v2}, Lbnk;->a(ILbni;)V

    .line 824
    iget-object v1, p0, Lbnw$5;->e:Lbnw;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :try_start_1
    iget-object v0, p0, Lbnw$5;->e:Lbnw;

    invoke-static {v0}, Lbnw;->k(Lbnw;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lbnw$5;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 827
    monitor-exit v1

    .line 831
    :goto_0
    return-void

    .line 827
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 831
    :catch_0
    move-exception v0

    goto :goto_0
.end method
