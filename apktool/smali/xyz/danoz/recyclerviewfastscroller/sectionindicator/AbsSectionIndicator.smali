.class public abstract Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcky;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Lcky",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private b:Lckt;

.field private c:Lckz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lckr$c;->AbsSectionIndicator:[I

    sput-object v0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->a:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 38
    :try_start_0
    sget v0, Lckr$c;->AbsSectionIndicator_rfs_section_indicator_layout:I

    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->getDefaultLayoutId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 39
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 40
    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    new-instance v0, Lckz;

    invoke-direct {v0, p0}, Lckz;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->c:Lckz;

    .line 46
    return-void

    .line 42
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public abstract getDefaultBackgroundColor()I
.end method

.method public abstract getDefaultLayoutId()I
.end method

.method public onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 68
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 69
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->b:Lckt;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcks;

    new-instance v1, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator$1;

    invoke-direct {v1, p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator$1;-><init>(Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;)V

    new-instance v2, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator$2;

    invoke-direct {v2, p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator$2;-><init>(Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;)V

    invoke-direct {v0, v1, v2}, Lcks;-><init>(Lcks$a;Lcks$a;)V

    .line 84
    new-instance v1, Lckt;

    invoke-direct {v1, v0}, Lckt;-><init>(Lcks;)V

    iput-object v1, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->b:Lckt;

    .line 86
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->b:Lckt;

    invoke-virtual {v0, p1}, Lckt;->a(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->setY(F)V

    .line 91
    return-void
.end method

.method public abstract setSection(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
