.class public final Lbrj;
.super Lbrg;


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(Lbrg;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lbrg;-><init>(Lbrg;)V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lbrj;->d:I

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/http/util/CharArrayBuffer;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 40
    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(I)I

    move-result v1

    .line 41
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v2

    .line 43
    if-lez v1, :cond_0

    .line 48
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v1}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v1

    .line 49
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lbrj;->d:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 51
    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public final b()Lbrg;
    .locals 2

    .prologue
    .line 21
    iget v0, p0, Lbrj;->d:I

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lbrr;

    invoke-direct {v0, p0}, Lbrr;-><init>(Lbrg;)V

    .line 27
    :goto_0
    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lbrg;->b:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 27
    new-instance v0, Lbri;

    iget v1, p0, Lbrj;->d:I

    invoke-direct {v0, p0, v1}, Lbri;-><init>(Lbrj;I)V

    goto :goto_0
.end method

.method public final c()Lbrg;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lbrt;->d:Lbrt;

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x10

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x100

    return v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lbrg;->a:Lbrm;

    invoke-virtual {p0}, Lbrj;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lbrm;->b(I)V

    .line 87
    iget-object v0, p0, Lbrg;->a:Lbrm;

    sget-object v1, Lbrt;->d:Lbrt;

    invoke-interface {v0, v1}, Lbrm;->a(Lbrg;)V

    .line 88
    return-void
.end method
