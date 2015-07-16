.class final Lea;
.super Ldm;
.source "SourceFile"


# annotations
.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lea$a;,
        Lea$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ldm",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient a:[Ldn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ldn",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient b:[Ldn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ldn",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient c:I


# direct methods
.method varargs constructor <init>([Ldn$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ldn$a",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lea;-><init>([Ldn$a;B)V

    .line 45
    return-void
.end method

.method private constructor <init>([Ldn$a;B)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ldn$a",
            "<**>;B)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ldm;-><init>()V

    .line 54
    new-array v0, v7, [Ldn;

    iput-object v0, p0, Lea;->a:[Ldn;

    .line 55
    invoke-static {}, Ldh;->a()I

    move-result v0

    .line 56
    new-array v1, v0, [Ldn;

    iput-object v1, p0, Lea;->b:[Ldn;

    .line 57
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lea;->c:I

    move v3, v2

    .line 58
    :goto_0
    if-ge v3, v7, :cond_4

    .line 60
    aget-object v0, p1, v3

    .line 61
    invoke-virtual {v0}, Ldn$a;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 62
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ldh;->a(I)I

    move-result v1

    iget v4, p0, Lea;->c:I

    and-int v6, v1, v4

    .line 63
    iget-object v1, p0, Lea;->b:[Ldn;

    aget-object v4, v1, v6

    .line 65
    if-nez v4, :cond_0

    .line 68
    :goto_1
    iget-object v1, p0, Lea;->b:[Ldn;

    aput-object v0, v1, v6

    .line 69
    iget-object v1, p0, Lea;->a:[Ldn;

    aput-object v0, v1, v3

    .line 70
    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ldn;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_3
    const-string v6, "key"

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x22

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Multiple entries with same "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    new-instance v1, Lea$b;

    invoke-direct {v1, v0, v4}, Lea$b;-><init>(Ldn;Ldn;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 70
    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Ldn;->a()Ldn;

    move-result-object v1

    move-object v4, v1

    goto :goto_2

    .line 58
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 72
    :cond_4
    return-void
.end method

.method static synthetic a(Lea;)[Ldn;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lea;->a:[Ldn;

    return-object v0
.end method


# virtual methods
.method final b()Ldr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldr",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Lea$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lea$a;-><init>(Lea;B)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 152
    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-object v0

    .line 155
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ldh;->a(I)I

    move-result v1

    iget v2, p0, Lea;->c:I

    and-int/2addr v1, v2

    .line 156
    iget-object v2, p0, Lea;->b:[Ldn;

    aget-object v1, v2, v1

    .line 157
    :goto_1
    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1}, Ldn;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 167
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    invoke-virtual {v1}, Ldn;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {v1}, Ldn;->a()Ldn;

    move-result-object v1

    goto :goto_1
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lea;->a:[Ldn;

    array-length v0, v0

    return v0
.end method
