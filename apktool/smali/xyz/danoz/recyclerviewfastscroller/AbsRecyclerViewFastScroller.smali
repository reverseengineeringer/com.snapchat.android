.class public abstract Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final f:[I


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/view/View;

.field public c:Landroid/support/v7/widget/RecyclerView;

.field public d:Lcky;

.field protected e:Landroid/support/v7/widget/RecyclerView$j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lckr$c;->AbsRecyclerViewFastScroller:[I

    sput-object v0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->f:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 64
    :try_start_0
    sget v0, Lckr$c;->AbsRecyclerViewFastScroller_rfs_fast_scroller_layout:I

    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getLayoutResourceId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 66
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 67
    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    sget v0, Lckr$a;->scroll_bar:I

    invoke-virtual {p0, v0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->a:Landroid/view/View;

    .line 70
    sget v0, Lckr$a;->scroll_handle:I

    invoke-virtual {p0, v0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->b:Landroid/view/View;

    .line 72
    sget v0, Lckr$c;->AbsRecyclerViewFastScroller_rfs_barBackground:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    sget v2, Lckr$c;->AbsRecyclerViewFastScroller_rfs_barColor:I

    const v3, -0x777778

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 74
    iget-object v3, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-static {v3, v0, v2}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 76
    sget v0, Lckr$c;->AbsRecyclerViewFastScroller_rfs_handleBackground:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    sget v2, Lckr$c;->AbsRecyclerViewFastScroller_rfs_handleColor:I

    const v3, -0x777778

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 78
    iget-object v3, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->b:Landroid/view/View;

    invoke-static {v3, v0, v2}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    new-instance v0, Lckq;

    invoke-direct {v0, p0}, Lckq;-><init>(Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;)V

    invoke-virtual {p0, v0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    return-void

    .line 80
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-static {p0, p1}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(F)V
.end method

.method public abstract getLayoutResourceId()I
.end method

.method public getOnScrollListener()Landroid/support/v7/widget/RecyclerView$j;
    .locals 1
    .annotation build Lq;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->e:Landroid/support/v7/widget/RecyclerView$j;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller$1;

    invoke-direct {v0, p0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller$1;-><init>(Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;)V

    iput-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->e:Landroid/support/v7/widget/RecyclerView$j;

    .line 194
    :cond_0
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->e:Landroid/support/v7/widget/RecyclerView$j;

    return-object v0
.end method

.method public abstract getScrollProgressCalculator()Lckv;
    .annotation build Lr;
    .end annotation
.end method

.method public getSectionIndicator()Lcky;
    .locals 1
    .annotation build Lr;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->d:Lcky;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 199
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 201
    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getScrollProgressCalculator()Lckv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->a()V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getScrollProgressCalculator()Lckv;

    move-result-object v0

    iget-object v1, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-interface {v0, v1}, Lckv;->a(Landroid/support/v7/widget/RecyclerView;)F

    move-result v0

    .line 207
    invoke-virtual {p0, v0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->a(F)V

    .line 208
    return-void
.end method

.method public setBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-static {v0, p1}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 124
    return-void
.end method

.method public setBarColor(I)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 116
    return-void
.end method

.method public setHandleBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->b:Landroid/view/View;

    invoke-static {v0, p1}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 108
    return-void
.end method

.method public setHandleColor(I)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 100
    return-void
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->c:Landroid/support/v7/widget/RecyclerView;

    .line 139
    return-void
.end method

.method public setSectionIndicator(Lcky;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->d:Lcky;

    .line 143
    return-void
.end method
