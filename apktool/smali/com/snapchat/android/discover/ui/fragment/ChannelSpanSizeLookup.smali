.class public final Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;
.super Landroid/support/v7/widget/GridLayoutManager$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup$Layout;
    }
.end annotation


# instance fields
.field public final b:Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup$Layout;

.field private final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>()V

    .line 49
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;->c:I

    .line 50
    invoke-static {}, Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup$Layout;->values()[Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup$Layout;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;->c:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;->b:Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup$Layout;

    .line 51
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 55
    iget v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;->c:I

    if-nez v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    iget v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;->c:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 60
    const/4 v0, 0x2

    goto :goto_0

    .line 63
    :cond_2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 64
    invoke-virtual {p0, v1, p1}, Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;->a(Landroid/graphics/Point;I)V

    .line 65
    iget v2, v1, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_0

    .line 69
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;->b:Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup$Layout;

    iget-object v2, v2, Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup$Layout;->mLayoutFormat:[I

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget v1, v2, v1

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Point;I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 103
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;->b:Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup$Layout;

    iget-object v3, v1, Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup$Layout;->mLayoutFormat:[I

    move v2, v0

    move v1, p2

    .line 106
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 108
    aget v0, v3, v2

    sub-int p2, v1, v0

    .line 109
    if-ltz p2, :cond_1

    .line 110
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    move v1, p2

    goto :goto_0

    :cond_0
    move p2, v1

    move v1, v0

    .line 115
    :cond_1
    if-gez p2, :cond_2

    .line 116
    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 117
    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 122
    :goto_1
    return-void

    .line 119
    :cond_2
    iput v5, p1, Landroid/graphics/Point;->x:I

    .line 120
    iput v5, p1, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method
