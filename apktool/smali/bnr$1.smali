.class final Lbnr$1;
.super Lcaa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnr;-><init>(Lbzw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbnr;


# direct methods
.method constructor <init>(Lbnr;Lcaj;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lbnr$1;->a:Lbnr;

    invoke-direct {p0, p2}, Lcaa;-><init>(Lcaj;)V

    return-void
.end method


# virtual methods
.method public final a(Lbzu;J)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 56
    iget-object v2, p0, Lbnr$1;->a:Lbnr;

    iget v2, v2, Lbnr;->a:I

    if-nez v2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-wide v0

    .line 57
    :cond_1
    iget-object v2, p0, Lbnr$1;->a:Lbnr;

    iget v2, v2, Lbnr;->a:I

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, p1, v2, v3}, Lcaa;->a(Lbzu;J)J

    move-result-wide v2

    .line 58
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 59
    iget-object v0, p0, Lbnr$1;->a:Lbnr;

    iget-object v1, p0, Lbnr$1;->a:Lbnr;

    iget v1, v1, Lbnr;->a:I

    int-to-long v4, v1

    sub-long/2addr v4, v2

    long-to-int v1, v4

    iput v1, v0, Lbnr;->a:I

    move-wide v0, v2

    .line 60
    goto :goto_0
.end method
