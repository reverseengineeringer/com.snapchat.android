.class public final Landroid/support/v7/widget/RecyclerView$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$s;",
            ">;>;"
        }
    .end annotation
.end field

.field b:I

.field private c:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3050
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$k;->a:Landroid/util/SparseArray;

    .line 3052
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$k;->c:Landroid/util/SparseIntArray;

    .line 3053
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$k;->b:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 3104
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$k;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$k;->b:I

    .line 3105
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 4

    .prologue
    .line 3094
    iget v1, p1, Landroid/support/v7/widget/RecyclerView$s;->e:I

    .line 3095
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$k;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$k;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$k;->c:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3096
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$k;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 3101
    :goto_0
    return-void

    .line 3099
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$s;->o()V

    .line 3100
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 3108
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$k;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$k;->b:I

    .line 3109
    return-void
.end method
