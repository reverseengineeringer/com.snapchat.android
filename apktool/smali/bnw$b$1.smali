.class final Lbnw$b$1;
.super Lbmk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnw$b;->a(ZZILjava/util/List;Lbnm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lbnx;

.field final synthetic c:Lbnw$b;


# direct methods
.method varargs constructor <init>(Lbnw$b;Ljava/lang/String;[Ljava/lang/Object;Lbnx;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lbnw$b$1;->c:Lbnw$b;

    iput-object p4, p0, Lbnw$b$1;->b:Lbnx;

    invoke-direct {p0, p2, p3}, Lbmk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 642
    :try_start_0
    iget-object v0, p0, Lbnw$b$1;->c:Lbnw$b;

    iget-object v0, v0, Lbnw$b;->c:Lbnw;

    invoke-static {v0}, Lbnw;->f(Lbnw;)Lbnq;

    move-result-object v0

    iget-object v1, p0, Lbnw$b$1;->b:Lbnx;

    invoke-interface {v0, v1}, Lbnq;->a(Lbnx;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    return-void

    .line 643
    :catch_0
    move-exception v0

    .line 644
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
