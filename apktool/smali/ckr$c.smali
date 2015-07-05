.class public final Lckr$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lckr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final AbsRecyclerViewFastScroller:[I

.field public static final AbsRecyclerViewFastScroller_rfs_barBackground:I = 0x2

.field public static final AbsRecyclerViewFastScroller_rfs_barColor:I = 0x1

.field public static final AbsRecyclerViewFastScroller_rfs_fast_scroller_layout:I = 0x0

.field public static final AbsRecyclerViewFastScroller_rfs_handleBackground:I = 0x4

.field public static final AbsRecyclerViewFastScroller_rfs_handleColor:I = 0x3

.field public static final AbsSectionIndicator:[I

.field public static final AbsSectionIndicator_rfs_section_indicator_layout:I = 0x0

.field public static final SectionTitleIndicator:[I

.field public static final SectionTitleIndicator_rfs_backgroundColor:I = 0x1

.field public static final SectionTitleIndicator_rfs_textColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lckr$c;->AbsRecyclerViewFastScroller:[I

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010007

    aput v2, v0, v1

    sput-object v0, Lckr$c;->AbsSectionIndicator:[I

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lckr$c;->SectionTitleIndicator:[I

    return-void

    .line 46
    :array_0
    .array-data 4
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
    .end array-data

    .line 54
    :array_1
    .array-data 4
        0x7f010042
        0x7f010043
    .end array-data
.end method
