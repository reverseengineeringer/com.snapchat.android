.class public Lbwe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbwe$b;,
        Lbwe$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lbwe;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbwe;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 456
    :try_start_0
    new-instance v2, Ljava/lang/String;

    array-length v3, p0

    new-instance v4, Lbwe$b;

    invoke-direct {v4}, Lbwe$b;-><init>()V

    div-int/lit8 v0, v3, 0x3

    mul-int/lit8 v1, v0, 0x4

    iget-boolean v0, v4, Lbwe$b;->f:Z

    if-eqz v0, :cond_1

    rem-int/lit8 v0, v3, 0x3

    if-lez v0, :cond_0

    add-int/lit8 v1, v1, 0x4

    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v0, v4, Lbwe$b;->g:Z

    if-eqz v0, :cond_4

    if-lez v3, :cond_4

    add-int/lit8 v0, v3, -0x1

    div-int/lit8 v0, v0, 0x39

    add-int/lit8 v5, v0, 0x1

    iget-boolean v0, v4, Lbwe$b;->h:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_1
    mul-int/2addr v0, v5

    add-int/2addr v0, v1

    :goto_2
    new-array v1, v0, [B

    iput-object v1, v4, Lbwe$b;->a:[B

    invoke-virtual {v4, p0, v3}, Lbwe$b;->a([BI)Z

    sget-boolean v1, Lbwe;->a:Z

    if-nez v1, :cond_3

    iget v1, v4, Lbwe$b;->b:I

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :catch_0
    move-exception v0

    .line 459
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 456
    :cond_1
    :try_start_1
    rem-int/lit8 v0, v3, 0x3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :pswitch_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, v4, Lbwe$b;->a:[B

    const-string v1, "US-ASCII"

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :cond_4
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method