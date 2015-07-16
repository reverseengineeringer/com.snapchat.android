.class public final Lft;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:[D


# instance fields
.field public a:I

.field private b:C

.field private c:Ljava/lang/CharSequence;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 368
    const/16 v0, 0x80

    new-array v0, v0, [D

    sput-object v0, Lft;->e:[D

    .line 371
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lft;->e:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 372
    sget-object v1, Lft;->e:[D

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lft;->c:Ljava/lang/CharSequence;

    .line 27
    iput v1, p0, Lft;->a:I

    .line 28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lft;->d:I

    .line 29
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lft;->b:C

    .line 30
    return-void
.end method

.method private static a(C)V
    .locals 3

    .prologue
    .line 339
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected char \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e()C
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lft;->a:I

    iget v1, p0, Lft;->d:I

    if-ge v0, v1, :cond_0

    .line 34
    iget v0, p0, Lft;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lft;->a:I

    .line 36
    :cond_0
    iget v0, p0, Lft;->a:I

    iget v1, p0, Lft;->d:I

    if-ne v0, v1, :cond_1

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lft;->c:Ljava/lang/CharSequence;

    iget v1, p0, Lft;->a:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 54
    :goto_0
    iget v0, p0, Lft;->a:I

    iget v1, p0, Lft;->d:I

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lft;->c:Ljava/lang/CharSequence;

    iget v1, p0, Lft;->a:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 56
    sparse-switch v0, :sswitch_data_0

    .line 66
    :cond_0
    return-void

    .line 61
    :sswitch_0
    invoke-virtual {p0}, Lft;->b()V

    goto :goto_0

    .line 56
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 44
    :goto_0
    iget v0, p0, Lft;->a:I

    iget v1, p0, Lft;->d:I

    if-ge v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lft;->c:Ljava/lang/CharSequence;

    iget v1, p0, Lft;->a:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lft;->b()V

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lft;->e()C

    move-result v0

    iput-char v0, p0, Lft;->b:C

    .line 71
    return-void
.end method

.method public final c()F
    .locals 11

    .prologue
    const/16 v10, 0x9

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 377
    invoke-virtual {p0}, Lft;->a()V

    .line 378
    iget-char v0, p0, Lft;->b:C

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    :goto_0
    iget-char v3, p0, Lft;->b:C

    packed-switch v3, :pswitch_data_1

    :pswitch_1
    const/high16 v0, 0x7fc00000    # NaNf

    .line 379
    :goto_1
    invoke-direct {p0}, Lft;->f()V

    .line 380
    return v0

    :pswitch_2
    move v0, v1

    .line 378
    :goto_2
    invoke-direct {p0}, Lft;->e()C

    move-result v3

    iput-char v3, p0, Lft;->b:C

    goto :goto_0

    :pswitch_3
    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    :goto_3
    iget-char v8, p0, Lft;->b:C

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_2

    invoke-direct {p0}, Lft;->e()C

    move-result v8

    iput-char v8, p0, Lft;->b:C

    iget-char v8, p0, Lft;->b:C

    packed-switch v8, :pswitch_data_2

    if-nez v4, :cond_2

    iget-char v0, p0, Lft;->b:C

    invoke-static {v0}, Lft;->a(C)V

    move v0, v7

    goto :goto_1

    :pswitch_4
    :sswitch_0
    invoke-direct {p0}, Lft;->e()C

    move-result v3

    iput-char v3, p0, Lft;->b:C

    iget-char v3, p0, Lft;->b:C

    sparse-switch v3, :sswitch_data_0

    move v0, v7

    goto :goto_1

    :sswitch_1
    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v1

    goto :goto_3

    :pswitch_5
    :sswitch_2
    move v3, v1

    move v4, v1

    move v5, v1

    :pswitch_6
    if-ge v4, v10, :cond_0

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v5, 0xa

    iget-char v6, p0, Lft;->b:C

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v5, v6

    :goto_4
    invoke-direct {p0}, Lft;->e()C

    move-result v6

    iput-char v6, p0, Lft;->b:C

    iget-char v6, p0, Lft;->b:C

    packed-switch v6, :pswitch_data_3

    move v6, v5

    move v5, v4

    move v4, v2

    goto :goto_3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :pswitch_7
    if-nez v5, :cond_d

    :pswitch_8
    invoke-direct {p0}, Lft;->e()C

    move-result v8

    iput-char v8, p0, Lft;->b:C

    add-int/lit8 v3, v3, -0x1

    iget-char v8, p0, Lft;->b:C

    packed-switch v8, :pswitch_data_4

    if-nez v4, :cond_2

    move v0, v7

    goto :goto_1

    :pswitch_9
    move v4, v5

    move v5, v6

    :goto_5
    :pswitch_a
    if-ge v4, v10, :cond_1

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v5, 0xa

    iget-char v6, p0, Lft;->b:C

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, -0x1

    :cond_1
    invoke-direct {p0}, Lft;->e()C

    move-result v6

    iput-char v6, p0, Lft;->b:C

    iget-char v6, p0, Lft;->b:C

    packed-switch v6, :pswitch_data_5

    move v6, v5

    :cond_2
    iget-char v4, p0, Lft;->b:C

    sparse-switch v4, :sswitch_data_1

    :goto_6
    if-nez v2, :cond_3

    neg-int v1, v1

    :cond_3
    add-int/2addr v1, v3

    if-nez v0, :cond_c

    neg-int v0, v6

    :goto_7
    const/16 v2, -0x7d

    if-lt v1, v2, :cond_4

    if-nez v0, :cond_6

    :cond_4
    move v0, v7

    goto/16 :goto_1

    :sswitch_3
    invoke-direct {p0}, Lft;->e()C

    move-result v4

    iput-char v4, p0, Lft;->b:C

    iget-char v4, p0, Lft;->b:C

    packed-switch v4, :pswitch_data_6

    :pswitch_b
    iget-char v0, p0, Lft;->b:C

    invoke-static {v0}, Lft;->a(C)V

    move v0, v7

    goto/16 :goto_1

    :pswitch_c
    move v2, v1

    :pswitch_d
    invoke-direct {p0}, Lft;->e()C

    move-result v4

    iput-char v4, p0, Lft;->b:C

    iget-char v4, p0, Lft;->b:C

    packed-switch v4, :pswitch_data_7

    iget-char v0, p0, Lft;->b:C

    invoke-static {v0}, Lft;->a(C)V

    move v0, v7

    goto/16 :goto_1

    :pswitch_e
    iget-char v4, p0, Lft;->b:C

    packed-switch v4, :pswitch_data_8

    goto :goto_6

    :pswitch_f
    invoke-direct {p0}, Lft;->e()C

    move-result v4

    iput-char v4, p0, Lft;->b:C

    iget-char v4, p0, Lft;->b:C

    packed-switch v4, :pswitch_data_9

    goto :goto_6

    :pswitch_10
    move v4, v1

    :goto_8
    :pswitch_11
    const/4 v5, 0x3

    if-ge v1, v5, :cond_5

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v4, v4, 0xa

    iget-char v5, p0, Lft;->b:C

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v4, v5

    :cond_5
    invoke-direct {p0}, Lft;->e()C

    move-result v5

    iput-char v5, p0, Lft;->b:C

    iget-char v5, p0, Lft;->b:C

    packed-switch v5, :pswitch_data_a

    move v1, v4

    goto :goto_6

    :cond_6
    const/16 v2, 0x80

    if-lt v1, v2, :cond_8

    if-lez v0, :cond_7

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto/16 :goto_1

    :cond_7
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    goto/16 :goto_1

    :cond_8
    if-nez v1, :cond_9

    int-to-float v0, v0

    goto/16 :goto_1

    :cond_9
    const/high16 v2, 0x4000000

    if-lt v0, v2, :cond_a

    add-int/lit8 v0, v0, 0x1

    :cond_a
    if-lez v1, :cond_b

    int-to-double v2, v0

    sget-object v0, Lft;->e:[D

    aget-wide v0, v0, v1

    mul-double/2addr v0, v2

    :goto_9
    double-to-float v0, v0

    goto/16 :goto_1

    :cond_b
    int-to-double v2, v0

    sget-object v0, Lft;->e:[D

    neg-int v1, v1

    aget-wide v0, v0, v1

    div-double v0, v2, v0

    goto :goto_9

    :cond_c
    move v0, v6

    goto/16 :goto_7

    :pswitch_12
    move v4, v1

    goto :goto_8

    :cond_d
    :pswitch_13
    move v4, v5

    move v5, v6

    goto/16 :goto_5

    :pswitch_14
    move v0, v2

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_14
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_7
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_1
        0x30 -> :sswitch_0
        0x31 -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_2
        0x34 -> :sswitch_2
        0x35 -> :sswitch_2
        0x36 -> :sswitch_2
        0x37 -> :sswitch_2
        0x38 -> :sswitch_2
        0x39 -> :sswitch_2
        0x45 -> :sswitch_1
        0x65 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x30
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x30
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x45 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x2b
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x30
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x30
        :pswitch_f
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x30
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x30
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 384
    invoke-virtual {p0}, Lft;->a()V

    .line 385
    iget-char v0, p0, Lft;->b:C

    add-int/lit8 v0, v0, -0x30

    .line 386
    invoke-direct {p0}, Lft;->e()C

    move-result v1

    iput-char v1, p0, Lft;->b:C

    .line 387
    invoke-direct {p0}, Lft;->f()V

    .line 388
    return v0
.end method
