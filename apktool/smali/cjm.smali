.class public final Lcjm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcjm$a;
    }
.end annotation


# instance fields
.field final a:[Lcjk;

.field private b:[Lcjm$a;


# direct methods
.method constructor <init>([Lcjk;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcjm;->a:[Lcjk;

    .line 36
    const/16 v0, 0x10

    new-array v0, v0, [Lcjm$a;

    iput-object v0, p0, Lcjm;->b:[Lcjm$a;

    .line 37
    return-void
.end method

.method private a(I)Lcjm;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-object v3, p0, Lcjm;->a:[Lcjk;

    .line 217
    array-length v4, v3

    .line 218
    if-lt p1, v4, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 222
    :cond_0
    add-int/lit8 v1, v4, -0x1

    new-array v5, v1, [Lcjk;

    move v2, v0

    move v1, v0

    .line 229
    :goto_0
    if-ge v2, v4, :cond_1

    .line 230
    if-eq v2, p1, :cond_2

    .line 231
    add-int/lit8 v0, v1, 0x1

    aget-object v6, v3, v2

    aput-object v6, v5, v1

    .line 229
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 235
    :cond_1
    new-instance v0, Lcjm;

    invoke-direct {v0, v5}, Lcjm;-><init>([Lcjk;)V

    return-object v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcjk;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcjk;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 49
    iget-object v8, p0, Lcjm;->b:[Lcjm$a;

    .line 50
    array-length v9, v8

    .line 51
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    move v2, v0

    .line 55
    :goto_1
    aget-object v0, v8, v2

    if-eqz v0, :cond_2

    .line 56
    iget-object v3, v0, Lcjm$a;->a:Ljava/lang/Class;

    if-ne v3, p1, :cond_1

    .line 57
    iget-object v5, v0, Lcjm$a;->b:Lcjk;

    .line 111
    :goto_2
    return-object v5

    .line 51
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v2, v9, -0x1

    and-int/2addr v0, v2

    goto :goto_0

    .line 59
    :cond_1
    add-int/lit8 v0, v2, 0x1

    if-lt v0, v9, :cond_15

    move v0, v1

    .line 60
    goto :goto_0

    .line 66
    :cond_2
    iget-object v3, p0, Lcjm;->a:[Lcjk;

    array-length v0, v3

    move v6, v0

    move-object v4, p0

    :goto_3
    add-int/lit8 v7, v6, -0x1

    if-ltz v7, :cond_7

    aget-object v6, v3, v7

    invoke-interface {v6}, Lcjk;->a()Ljava/lang/Class;

    move-result-object v10

    if-ne v10, p1, :cond_4

    move-object v5, v6

    .line 67
    :cond_3
    :goto_4
    new-instance v3, Lcjm$a;

    invoke-direct {v3, p1, v5}, Lcjm$a;-><init>(Ljava/lang/Class;Lcjk;)V

    .line 79
    invoke-virtual {v8}, [Lcjm$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcjm$a;

    check-cast v0, [Lcjm$a;

    .line 82
    aput-object v3, v0, v2

    move v2, v1

    .line 85
    :goto_5
    if-ge v2, v9, :cond_10

    .line 86
    aget-object v3, v0, v2

    if-nez v3, :cond_f

    .line 88
    iput-object v0, p0, Lcjm;->b:[Lcjm$a;

    goto :goto_2

    .line 66
    :cond_4
    if-eqz v10, :cond_5

    if-eqz p1, :cond_6

    invoke-virtual {v10, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    invoke-direct {v4, v7}, Lcjm;->a(I)Lcjm;

    move-result-object v4

    iget-object v3, v4, Lcjm;->a:[Lcjk;

    array-length v0, v3

    :cond_6
    move v6, v7

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    if-ne v0, v12, :cond_8

    aget-object v5, v3, v1

    goto :goto_4

    :cond_8
    move-object v6, v4

    move-object v4, v3

    move v3, v0

    :goto_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b

    aget-object v7, v4, v0

    invoke-interface {v7}, Lcjk;->a()Ljava/lang/Class;

    move-result-object v10

    move-object v7, v6

    move-object v6, v4

    move v4, v3

    move v13, v0

    move v0, v3

    move v3, v13

    :cond_9
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_a

    if-eq v0, v3, :cond_9

    aget-object v11, v6, v0

    invoke-interface {v11}, Lcjk;->a()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-direct {v7, v0}, Lcjm;->a(I)Lcjm;

    move-result-object v7

    iget-object v6, v7, Lcjm;->a:[Lcjk;

    array-length v4, v6

    add-int/lit8 v3, v4, -0x1

    goto :goto_7

    :cond_a
    move v0, v3

    move v3, v4

    move-object v4, v6

    move-object v6, v7

    goto :goto_6

    :cond_b
    if-ne v3, v12, :cond_c

    aget-object v5, v4, v1

    goto :goto_4

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find best converter for type \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" from remaining set: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    if-ge v1, v3, :cond_e

    aget-object v0, v4, v1

    invoke-interface {v0}, Lcjk;->a()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v6, :cond_d

    move-object v0, v5

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_d
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 95
    :cond_10
    shl-int/lit8 v4, v9, 0x1

    .line 96
    new-array v6, v4, [Lcjm$a;

    move v3, v1

    .line 97
    :goto_a
    if-ge v3, v9, :cond_14

    .line 98
    aget-object v7, v0, v3

    .line 99
    iget-object v2, v7, Lcjm$a;->a:Ljava/lang/Class;

    .line 100
    if-nez v2, :cond_12

    move v2, v1

    .line 101
    :cond_11
    :goto_b
    aget-object v8, v6, v2

    if-eqz v8, :cond_13

    .line 102
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v4, :cond_11

    move v2, v1

    .line 103
    goto :goto_b

    .line 100
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v8, v4, -0x1

    and-int/2addr v2, v8

    goto :goto_b

    .line 106
    :cond_13
    aput-object v7, v6, v2

    .line 97
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_a

    .line 110
    :cond_14
    iput-object v6, p0, Lcjm;->b:[Lcjm$a;

    goto/16 :goto_2

    :cond_15
    move v2, v0

    goto/16 :goto_1
.end method
