.class public final Lckr;
.super Lckg;
.source "SourceFile"


# instance fields
.field private final a:Lchg;

.field private final b:I

.field private transient c:I


# direct methods
.method public constructor <init>(Lchg;Lchi;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lckr;-><init>(Lchg;Lchi;B)V

    .line 55
    return-void
.end method

.method private constructor <init>(Lchg;Lchi;B)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p2}, Lckg;-><init>(Lchi;)V

    .line 66
    iput-object p1, p0, Lckr;->a:Lchg;

    .line 67
    invoke-super {p0}, Lckg;->g()I

    move-result v0

    .line 68
    if-gez v0, :cond_0

    .line 69
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lckr;->c:I

    .line 75
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lckr;->b:I

    .line 76
    return-void

    .line 70
    :cond_0
    if-nez v0, :cond_1

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lckr;->c:I

    goto :goto_0

    .line 73
    :cond_1
    iput v0, p0, Lckr;->c:I

    goto :goto_0
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lckg;->a(J)I

    move-result v0

    .line 81
    iget v1, p0, Lckr;->b:I

    if-gt v0, v1, :cond_0

    .line 82
    add-int/lit8 v0, v0, -0x1

    .line 84
    :cond_0
    return v0
.end method

.method public final b(JI)J
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 88
    iget v0, p0, Lckr;->c:I

    invoke-virtual {p0}, Lckr;->h()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lcki;->a(Lchi;III)V

    .line 89
    iget v0, p0, Lckr;->b:I

    if-gt p3, v0, :cond_1

    .line 90
    iget v0, p0, Lckr;->b:I

    if-ne p3, v0, :cond_0

    .line 91
    new-instance v0, Lchp;

    invoke-static {}, Lchj;->s()Lchj;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3, v3}, Lchp;-><init>(Lchj;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 94
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 96
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lckg;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lckr;->c:I

    return v0
.end method
