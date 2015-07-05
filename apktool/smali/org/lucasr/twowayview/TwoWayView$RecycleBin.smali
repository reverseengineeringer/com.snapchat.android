.class Lorg/lucasr/twowayview/TwoWayView$RecycleBin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/TwoWayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lorg/lucasr/twowayview/TwoWayView;


# direct methods
.method constructor <init>(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 1

    .prologue
    .line 5947
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5950
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$102(Lorg/lucasr/twowayview/TwoWayView$RecycleBin;Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;)Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;
    .locals 0

    .prologue
    .line 5947
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mRecyclerListener:Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;

    return-object p1
.end method

.method private pruneScrapViews()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 6188
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v5, v0

    .line 6189
    iget v6, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    .line 6190
    iget-object v7, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    move v4, v1

    .line 6192
    :goto_0
    if-ge v4, v6, :cond_1

    .line 6193
    aget-object v8, v7, v4

    .line 6194
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6195
    sub-int v9, v0, v5

    .line 6197
    add-int/lit8 v0, v0, -0x1

    move v2, v1

    .line 6199
    :goto_1
    if-ge v2, v9, :cond_0

    .line 6200
    iget-object v10, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v10, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$1600(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Z)V

    .line 6199
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    .line 6192
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 6204
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_3

    .line 6205
    :goto_2
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 6206
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6207
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6208
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 6209
    add-int/lit8 v1, v1, -0x1

    .line 6205
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 6213
    :cond_3
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 6094
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    .line 6095
    if-nez v0, :cond_1

    .line 6132
    :cond_0
    :goto_0
    return-void

    .line 6099
    :cond_1
    iput p2, v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->scrappedFromPosition:I

    .line 6101
    iget v0, v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->viewType:I

    .line 6102
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v1

    .line 6105
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_4

    .line 6106
    :cond_2
    if-eqz v1, :cond_0

    .line 6107
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_3

    .line 6108
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 6111
    :cond_3
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 6117
    :cond_4
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 6118
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6125
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_5

    .line 6126
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 6129
    :cond_5
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mRecyclerListener:Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;

    if-eqz v0, :cond_0

    .line 6130
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mRecyclerListener:Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;

    invoke-interface {v0, p1}, Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 6120
    :cond_6
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method clear()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 6002
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6003
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 6004
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 6006
    :goto_0
    if-ge v1, v4, :cond_2

    .line 6007
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    add-int/lit8 v0, v4, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v5, v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->access$1200(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Z)V

    .line 6006
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6010
    :cond_0
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    move v3, v2

    .line 6011
    :goto_1
    if-ge v3, v4, :cond_2

    .line 6012
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    .line 6013
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v2

    .line 6015
    :goto_2
    if-ge v1, v6, :cond_1

    .line 6016
    iget-object v7, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    add-int/lit8 v0, v6, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v7, v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->access$1300(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Z)V

    .line 6015
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 6011
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 6021
    :cond_2
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_3

    .line 6022
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 6024
    :cond_3
    return-void
.end method

.method clearTransientStateViews()V
    .locals 1

    .prologue
    .line 6074
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_0

    .line 6075
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 6077
    :cond_0
    return-void
.end method

.method fillActiveViews(II)V
    .locals 3

    .prologue
    .line 6027
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 6028
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 6031
    :cond_0
    iput p2, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mFirstActivePosition:I

    .line 6033
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 6034
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 6035
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v2, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6039
    aput-object v2, v1, v0

    .line 6034
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6041
    :cond_1
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6044
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mFirstActivePosition:I

    sub-int v2, p1, v0

    .line 6045
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 6047
    if-ltz v2, :cond_0

    array-length v0, v3

    if-ge v2, v0, :cond_0

    .line 6048
    aget-object v0, v3, v2

    .line 6049
    aput-object v1, v3, v2

    .line 6054
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 6080
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6081
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 6089
    :goto_0
    return-object v0

    .line 6083
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$1400(Lorg/lucasr/twowayview/TwoWayView;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 6084
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 6085
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0, p1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 6089
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTransientStateView(I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6058
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v1, :cond_1

    .line 6070
    :cond_0
    :goto_0
    return-object v0

    .line 6062
    :cond_1
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v1

    .line 6063
    if-ltz v1, :cond_0

    .line 6067
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6068
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    goto :goto_0
.end method

.method public markChildrenDirty()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5973
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 5974
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5975
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 5977
    :goto_0
    if-ge v2, v4, :cond_2

    .line 5978
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 5977
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 5981
    :cond_0
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    move v2, v1

    .line 5982
    :goto_1
    if-ge v2, v3, :cond_2

    .line 5983
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5984
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    goto :goto_2

    .line 5982
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 5989
    :cond_2
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_3

    .line 5990
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    .line 5991
    :goto_3
    if-ge v1, v2, :cond_3

    .line 5992
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 5991
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 5995
    :cond_3
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6216
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6217
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6227
    :cond_0
    return-void

    .line 6219
    :cond_1
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    .line 6220
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 6222
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 6223
    aget-object v3, v2, v0

    .line 6224
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 6230
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6231
    if-gtz v3, :cond_0

    .line 6232
    const/4 v0, 0x0

    .line 6245
    :goto_0
    return-object v0

    .line 6235
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 6236
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6237
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    .line 6239
    iget v1, v1, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->scrappedFromPosition:I

    if-ne v1, p2, :cond_1

    .line 6240
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 6235
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6245
    :cond_2
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 6136
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 6137
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    if-le v1, v0, :cond_3

    move v1, v0

    .line 6139
    :goto_0
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 6140
    array-length v0, v5

    .line 6142
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_1
    if-ltz v4, :cond_7

    .line 6143
    aget-object v6, v5, v4

    .line 6144
    if-eqz v6, :cond_2

    .line 6145
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    .line 6146
    iget v7, v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->viewType:I

    .line 6148
    aput-object v10, v5, v4

    .line 6150
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v8

    .line 6151
    invoke-virtual {p0, v7}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v8, :cond_4

    .line 6152
    :cond_0
    if-eqz v8, :cond_2

    .line 6153
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v0, v6, v2}, Lorg/lucasr/twowayview/TwoWayView;->access$1500(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Z)V

    .line 6155
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_1

    .line 6156
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 6159
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    iget v7, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v7, v4

    invoke-virtual {v0, v7, v6}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 6142
    :cond_2
    :goto_2
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 6137
    goto :goto_0

    .line 6165
    :cond_4
    if-eqz v1, :cond_5

    .line 6166
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v7

    .line 6169
    :cond_5
    iget v7, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v7, v4

    iput v7, v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->scrappedFromPosition:I

    .line 6170
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v0, v7, :cond_6

    .line 6175
    invoke-virtual {v6, v10}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 6178
    :cond_6
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mRecyclerListener:Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;

    if-eqz v0, :cond_2

    .line 6179
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mRecyclerListener:Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;

    invoke-interface {v0, v6}, Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_2

    .line 6184
    :cond_7
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->pruneScrapViews()V

    .line 6185
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5957
    if-gtz p1, :cond_0

    .line 5958
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5962
    :cond_0
    new-array v2, p1, [Ljava/util/ArrayList;

    move v0, v1

    .line 5963
    :goto_0
    if-ge v0, p1, :cond_1

    .line 5964
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    .line 5963
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5967
    :cond_1
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    .line 5968
    aget-object v0, v2, v1

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5969
    iput-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 5970
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1

    .prologue
    .line 5998
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
