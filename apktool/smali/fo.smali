.class public final Lfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfo$a;
    }
.end annotation


# instance fields
.field public transient a:[Lfo$a;

.field private transient b:I

.field private c:I

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfo;-><init>(B)V

    .line 95
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lfo;->d:F

    .line 131
    const/16 v0, 0x14

    new-array v0, v0, [Lfo$a;

    iput-object v0, p0, Lfo;->a:[Lfo$a;

    .line 132
    const/16 v0, 0xf

    iput v0, p0, Lfo;->c:I

    .line 133
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    const v8, 0x7fffffff

    .line 290
    iget-object v1, p0, Lfo;->a:[Lfo$a;

    .line 292
    and-int v0, p1, v8

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 293
    aget-object v2, v1, v0

    :goto_0
    if-nez v2, :cond_1

    .line 301
    iget v2, p0, Lfo;->b:I

    iget v3, p0, Lfo;->c:I

    if-lt v2, v3, :cond_0

    .line 303
    iget-object v0, p0, Lfo;->a:[Lfo$a;

    array-length v0, v0

    iget-object v3, p0, Lfo;->a:[Lfo$a;

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v4, v1, 0x1

    new-array v5, v4, [Lfo$a;

    int-to-float v1, v4

    iget v2, p0, Lfo;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lfo;->c:I

    iput-object v5, p0, Lfo;->a:[Lfo$a;

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_3

    .line 305
    iget-object v1, p0, Lfo;->a:[Lfo$a;

    .line 306
    and-int v0, p1, v8

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 310
    :cond_0
    new-instance v2, Lfo$a;

    aget-object v3, v1, v0

    invoke-direct {v2, p1, p1, p2, v3}, Lfo$a;-><init>(IILjava/lang/Object;Lfo$a;)V

    .line 311
    aput-object v2, v1, v0

    .line 312
    iget v0, p0, Lfo;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfo;->b:I

    .line 313
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 294
    :cond_1
    iget v3, v2, Lfo$a;->a:I

    if-ne v3, p1, :cond_2

    .line 295
    iget-object v0, v2, Lfo$a;->c:Ljava/lang/Object;

    .line 296
    iput-object p2, v2, Lfo$a;->c:Ljava/lang/Object;

    goto :goto_2

    .line 293
    :cond_2
    iget-object v2, v2, Lfo$a;->d:Lfo$a;

    goto :goto_0

    .line 303
    :cond_3
    aget-object v0, v3, v1

    :goto_3
    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lfo$a;->d:Lfo$a;

    iget v6, v0, Lfo$a;->a:I

    and-int/2addr v6, v8

    rem-int/2addr v6, v4

    aget-object v7, v5, v6

    iput-object v7, v0, Lfo$a;->d:Lfo$a;

    aput-object v0, v5, v6

    move-object v0, v2

    goto :goto_3
.end method
