.class final Lbos$1;
.super Lcbb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbos;-><init>(Lcax;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbos;


# direct methods
.method constructor <init>(Lbos;Lcbk;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lbos$1;->a:Lbos;

    invoke-direct {p0, p2}, Lcbb;-><init>(Lcbk;)V

    return-void
.end method


# virtual methods
.method public final a(Lcav;J)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 56
    iget-object v2, p0, Lbos$1;->a:Lbos;

    iget v2, v2, Lbos;->a:I

    if-nez v2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-wide v0

    .line 57
    :cond_1
    iget-object v2, p0, Lbos$1;->a:Lbos;

    iget v2, v2, Lbos;->a:I

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, p1, v2, v3}, Lcbb;->a(Lcav;J)J

    move-result-wide v2

    .line 58
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 59
    iget-object v0, p0, Lbos$1;->a:Lbos;

    iget-object v1, p0, Lbos$1;->a:Lbos;

    iget v1, v1, Lbos;->a:I

    int-to-long v4, v1

    sub-long/2addr v4, v2

    long-to-int v1, v4

    iput v1, v0, Lbos;->a:I

    move-wide v0, v2

    .line 60
    goto :goto_0
.end method
