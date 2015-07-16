.class public Lkkkkkk/kkkxxk;
.super Lkkkkkk/xxkxxk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkkkkk/kkxkkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "kkkxxk"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lkkkkkk/xxkxxk;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    new-array v2, v1, [I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    return-void
.end method


# virtual methods
.method public bК041A041A041A041AК(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    new-array v5, v5, [C

    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_0

    aget-char v6, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v6, p2

    add-int/2addr v6, p3

    int-to-char v6, v6

    :try_start_1
    aput-char v6, v5, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    :try_start_2
    new-array v6, v3, [I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    div-int/2addr v0, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :cond_0
    :try_start_4
    new-instance v0, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v6

    goto :goto_0

    :catch_3
    move-exception v6

    goto :goto_1
.end method
