.class final Lbnx$c;
.super Lbzs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lbnx;


# direct methods
.method constructor <init>(Lbnx;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lbnx$c;->a:Lbnx;

    invoke-direct {p0}, Lbzs;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lbnx$c;->a:Lbnx;

    sget-object v1, Lbni;->l:Lbni;

    invoke-virtual {v0, v1}, Lbnx;->b(Lbni;)V

    .line 596
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 599
    invoke-virtual {p0}, Lbnx$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_0
    return-void
.end method
