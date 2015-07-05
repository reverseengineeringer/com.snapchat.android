.class public final Laqe$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:[F

.field c:[F

.field d:[F

.field e:[I

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field k:F

.field l:F

.field m:F

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:I

.field t:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    new-array v0, v1, [F

    iput-object v0, p0, Laqe$b;->b:[F

    .line 488
    new-array v0, v1, [F

    iput-object v0, p0, Laqe$b;->c:[F

    .line 489
    new-array v0, v1, [F

    iput-object v0, p0, Laqe$b;->d:[F

    .line 490
    new-array v0, v1, [I

    iput-object v0, p0, Laqe$b;->e:[I

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Laqe$b;->o:Z

    if-eqz v0, :cond_0

    iget v0, p0, Laqe$b;->i:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Laqe$b;->o:Z

    if-eqz v0, :cond_0

    iget v0, p0, Laqe$b;->j:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
