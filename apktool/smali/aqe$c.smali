.class public final Laqe$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field d:F

.field e:F

.field public f:F

.field public g:Z

.field h:Z

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FFZFZFFZF)V
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 729
    iput p1, p0, Laqe$c;->a:F

    .line 730
    iput p2, p0, Laqe$c;->b:F

    .line 731
    iput-boolean p3, p0, Laqe$c;->g:Z

    .line 732
    cmpl-float v1, p4, v2

    if-nez v1, :cond_0

    move p4, v0

    :cond_0
    iput p4, p0, Laqe$c;->c:F

    .line 733
    iput-boolean p5, p0, Laqe$c;->h:Z

    .line 734
    cmpl-float v1, p6, v2

    if-nez v1, :cond_1

    move p6, v0

    :cond_1
    iput p6, p0, Laqe$c;->d:F

    .line 735
    cmpl-float v1, p7, v2

    if-nez v1, :cond_2

    :goto_0
    iput v0, p0, Laqe$c;->e:F

    .line 736
    iput-boolean p8, p0, Laqe$c;->i:Z

    .line 737
    iput p9, p0, Laqe$c;->f:F

    .line 738
    return-void

    :cond_2
    move v0, p7

    .line 735
    goto :goto_0
.end method
