.class public final Lcie;
.super Lcho;
.source "SourceFile"


# static fields
.field private static final F:Lcie;

.field private static final G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcgk;",
            "[",
            "Lcie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcie;->G:Ljava/util/Map;

    .line 74
    sget-object v0, Lcgk;->a:Lcgk;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcie;->a(Lcgk;I)Lcie;

    move-result-object v0

    sput-object v0, Lcie;->F:Lcie;

    .line 75
    return-void
.end method

.method private constructor <init>(Lcgf;I)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcho;-><init>(Lcgf;I)V

    .line 163
    return-void
.end method

.method public static a(Lcgk;I)Lcie;
    .locals 4

    .prologue
    .line 125
    if-nez p0, :cond_0

    .line 126
    invoke-static {}, Lcgk;->a()Lcgk;

    move-result-object p0

    .line 129
    :cond_0
    sget-object v2, Lcie;->G:Ljava/util/Map;

    monitor-enter v2

    .line 130
    :try_start_0
    sget-object v0, Lcie;->G:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcie;

    .line 131
    if-nez v0, :cond_1

    .line 132
    const/4 v0, 0x7

    new-array v0, v0, [Lcie;

    .line 133
    sget-object v1, Lcie;->G:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v1, v0

    .line 136
    add-int/lit8 v0, p1, -0x1

    :try_start_1
    aget-object v0, v1, v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    if-nez v0, :cond_2

    .line 142
    :try_start_2
    sget-object v0, Lcgk;->a:Lcgk;

    if-ne p0, v0, :cond_3

    .line 143
    new-instance v0, Lcie;

    const/4 v3, 0x0

    invoke-direct {v0, v3, p1}, Lcie;-><init>(Lcgf;I)V

    .line 149
    :goto_0
    add-int/lit8 v3, p1, -0x1

    aput-object v0, v1, v3

    .line 151
    :cond_2
    monitor-exit v2

    .line 152
    return-object v0

    .line 138
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid min days in first week: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 145
    :cond_3
    :try_start_3
    sget-object v0, Lcgk;->a:Lcgk;

    invoke-static {v0, p1}, Lcie;->a(Lcgk;I)Lcie;

    move-result-object v3

    .line 146
    new-instance v0, Lcie;

    invoke-static {v3, p0}, Lcig;->a(Lcgf;Lcgk;)Lcig;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Lcie;-><init>(Lcgf;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static b(Lcgk;)Lcie;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcie;->a(Lcgk;I)Lcie;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final N()I
    .locals 1

    .prologue
    .line 241
    const v0, -0x116babfe

    return v0
.end method

.method final O()I
    .locals 1

    .prologue
    .line 245
    const v0, 0x116bbb60

    return v0
.end method

.method final Q()J
    .locals 2

    .prologue
    .line 249
    const-wide v0, 0x758fac300L

    return-wide v0
.end method

.method final R()J
    .locals 2

    .prologue
    .line 253
    const-wide v0, 0x3ac7d6180L

    return-wide v0
.end method

.method final S()J
    .locals 2

    .prologue
    .line 257
    const-wide v0, 0x9cbf9040L

    return-wide v0
.end method

.method final T()J
    .locals 2

    .prologue
    .line 261
    const-wide v0, 0x1c453aba2980L

    return-wide v0
.end method

.method public final a(Lcgk;)Lcgf;
    .locals 1

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    invoke-static {}, Lcgk;->a()Lcgk;

    move-result-object p1

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcie;->a()Lcgk;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 201
    :goto_0
    return-object p0

    :cond_1
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcie;->a(Lcgk;I)Lcie;

    move-result-object p0

    goto :goto_0
.end method

.method protected final a(Lchj$a;)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lchj;->a:Lcgf;

    if-nez v0, :cond_0

    .line 266
    invoke-super {p0, p1}, Lcho;->a(Lchj$a;)V

    .line 268
    new-instance v0, Lcjq;

    iget-object v1, p1, Lchj$a;->E:Lcgh;

    invoke-direct {v0, p0, v1}, Lcjq;-><init>(Lcgf;Lcgh;)V

    iput-object v0, p1, Lchj$a;->E:Lcgh;

    .line 269
    new-instance v0, Lcjq;

    iget-object v1, p1, Lchj$a;->B:Lcgh;

    invoke-direct {v0, p0, v1}, Lcjq;-><init>(Lcgf;Lcgh;)V

    iput-object v0, p1, Lchj$a;->B:Lcgh;

    .line 271
    :cond_0
    return-void
.end method

.method final b(III)J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 207
    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Lcgo;

    invoke-static {}, Lcgi;->s()Lcgi;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3, v3}, Lcgo;-><init>(Lcgi;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcho;->b(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Lcgf;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcie;->F:Lcie;

    return-object v0
.end method

.method final c(I)Z
    .locals 1

    .prologue
    .line 211
    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d(I)J
    .locals 6

    .prologue
    .line 219
    add-int/lit16 v1, p1, -0x7b0

    .line 221
    if-gtz v1, :cond_1

    .line 224
    add-int/lit8 v0, v1, 0x3

    shr-int/lit8 v0, v0, 0x2

    .line 233
    :cond_0
    :goto_0
    int-to-long v2, v1

    const-wide/16 v4, 0x16d

    mul-long/2addr v2, v4

    int-to-long v0, v0

    add-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 237
    const-wide v2, 0xe71960800L

    sub-long/2addr v0, v2

    return-wide v0

    .line 226
    :cond_1
    shr-int/lit8 v0, v1, 0x2

    .line 228
    invoke-virtual {p0, p1}, Lcie;->c(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
