.class final Lblf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lcgb;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lblf;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method static b(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/io/BufferedReader;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 56
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "\"main\" .*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "  \\| .*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v2, "AppNotRespondingError\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :goto_0
    if-eqz v0, :cond_3

    const-string v2, " *"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Ljava/io/BufferedReader;)J
    .locals 9
    .param p1    # Ljava/io/BufferedReader;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 43
    const-string v0, ""

    .line 46
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 47
    if-nez v1, :cond_0

    const-wide/16 v0, -0x1

    .line 49
    :goto_1
    return-wide v0

    .line 48
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cmd line: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lblf;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 49
    const-string v1, "----- .*at "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, " -----"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v8

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Lcjv;->a(Ljava/lang/String;)Lcjw;

    move-result-object v3

    invoke-virtual {v3}, Lcjw;->b()Lcjy;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcjw;->b(Lcgf;)Lcgf;

    move-result-object v0

    new-instance v4, Lcjz;

    iget-object v5, v3, Lcjw;->c:Ljava/util/Locale;

    iget-object v6, v3, Lcjw;->f:Ljava/lang/Integer;

    iget v7, v3, Lcjw;->g:I

    invoke-direct {v4, v0, v5, v6, v7}, Lcjz;-><init>(Lcgf;Ljava/util/Locale;Ljava/lang/Integer;I)V

    invoke-interface {v1, v4, v2, v8}, Lcjy;->a(Lcjz;Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v1, v5, :cond_7

    invoke-virtual {v4, v2}, Lcjz;->a(Ljava/lang/String;)J

    move-result-wide v6

    iget-boolean v1, v3, Lcjw;->d:Z

    if-eqz v1, :cond_2

    iget-object v1, v4, Lcjz;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, v4, Lcjz;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcgk;->a(I)Lcgk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcgf;->a(Lcgk;)Lcgf;

    move-result-object v0

    :cond_1
    :goto_2
    new-instance v1, Lcgg;

    invoke-direct {v1, v6, v7, v0}, Lcgg;-><init>(JLcgf;)V

    iget-object v0, v3, Lcjw;->e:Lcgk;

    if-eqz v0, :cond_6

    iget-object v0, v3, Lcjw;->e:Lcgk;

    iget-object v2, v1, Lchg;->b:Lcgf;

    invoke-virtual {v2, v0}, Lcgf;->a(Lcgk;)Lcgf;

    move-result-object v0

    invoke-static {v0}, Lcgj;->a(Lcgf;)Lcgf;

    move-result-object v2

    iget-object v0, v1, Lchg;->b:Lcgf;

    if-ne v2, v0, :cond_3

    move-object v0, v1

    :goto_3
    iget-wide v0, v0, Lchg;->a:J

    goto/16 :goto_1

    :cond_2
    iget-object v1, v4, Lcjz;->b:Lcgk;

    if-eqz v1, :cond_1

    iget-object v1, v4, Lcjz;->b:Lcgk;

    invoke-virtual {v0, v1}, Lcgf;->a(Lcgk;)Lcgf;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v0, Lcgg;

    iget-wide v4, v1, Lchg;->a:J

    invoke-direct {v0, v4, v5, v2}, Lcgg;-><init>(JLcgf;)V

    goto :goto_3

    :cond_4
    xor-int/lit8 v0, v1, -0x1

    :goto_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v2, v0}, Lckb;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object v0, v1

    .line 51
    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4
.end method
