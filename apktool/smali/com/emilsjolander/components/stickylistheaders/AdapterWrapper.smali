.class Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field final mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private final mHeaderCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    .line 39
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$1;

    invoke-direct {v0, p0}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$1;-><init>(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 55
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    .line 57
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$101(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method static synthetic access$201(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;

    return-object v0
.end method

.method private configureHeader(Lcom/emilsjolander/components/stickylistheaders/WrapperView;I)Landroid/view/View;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p1, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v1, p2, v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 130
    if-nez v0, :cond_2

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Header view must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    goto :goto_0

    .line 134
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 135
    new-instance v1, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$2;

    invoke-direct {v1, p0, p2}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$2;-><init>(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-object v0
.end method

.method private getView$1ad34c65(ILandroid/view/View;)Lcom/emilsjolander/components/stickylistheaders/WrapperView;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 164
    if-nez p2, :cond_2

    new-instance p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;-><init>(Landroid/content/Context;)V

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    iget-object v4, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-interface {v1, p1, v4, p2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 167
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v1, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v6

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v1, v5}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 168
    iget-object v1, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v1, v0

    .line 172
    :goto_2
    instance-of v0, v4, Landroid/widget/Checkable;

    if-eqz v0, :cond_8

    instance-of v0, p2, Lcom/emilsjolander/components/stickylistheaders/CheckableWrapperView;

    if-nez v0, :cond_8

    .line 174
    new-instance p2, Lcom/emilsjolander/components/stickylistheaders/CheckableWrapperView;

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/emilsjolander/components/stickylistheaders/CheckableWrapperView;-><init>(Landroid/content/Context;)V

    .line 178
    :cond_1
    :goto_3
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDividerHeight:I

    if-nez v4, :cond_9

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List view item must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_2
    check-cast p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    goto :goto_0

    :cond_3
    move v1, v3

    .line 167
    goto :goto_1

    .line 170
    :cond_4
    iget-object v1, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v1, p1, v0, p2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Header view must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$2;-><init>(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v0

    goto :goto_2

    .line 175
    :cond_8
    instance-of v0, v4, Landroid/widget/Checkable;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/emilsjolander/components/stickylistheaders/CheckableWrapperView;

    if-eqz v0, :cond_1

    .line 176
    new-instance p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;-><init>(Landroid/content/Context;)V

    goto :goto_3

    .line 178
    :cond_9
    iget-object v0, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    if-eq v0, v4, :cond_b

    iget-object v0, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->removeView(Landroid/view/View;)V

    iput-object v4, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    if-eq v0, p2, :cond_a

    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_a

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    invoke-virtual {p2, v4}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->addView(Landroid/view/View;)V

    :cond_b
    iget-object v0, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eq v0, v1, :cond_d

    iget-object v0, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->removeView(Landroid/view/View;)V

    :cond_c
    iput-object v1, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_d

    invoke-virtual {p2, v1}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->addView(Landroid/view/View;)V

    :cond_d
    iget-object v0, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eq v0, v2, :cond_e

    iput-object v2, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    iput v3, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mDividerHeight:I

    invoke-virtual {p2}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->invalidate()V

    .line 179
    :cond_e
    return-object p2
.end method

.method private popHeader()Landroid/view/View;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private previousPositionHasSameHeader(I)Z
    .locals 4

    .prologue
    .line 157
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleHeaderIfExists(Lcom/emilsjolander/components/stickylistheaders/WrapperView;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p1, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    .line 118
    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    return-void
.end method

.method private setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method

.method private setDividerHeight(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDividerHeight:I

    .line 66
    return-void
.end method

.method private setOnHeaderClickListener(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;

    .line 184
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderId(I)J
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 26
    if-nez p2, :cond_2

    new-instance p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;-><init>(Landroid/content/Context;)V

    :goto_0
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    iget-object v4, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-interface {v1, p1, v4, p2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v1, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v6

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v1, v5}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v1, v0

    :goto_2
    instance-of v0, v4, Landroid/widget/Checkable;

    if-eqz v0, :cond_8

    instance-of v0, p2, Lcom/emilsjolander/components/stickylistheaders/CheckableWrapperView;

    if-nez v0, :cond_8

    new-instance p2, Lcom/emilsjolander/components/stickylistheaders/CheckableWrapperView;

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/emilsjolander/components/stickylistheaders/CheckableWrapperView;-><init>(Landroid/content/Context;)V

    :cond_1
    :goto_3
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDividerHeight:I

    if-nez v4, :cond_9

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List view item must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    iget-object v1, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v1, p1, v0, p2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Header view must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$2;-><init>(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v0

    goto :goto_2

    :cond_8
    instance-of v0, v4, Landroid/widget/Checkable;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/emilsjolander/components/stickylistheaders/CheckableWrapperView;

    if-eqz v0, :cond_1

    new-instance p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;-><init>(Landroid/content/Context;)V

    goto :goto_3

    :cond_9
    iget-object v0, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    if-eq v0, v4, :cond_b

    iget-object v0, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->removeView(Landroid/view/View;)V

    iput-object v4, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    if-eq v0, p2, :cond_a

    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_a

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    invoke-virtual {p2, v4}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->addView(Landroid/view/View;)V

    :cond_b
    iget-object v0, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eq v0, v1, :cond_d

    iget-object v0, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->removeView(Landroid/view/View;)V

    :cond_c
    iput-object v1, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_d

    invoke-virtual {p2, v1}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->addView(Landroid/view/View;)V

    :cond_d
    iget-object v0, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eq v0, v2, :cond_e

    iput-object v2, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    iput v3, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mDividerHeight:I

    invoke-virtual {p2}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->invalidate()V

    :cond_e
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 204
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 209
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
