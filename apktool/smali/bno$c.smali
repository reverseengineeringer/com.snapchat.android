.class final Lbno$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:Lbnn$a;

.field private final b:Lbzw;

.field private final c:Lbno$a;

.field private final d:Z


# direct methods
.method constructor <init>(Lbzw;Z)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lbno$c;->b:Lbzw;

    .line 97
    iput-boolean p2, p0, Lbno$c;->d:Z

    .line 98
    new-instance v0, Lbno$a;

    iget-object v1, p0, Lbno$c;->b:Lbzw;

    invoke-direct {v0, v1}, Lbno$a;-><init>(Lbzw;)V

    iput-object v0, p0, Lbno$c;->c:Lbno$a;

    .line 99
    new-instance v0, Lbnn$a;

    iget-object v1, p0, Lbno$c;->c:Lbno$a;

    invoke-direct {v0, v1}, Lbnn$a;-><init>(Lcaj;)V

    iput-object v0, p0, Lbno$c;->a:Lbnn$a;

    .line 100
    return-void
.end method

.method private a(ISBI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lbnl;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x80

    const/16 v5, 0x40

    .line 205
    iget-object v0, p0, Lbno$c;->c:Lbno$a;

    iget-object v1, p0, Lbno$c;->c:Lbno$a;

    iput p1, v1, Lbno$a;->d:I

    iput p1, v0, Lbno$a;->a:I

    .line 206
    iget-object v0, p0, Lbno$c;->c:Lbno$a;

    iput-short p2, v0, Lbno$a;->e:S

    .line 207
    iget-object v0, p0, Lbno$c;->c:Lbno$a;

    iput-byte p3, v0, Lbno$a;->b:B

    .line 208
    iget-object v0, p0, Lbno$c;->c:Lbno$a;

    iput p4, v0, Lbno$a;->c:I

    .line 212
    iget-object v0, p0, Lbno$c;->a:Lbnn$a;

    :goto_0
    iget-object v1, v0, Lbnn$a;->b:Lbzw;

    invoke-interface {v1}, Lbzw;->d()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lbnn$a;->b:Lbzw;

    invoke-interface {v1}, Lbzw;->f()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v6, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit16 v2, v1, 0x80

    if-ne v2, v6, :cond_4

    const/16 v2, 0x7f

    invoke-virtual {v0, v1, v2}, Lbnn$a;->a(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lbnn$a;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lbnn;->a()[Lbnl;

    move-result-object v2

    aget-object v1, v2, v1

    iget-object v2, v0, Lbnn$a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lbnn;->a()[Lbnl;

    move-result-object v2

    array-length v2, v2

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Lbnn$a;->a(I)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v3, v0, Lbnn$a;->e:[Lbnl;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_3

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Header index too large "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, v0, Lbnn$a;->a:Ljava/util/List;

    iget-object v3, v0, Lbnn$a;->e:[Lbnl;

    aget-object v2, v3, v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-ne v1, v5, :cond_5

    invoke-virtual {v0}, Lbnn$a;->b()Lbzx;

    move-result-object v1

    invoke-static {v1}, Lbnn;->a(Lbzx;)Lbzx;

    move-result-object v1

    invoke-virtual {v0}, Lbnn$a;->b()Lbzx;

    move-result-object v2

    new-instance v3, Lbnl;

    invoke-direct {v3, v1, v2}, Lbnl;-><init>(Lbzx;Lbzx;)V

    invoke-virtual {v0, v3}, Lbnn$a;->a(Lbnl;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 v2, v1, 0x40

    if-ne v2, v5, :cond_6

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Lbnn$a;->a(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lbnn$a;->b(I)Lbzx;

    move-result-object v1

    invoke-virtual {v0}, Lbnn$a;->b()Lbzx;

    move-result-object v2

    new-instance v3, Lbnl;

    invoke-direct {v3, v1, v2}, Lbnl;-><init>(Lbzx;Lbzx;)V

    invoke-virtual {v0, v3}, Lbnn$a;->a(Lbnl;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit8 v2, v1, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_9

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Lbnn$a;->a(II)I

    move-result v1

    iput v1, v0, Lbnn$a;->d:I

    iget v1, v0, Lbnn$a;->d:I

    if-ltz v1, :cond_7

    iget v1, v0, Lbnn$a;->d:I

    iget v2, v0, Lbnn$a;->c:I

    if-le v1, v2, :cond_8

    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid dynamic table size update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lbnn$a;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-virtual {v0}, Lbnn$a;->a()V

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x10

    if-eq v1, v2, :cond_a

    if-nez v1, :cond_b

    :cond_a
    invoke-virtual {v0}, Lbnn$a;->b()Lbzx;

    move-result-object v1

    invoke-static {v1}, Lbnn;->a(Lbzx;)Lbzx;

    move-result-object v1

    invoke-virtual {v0}, Lbnn$a;->b()Lbzx;

    move-result-object v2

    iget-object v3, v0, Lbnn$a;->a:Ljava/util/List;

    new-instance v4, Lbnl;

    invoke-direct {v4, v1, v2}, Lbnl;-><init>(Lbzx;Lbzx;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lbnn$a;->a(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lbnn$a;->b(I)Lbzx;

    move-result-object v1

    invoke-virtual {v0}, Lbnn$a;->b()Lbzx;

    move-result-object v2

    iget-object v3, v0, Lbnn$a;->a:Ljava/util/List;

    new-instance v4, Lbnl;

    invoke-direct {v4, v1, v2}, Lbnl;-><init>(Lbzx;Lbzx;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 213
    :cond_c
    iget-object v0, p0, Lbno$c;->a:Lbnn$a;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lbnn$a;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v0, Lbnn$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object v1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v0}, Lbzw;->h()I

    .line 241
    iget-object v0, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v0}, Lbzw;->f()B

    .line 244
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    iget-boolean v0, p0, Lbno$c;->d:Z

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lbno$c;->b:Lbzw;

    invoke-static {}, Lbno;->a()Lbzx;

    move-result-object v1

    iget-object v1, v1, Lbzx;->c:[B

    array-length v1, v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lbzw;->c(J)Lbzx;

    move-result-object v0

    .line 105
    invoke-static {}, Lbno;->b()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lbno;->b()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lbzx;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    :cond_2
    invoke-static {}, Lbno;->a()Lbzx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbzx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    const-string v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lbzx;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a(Lbnj$a;)Z
    .locals 11

    .prologue
    const/16 v10, 0x4000

    const/16 v9, 0x8

    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 113
    :try_start_0
    iget-object v0, p0, Lbno$c;->b:Lbzw;

    const-wide/16 v2, 0x9

    invoke-interface {v0, v2, v3}, Lbzw;->a(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    iget-object v0, p0, Lbno$c;->b:Lbzw;

    invoke-static {v0}, Lbno;->a(Lbzw;)I

    move-result v0

    .line 131
    if-ltz v0, :cond_0

    if-le v0, v10, :cond_2

    .line 132
    :cond_0
    const-string v2, "FRAME_SIZE_ERROR: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 115
    :catch_0
    move-exception v0

    move v6, v1

    .line 180
    :cond_1
    :goto_0
    return v6

    .line 134
    :cond_2
    iget-object v2, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v2}, Lbzw;->f()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 135
    iget-object v3, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v3}, Lbzw;->f()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v5, v3

    .line 136
    iget-object v3, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v3}, Lbzw;->h()I

    move-result v3

    const v7, 0x7fffffff

    and-int/2addr v3, v7

    .line 137
    invoke-static {}, Lbno;->b()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lbno;->b()Ljava/util/logging/Logger;

    move-result-object v7

    invoke-static {v6, v3, v0, v2, v5}, Lbno$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 139
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 178
    iget-object v1, p0, Lbno$c;->b:Lbzw;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lbzw;->f(J)V

    goto :goto_0

    .line 141
    :pswitch_0
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_4

    move v4, v6

    :goto_1
    and-int/lit8 v2, v5, 0x20

    if-eqz v2, :cond_5

    move v2, v6

    :goto_2
    if-eqz v2, :cond_6

    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    move v4, v1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    and-int/lit8 v2, v5, 0x8

    if-eqz v2, :cond_7

    iget-object v1, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v1}, Lbzw;->f()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    :cond_7
    invoke-static {v0, v5, v1}, Lbno;->a(IBS)I

    move-result v0

    iget-object v2, p0, Lbno$c;->b:Lbzw;

    invoke-interface {p1, v4, v3, v2, v0}, Lbnj$a;->a(ZILbzw;I)V

    iget-object v0, p0, Lbno$c;->b:Lbzw;

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lbzw;->f(J)V

    goto :goto_0

    .line 145
    :pswitch_1
    if-nez v3, :cond_8

    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_8
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_a

    move v2, v6

    :goto_3
    and-int/lit8 v4, v5, 0x8

    if-eqz v4, :cond_b

    iget-object v4, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v4}, Lbzw;->f()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    :goto_4
    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_9

    invoke-direct {p0}, Lbno$c;->b()V

    add-int/lit8 v0, v0, -0x5

    :cond_9
    invoke-static {v0, v5, v4}, Lbno;->a(IBS)I

    move-result v0

    invoke-direct {p0, v0, v4, v5, v3}, Lbno$c;->a(ISBI)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lbnm;->d:Lbnm;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lbnj$a;->a(ZZILjava/util/List;Lbnm;)V

    goto/16 :goto_0

    :cond_a
    move v2, v1

    goto :goto_3

    :cond_b
    move v4, v1

    goto :goto_4

    .line 149
    :pswitch_2
    const/4 v2, 0x5

    if-eq v0, v2, :cond_c

    const-string v2, "TYPE_PRIORITY length: %d != 5"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    if-nez v3, :cond_d

    const-string v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_d
    invoke-direct {p0}, Lbno$c;->b()V

    goto/16 :goto_0

    .line 153
    :pswitch_3
    if-eq v0, v4, :cond_e

    const-string v2, "TYPE_RST_STREAM length: %d != 4"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_e
    if-nez v3, :cond_f

    const-string v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_f
    iget-object v0, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v0}, Lbzw;->h()I

    move-result v0

    invoke-static {v0}, Lbni;->b(I)Lbni;

    move-result-object v2

    if-nez v2, :cond_10

    const-string v2, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_10
    invoke-interface {p1, v3, v2}, Lbnj$a;->a(ILbni;)V

    goto/16 :goto_0

    .line 157
    :pswitch_4
    if-eqz v3, :cond_11

    const-string v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_11
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_12

    if-eqz v0, :cond_1

    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_12
    rem-int/lit8 v2, v0, 0x6

    if-eqz v2, :cond_13

    const-string v2, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_13
    new-instance v5, Lbnu;

    invoke-direct {v5}, Lbnu;-><init>()V

    move v3, v1

    :goto_5
    if-ge v3, v0, :cond_16

    iget-object v2, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v2}, Lbzw;->g()S

    move-result v2

    iget-object v7, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v7}, Lbzw;->h()I

    move-result v7

    packed-switch v2, :pswitch_data_1

    const-string v0, "PROTOCOL_ERROR invalid settings id: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_5
    if-eqz v7, :cond_14

    if-eq v7, v6, :cond_14

    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_6
    move v2, v4

    :cond_14
    :pswitch_7
    invoke-virtual {v5, v2, v1, v7}, Lbnu;->a(III)Lbnu;

    add-int/lit8 v2, v3, 0x6

    move v3, v2

    goto :goto_5

    :pswitch_8
    const/4 v2, 0x7

    if-gez v7, :cond_14

    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_9
    if-lt v7, v10, :cond_15

    const v8, 0xffffff

    if-le v7, v8, :cond_14

    :cond_15
    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_16
    invoke-interface {p1, v1, v5}, Lbnj$a;->a(ZLbnu;)V

    invoke-virtual {v5}, Lbnu;->a()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lbno$c;->a:Lbnn$a;

    invoke-virtual {v5}, Lbnu;->a()I

    move-result v1

    iput v1, v0, Lbnn$a;->c:I

    iput v1, v0, Lbnn$a;->d:I

    invoke-virtual {v0}, Lbnn$a;->a()V

    goto/16 :goto_0

    .line 161
    :pswitch_a
    if-nez v3, :cond_17

    const-string v0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_17
    and-int/lit8 v2, v5, 0x8

    if-eqz v2, :cond_18

    iget-object v1, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v1}, Lbzw;->f()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    :cond_18
    iget-object v2, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v2}, Lbzw;->h()I

    move-result v2

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    add-int/lit8 v0, v0, -0x4

    invoke-static {v0, v5, v1}, Lbno;->a(IBS)I

    move-result v0

    invoke-direct {p0, v0, v1, v5, v3}, Lbno$c;->a(ISBI)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lbnj$a;->a(ILjava/util/List;)V

    goto/16 :goto_0

    .line 165
    :pswitch_b
    if-eq v0, v9, :cond_19

    const-string v2, "TYPE_PING length != 8: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_19
    if-eqz v3, :cond_1a

    const-string v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1a
    iget-object v0, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v0}, Lbzw;->h()I

    move-result v0

    iget-object v2, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v2}, Lbzw;->h()I

    move-result v2

    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_1b

    move v1, v6

    :cond_1b
    invoke-interface {p1, v1, v0, v2}, Lbnj$a;->a(ZII)V

    goto/16 :goto_0

    .line 169
    :pswitch_c
    if-ge v0, v9, :cond_1c

    const-string v2, "TYPE_GOAWAY length < 8: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1c
    if-eqz v3, :cond_1d

    const-string v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1d
    iget-object v2, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v2}, Lbzw;->h()I

    move-result v2

    iget-object v3, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v3}, Lbzw;->h()I

    move-result v3

    add-int/lit8 v4, v0, -0x8

    invoke-static {v3}, Lbni;->b(I)Lbni;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1e
    sget-object v0, Lbzx;->b:Lbzx;

    if-lez v4, :cond_1f

    iget-object v0, p0, Lbno$c;->b:Lbzw;

    int-to-long v4, v4

    invoke-interface {v0, v4, v5}, Lbzw;->c(J)Lbzx;

    move-result-object v0

    :cond_1f
    invoke-interface {p1, v2, v0}, Lbnj$a;->a(ILbzx;)V

    goto/16 :goto_0

    .line 173
    :pswitch_d
    if-eq v0, v4, :cond_20

    const-string v2, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_20
    iget-object v0, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v0}, Lbzw;->h()I

    move-result v0

    int-to-long v4, v0

    const-wide/32 v8, 0x7fffffff

    and-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-nez v0, :cond_21

    const-string v0, "windowSizeIncrement was 0"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lbno;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_21
    invoke-interface {p1, v3, v4, v5}, Lbnj$a;->a(IJ)V

    goto/16 :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 157
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lbno$c;->b:Lbzw;

    invoke-interface {v0}, Lbzw;->close()V

    .line 360
    return-void
.end method
