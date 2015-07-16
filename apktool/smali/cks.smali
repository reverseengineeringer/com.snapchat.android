.class public final Lcks;
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
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcks;-><init>(Lchg;Lchi;B)V

    .line 54
    return-void
.end method

.method private constructor <init>(Lchg;Lchi;B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p2}, Lckg;-><init>(Lchi;)V

    .line 65
    iput-object p1, p0, Lcks;->a:Lchg;

    .line 66
    invoke-super {p0}, Lckg;->g()I

    move-result v0

    .line 67
    if-gez v0, :cond_0

    .line 68
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcks;->c:I

    .line 74
    :goto_0
    iput v2, p0, Lcks;->b:I

    .line 75
    return-void

    .line 69
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 70
    iput v2, p0, Lcks;->c:I

    goto :goto_0

    .line 72
    :cond_1
    iput v0, p0, Lcks;->c:I

    goto :goto_0
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lckg;->a(J)I

    move-result v0

    .line 80
    iget v1, p0, Lcks;->b:I

    if-ge v0, v1, :cond_0

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 83
    :cond_0
    return v0
.end method

.method public final b(JI)J
    .locals 3

    .prologue
    .line 87
    iget v0, p0, Lcks;->c:I

    invoke-virtual {p0}, Lcks;->h()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lcki;->a(Lchi;III)V

    .line 88
    iget v0, p0, Lcks;->b:I

    if-gt p3, v0, :cond_0

    .line 89
    add-int/lit8 p3, p3, -0x1

    .line 91
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lckg;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcks;->c:I

    return v0
.end method
