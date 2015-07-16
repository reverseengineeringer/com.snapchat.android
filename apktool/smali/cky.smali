.class public final Lcky;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcky$e;,
        Lcky$b;,
        Lcky$j;,
        Lcky$k;,
        Lcky$l;,
        Lcky$d;,
        Lcky$i;,
        Lcky$m;,
        Lcky$c;,
        Lcky$g;,
        Lcky$n;,
        Lcky$f;,
        Lcky$h;,
        Lcky$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcky;->a:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method static a(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 1189
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 1190
    const v0, 0xfffd

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1192
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1175
    instance-of v2, p0, Lckz;

    if-eqz v2, :cond_2

    .line 1176
    instance-of v2, p0, Lcky$b;

    if-eqz v2, :cond_0

    .line 1177
    check-cast p0, Lcky$b;

    iget-object v2, p0, Lcky$b;->b:[Lckz;

    if-eqz v2, :cond_1

    .line 1181
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1177
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1181
    goto :goto_0
.end method

.method private c(Lchj;II)Lcky;
    .locals 2

    .prologue
    .line 570
    if-nez p1, :cond_0

    .line 571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_0
    if-ge p3, p2, :cond_1

    move p3, p2

    .line 576
    :cond_1
    if-ltz p2, :cond_2

    if-gtz p3, :cond_3

    .line 577
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 579
    :cond_3
    new-instance v0, Lcky$d;

    invoke-direct {v0, p1, p2, p3}, Lcky$d;-><init>(Lchj;II)V

    invoke-virtual {p0, v0}, Lcky;->a(Ljava/lang/Object;)Lcky;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lckz;)V
    .locals 2

    .prologue
    .line 357
    if-nez p0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No parser supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    return-void
.end method

.method private e()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1138
    iget-object v0, p0, Lcky;->b:Ljava/lang/Object;

    .line 1140
    if-nez v0, :cond_3

    .line 1141
    iget-object v1, p0, Lcky;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1142
    iget-object v1, p0, Lcky;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1143
    iget-object v2, p0, Lcky;->a:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1145
    if-eqz v1, :cond_4

    .line 1146
    if-eq v1, v2, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 1154
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 1155
    new-instance v0, Lcky$b;

    iget-object v1, p0, Lcky;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcky$b;-><init>(Ljava/util/List;)V

    .line 1158
    :cond_2
    iput-object v0, p0, Lcky;->b:Ljava/lang/Object;

    .line 1161
    :cond_3
    return-object v0

    :cond_4
    move-object v0, v2

    .line 1150
    goto :goto_0
.end method


# virtual methods
.method public final a()Lckx;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 105
    invoke-direct {p0}, Lcky;->e()Ljava/lang/Object;

    move-result-object v1

    .line 107
    instance-of v0, v1, Lclb;

    if-eqz v0, :cond_3

    instance-of v0, v1, Lcky$b;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcky$b;

    iget-object v0, v0, Lcky$b;->a:[Lclb;

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    if-eqz v0, :cond_6

    move-object v0, v1

    .line 108
    check-cast v0, Lclb;

    .line 111
    :goto_1
    invoke-static {v1}, Lcky;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 112
    check-cast v1, Lckz;

    .line 114
    :goto_2
    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    .line 115
    :cond_0
    new-instance v2, Lckx;

    invoke-direct {v2, v0, v1}, Lckx;-><init>(Lclb;Lckz;)V

    return-object v2

    :cond_1
    move v0, v4

    .line 107
    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    .line 117
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Both printing and parsing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v1, v2

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_1
.end method

.method public final a(C)Lcky;
    .locals 1

    .prologue
    .line 397
    new-instance v0, Lcky$a;

    invoke-direct {v0, p1}, Lcky$a;-><init>(C)V

    invoke-virtual {p0, v0}, Lcky;->a(Ljava/lang/Object;)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcky;
    .locals 2

    .prologue
    .line 685
    invoke-static {}, Lchj;->c()Lchj;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lcky;->a(Lchj;II)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)Lcky;
    .locals 1

    .prologue
    .line 597
    invoke-static {}, Lchj;->d()Lchj;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcky;->c(Lchj;II)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lchj;)Lcky;
    .locals 2

    .prologue
    .line 534
    if-nez p1, :cond_0

    .line 535
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_0
    new-instance v0, Lcky$i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcky$i;-><init>(Lchj;Z)V

    invoke-virtual {p0, v0}, Lcky;->a(Ljava/lang/Object;)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lchj;I)Lcky;
    .locals 3

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_0
    if-gtz p2, :cond_1

    .line 468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal number of digits: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_1
    new-instance v0, Lcky$c;

    invoke-direct {v0, p1, p2}, Lcky$c;-><init>(Lchj;I)V

    invoke-virtual {p0, v0}, Lcky;->a(Ljava/lang/Object;)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lchj;II)Lcky;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 434
    if-nez p1, :cond_0

    .line 435
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    if-ge p3, p2, :cond_1

    move p3, p2

    .line 440
    :cond_1
    if-ltz p2, :cond_2

    if-gtz p3, :cond_3

    .line 441
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 443
    :cond_3
    const/4 v0, 0x1

    if-gt p2, v0, :cond_4

    .line 444
    new-instance v0, Lcky$n;

    invoke-direct {v0, p1, p3, v1}, Lcky$n;-><init>(Lchj;IZ)V

    invoke-virtual {p0, v0}, Lcky;->a(Ljava/lang/Object;)Lcky;

    move-result-object v0

    .line 446
    :goto_0
    return-object v0

    :cond_4
    new-instance v0, Lcky$g;

    invoke-direct {v0, p1, p3, v1, p2}, Lcky$g;-><init>(Lchj;IZI)V

    invoke-virtual {p0, v0}, Lcky;->a(Ljava/lang/Object;)Lcky;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lckx;)Lcky;
    .locals 2

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No formatter supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iget-object v0, p1, Lckx;->a:Lclb;

    iget-object v1, p1, Lckx;->b:Lckz;

    invoke-virtual {p0, v0, v1}, Lcky;->a(Lclb;Lckz;)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lckz;)Lcky;
    .locals 1

    .prologue
    .line 257
    invoke-static {p1}, Lcky;->c(Lckz;)V

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcky;->a(Lclb;Lckz;)Lcky;

    move-result-object v0

    return-object v0
