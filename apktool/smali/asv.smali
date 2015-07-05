.class public Lasv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final BOUNCE_VELOCITY:F = 50.0f

.field public static final DEFAULT_DAMPENING_CONSTANT:F = 15.0f

.field public static final DEFAULT_END_SIZE:F = 1.2f

.field public static final DEFAULT_KEEP_EXPANDED_ON_HOVER_LEAVE:Z = false

.field public static final DEFAULT_SPRING_CONSTANT:F = 1000.0f


# instance fields
.field public mBounceEnabled:Z

.field private final mKeepExpandedOnHoverLeave:Z

.field public final mSpring:Lbj;

.field private final mViewToAnimate:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lasv;-><init>(Landroid/view/View;Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/view/View;B)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lasv;-><init>(Landroid/view/View;Z)V

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lavk;->a()Lbp;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lasv;-><init>(Landroid/view/View;ZLbp;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/view/View;ZLbp;)V
    .locals 6

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lasv;->mBounceEnabled:Z

    .line 44
    iput-object p1, p0, Lasv;->mViewToAnimate:Landroid/view/View;

    .line 45
    iput-boolean p2, p0, Lasv;->mKeepExpandedOnHoverLeave:Z

    .line 47
    invoke-virtual {p3}, Lbp;->a()Lbj;

    move-result-object v0

    iput-object v0, p0, Lasv;->mSpring:Lbj;

    .line 48
    iget-object v0, p0, Lasv;->mSpring:Lbj;

    new-instance v1, Lbl;

    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-direct {v1, v2, v3, v4, v5}, Lbl;-><init>(DD)V

    invoke-virtual {v0, v1}, Lbj;->a(Lbl;)Lbj;

    .line 50
    iget-object v0, p0, Lasv;->mSpring:Lbj;

    new-instance v1, Lasv$1;

    invoke-direct {v1, p0}, Lasv$1;-><init>(Lasv;)V

    invoke-virtual {v0, v1}, Lbj;->a(Lbn;)Lbj;

    .line 59
    return-void
.end method

.method static synthetic a(Lasv;F)V
    .locals 0

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lasv;->a(F)V

    return-void
.end method

.method static synthetic a(Lasv;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lasv;->mBounceEnabled:Z

    return v0
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lasv;->mViewToAnimate:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 101
    iget-object v0, p0, Lasv;->mViewToAnimate:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 102
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-eq v6, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 64
    :cond_0
    iget-object v0, p0, Lasv;->mSpring:Lbj;

    invoke-virtual {v0, v4, v5}, Lbj;->b(D)Lbj;

    .line 74
    :goto_0
    return v1

    .line 65
    :cond_1
    iget-boolean v6, p0, Lasv;->mKeepExpandedOnHoverLeave:Z

    if-nez v6, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 68
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 70
    :goto_1
    iget-object v6, p0, Lasv;->mSpring:Lbj;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v6, v2, v3}, Lbj;->b(D)Lbj;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 68
    goto :goto_1

    :cond_3
    move-wide v2, v4

    .line 70
    goto :goto_2

    .line 72
    :cond_4
    iget-object v0, p0, Lasv;->mSpring:Lbj;

    invoke-virtual {v0, v2, v3}, Lbj;->b(D)Lbj;

    goto :goto_0
.end method
