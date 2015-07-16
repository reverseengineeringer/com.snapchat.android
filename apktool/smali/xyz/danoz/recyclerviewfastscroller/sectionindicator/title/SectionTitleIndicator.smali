.class public abstract Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;
.super Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:I


# instance fields
.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcls$c;->SectionTitleIndicator:[I

    sput-object v0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->a:[I

    .line 20
    sget v0, Lcls$b;->section_indicator_with_title:I

    sput v0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    sget v0, Lcls$a;->section_title_popup:I

    invoke-virtual {p0, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->c:Landroid/view/View;

    .line 38
    sget v0, Lcls$a;->section_indicator_text:I

    invoke-virtual {p0, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->d:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->a:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 42
    :try_start_0
    sget v0, Lcls$c;->SectionTitleIndicator_rfs_backgroundColor:I

    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->getDefaultBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 44
    invoke-virtual {p0, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->setIndicatorBackgroundColor(I)V

    .line 46
    sget v0, Lcls$c;->SectionTitleIndicator_rfs_textColor:I

    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->getDefaultBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 48
    invoke-virtual {p0, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->setIndicatorTextColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void

    .line 50
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method protected getDefaultBackgroundColor()I
    .locals 1

    .prologue
    .line 64
    const/high16 v0, 0x1060000

    return v0
.end method

.method protected getDefaultLayoutId()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->b:I

    return v0
.end method

.method protected getDefaultTextColor()I
    .locals 1

    .prologue
    .line 68
    const v0, 0x106000b

    return v0
.end method

.method public setIndicatorBackgroundColor(I)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 91
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setIndicatorTextColor(I)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method
