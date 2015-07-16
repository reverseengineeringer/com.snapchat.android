.class public abstract Lbnc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lbmx;Ljava/lang/String;)Lbnc;
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lbnq;->c:Ljava/nio/charset/Charset;

    .line 47
    if-eqz p0, :cond_0

    .line 48
    iget-object v0, p0, Lbmx;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbmx;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 49
    :goto_0
    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lbnq;->c:Ljava/nio/charset/Charset;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbmx;->a(Ljava/lang/String;)Lbmx;

    move-result-object p0

    .line 54
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 55
    invoke-static {p0, v0}, Lbnc;->a(Lbmx;[B)Lbnc;

    move-result-object v0

    return-object v0

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lbmx;[B)Lbnc;
    .locals 6

    .prologue
    .line 60
    array-length v0, p1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v1, p1

    int-to-long v2, v1

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Lbnq;->a(JJ)V

    new-instance v1, Lbnc$1;

    invoke-direct {v1, p0, v0, p1}, Lbnc$1;-><init>(Lbmx;I[B)V

    return-object v1
.end method


# virtual methods
.method public abstract a()Lbmx;
.end method

.method public abstract a(Lcaw;)V
.end method

.method public b()J
    .locals 2

    .prologue
    .line 35
    const-wide/16 v0, -0x1

    return-wide v0
.end method
