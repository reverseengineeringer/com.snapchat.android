.class final Lboy$c;
.super Lcat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lboy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lboy;


# direct methods
.method constructor <init>(Lboy;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lboy$c;->a:Lboy;

    invoke-direct {p0}, Lcat;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lboy$c;->a:Lboy;

    sget-object v1, Lboj;->l:Lboj;

    invoke-virtual {v0, v1}, Lboy;->b(Lboj;)V

    .line 596
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 599
    invoke-virtual {p0}, Lboy$c;->d()Z

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