.end method

.method final a(Lclb;Lckz;)Lcky;
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcky;->b:Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lcky;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lcky;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    return-object p0
.end method

.method final a(Ljava/lang/Object;)Lcky;
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcky;->b:Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcky;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v0, p0, Lcky;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcky;
    .locals 2

    .prologue
    .line 408
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 417
    new-instance v0, Lcky$h;

    invoke-direct {v0, p1}, Lcky$h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcky;->a(Ljava/lang/Object;)Lcky;

    move-result-object p0

    :goto_0
    :pswitch_0
    return-object p0

    .line 415
    :pswitch_1
    new-instance v0, Lcky$a;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lcky$a;-><init>(C)V

    invoke-virtual {p0, v0}, Lcky;->a(Ljava/lang/Object;)Lcky;

    move-result-object p0

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Z)Lcky;
    .locals 3

    .prologue
    .line 1118
    new-instance v0, Lcky$l;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, p1, p2, v2}, Lcky$l;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0}, Lcky;->a(Ljava/lang/Object;)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;ZI)Lcky;
    .locals 1

    .prologue
    .line 1091
    new-instance v0, Lcky$l;

    invoke-direct {v0, p1, p1, p2, p3}, Lcky$l;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0}, Lcky;->a(Ljava/lang/Object;)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final a([Lckz;)Lcky;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 305
    array-length v1, p1

    .line 312
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 313
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No parser supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    aget-object v0, p1, v0

    invoke-virtual {p0, v4, v0}, Lcky;->a(Lclb;Lckz;)Lcky;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    .line 319
    :cond_1
    new-array v2, v1, [Lckz;

    .line 321
    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_3

    .line 322
    aget-object v3, p1, v0

    aput-object v3, v2, v0

    if-nez v3, :cond_2

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incomplete parser array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    :cond_3
    aget-object v1, p1, v0

    aput-object v1, v2, v0

    .line 328
    new-instance v0, Lcky$e;

    invoke-direct {v0, v2}, Lcky$e;-><init>([Lckz;)V

    invoke-virtual {p0, v4, v0}, Lcky;->a(Lclb;Lckz;)Lcky;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(I)Lcky;
    .locals 2

    .prologue
    .line 705
    invoke-static {}, Lchj;->e()Lchj;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lcky;->a(Lchj;II)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final b(II)Lcky;
    .locals 1

    .prologue
    .line 807
    invoke-static {}, Lchj;->p()Lchj;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcky;->b(Lchj;II)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lchj;)Lcky;
    .locals 2

    .prologue
    .line 549
    if-nez p1, :cond_0

    .line 550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    new-instance v0, Lcky$i;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcky$i;-><init>(Lchj;Z)V

    invoke-virtual {p0, v0}, Lcky;->a(Ljava/lang/Object;)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lchj;II)Lcky;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 486
    if-nez p1, :cond_0

    .line 487
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    if-ge p3, p2, :cond_1

    move p3, p2

    .line 492
    :cond_1
    if-ltz p2, :cond_2

    if-gtz p3, :cond_3

    .line 493
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 495
    :cond_3
    if-gt p2, v1, :cond_4

    .line 496
    new-instance v0, Lcky$n;

    invoke-direct {v0, p1, p3, v1}, Lcky$n;-><init>(Lchj;IZ)V

    invoke-virtual {p0, v0}, Lcky;->a(Ljava/lang/Object;)Lcky;

    move-result-object v0

    .line 498
    :goto_0
    return-object v0

    :cond_4
    new-instance v0, Lcky$g;

    invoke-direct {v0, p1, p3, v1, p2}, Lcky$g;-><init>(Lchj;IZI)V

    invoke-virtual {p0, v0}, Lcky;->a(Ljava/lang/Object;)Lcky;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lckz;)Lcky;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    invoke-static {p1}, Lcky;->c(Lckz;)V

    .line 346
    const/4 v0, 0x2

    new-array v0, v0, [Lckz;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 347
    new-instance v1, Lcky$e;

    invoke-direct {v1, v0}, Lcky$e;-><init>([Lckz;)V

    invoke-virtual {p0, v2, v1}, Lcky;->a(Lclb;Lckz;)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lckz;
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Lcky;->e()Ljava/lang/Object;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcky;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    check-cast v0, Lckz;

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Lcky;
    .locals 3

    .prologue
    .line 614
    invoke-static {}, Lchj;->f()Lchj;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcky;->c(Lchj;II)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lcky;
    .locals 2

    .prologue
    .line 725
    invoke-static {}, Lchj;->g()Lchj;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lcky;->a(Lchj;II)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final c(II)Lcky;
    .locals 1

    .prologue
    .line 829
    invoke-static {}, Lchj;->s()Lchj;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcky;->b(Lchj;II)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcky;
    .locals 3

    .prologue
    .line 631
    invoke-static {}, Lchj;->g()Lchj;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcky;->c(Lchj;II)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)Lcky;
    .locals 2

    .prologue
    .line 765
    invoke-static {}, Lchj;->l()Lchj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcky;->a(Lchj;II)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final e(I)Lcky;
    .locals 2

    .prologue
    .line 775
    invoke-static {}, Lchj;->m()Lchj;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lcky;->a(Lchj;II)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final f(I)Lcky;
    .locals 2

    .prologue
    .line 785
    invoke-static {}, Lchj;->n()Lchj;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lcky;->a(Lchj;II)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final g(I)Lcky;
    .locals 2

    .prologue
    .line 795
    invoke-static {}, Lchj;->o()Lchj;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lcky;->a(Lchj;II)Lcky;

    move-result-object v0

    return-object v0
.end method

.method public final h(I)Lcky;
    .locals 2

    .prologue
    .line 817
    invoke-static {}, Lchj;->r()Lchj;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lcky;->a(Lchj;II)Lcky;

    move-result-object v0

    return-object v0
.end method
