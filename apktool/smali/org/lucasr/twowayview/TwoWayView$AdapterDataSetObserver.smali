.class Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/TwoWayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lorg/lucasr/twowayview/TwoWayView;


# direct methods
.method private constructor <init>(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 1

    .prologue
    .line 6325
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6326
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V
    .locals 0

    .prologue
    .line 6325
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 6330
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    const/4 v1, 0x1

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z
    invoke-static {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$502(Lorg/lucasr/twowayview/TwoWayView;Z)Z

    .line 6331
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I
    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$1800(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v1

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mOldItemCount:I
    invoke-static {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$1702(Lorg/lucasr/twowayview/TwoWayView;I)I

    .line 6332
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I
    invoke-static {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$1802(Lorg/lucasr/twowayview/TwoWayView;I)I

    .line 6336
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mHasStableIds:Z
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$1900(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mOldItemCount:I
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$1700(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$1800(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 6338
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6339
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 6344
    :goto_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->checkFocus()V
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$2100(Lorg/lucasr/twowayview/TwoWayView;)V

    .line 6345
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->requestLayout()V

    .line 6346
    return-void

    .line 6341
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->rememberSyncState()V
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$2000(Lorg/lucasr/twowayview/TwoWayView;)V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 6350
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    const/4 v1, 0x1

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z
    invoke-static {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$502(Lorg/lucasr/twowayview/TwoWayView;Z)Z

    .line 6352
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mHasStableIds:Z
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$1900(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6355
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 6359
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I
    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$1800(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v1

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mOldItemCount:I
    invoke-static {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$1702(Lorg/lucasr/twowayview/TwoWayView;I)I

    .line 6360
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I
    invoke-static {v0, v3}, Lorg/lucasr/twowayview/TwoWayView;->access$1802(Lorg/lucasr/twowayview/TwoWayView;I)I

    .line 6362
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I
    invoke-static {v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->access$2202(Lorg/lucasr/twowayview/TwoWayView;I)I

    .line 6363
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mSelectedRowId:J
    invoke-static {v0, v4, v5}, Lorg/lucasr/twowayview/TwoWayView;->access$2302(Lorg/lucasr/twowayview/TwoWayView;J)J

    .line 6365
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I
    invoke-static {v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->access$2402(Lorg/lucasr/twowayview/TwoWayView;I)I

    .line 6366
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedRowId:J
    invoke-static {v0, v4, v5}, Lorg/lucasr/twowayview/TwoWayView;->access$2502(Lorg/lucasr/twowayview/TwoWayView;J)J

    .line 6368
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z
    invoke-static {v0, v3}, Lorg/lucasr/twowayview/TwoWayView;->access$2602(Lorg/lucasr/twowayview/TwoWayView;Z)Z

    .line 6370
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->checkFocus()V
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$2100(Lorg/lucasr/twowayview/TwoWayView;)V

    .line 6371
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->requestLayout()V

    .line 6372
    return-void
.end method
