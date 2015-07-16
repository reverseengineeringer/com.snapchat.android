.class final Lcav$1;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcav;->e()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcav;


# direct methods
.method constructor <init>(Lcav;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcav$1;->a:Lcav;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcav$1;->a:Lcav;

    iget-wide v0, v0, Lcav;->b:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public final read()I
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcav$1;->a:Lcav;

    iget-wide v0, v0, Lcav;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcav$1;->a:Lcav;

    invoke-virtual {v0}, Lcav;->f()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcav$1;->a:Lcav;

    invoke-virtual {v0, p1, p2, p3}, Lcav;->a([BII)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcav$1;->a:Lcav;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
