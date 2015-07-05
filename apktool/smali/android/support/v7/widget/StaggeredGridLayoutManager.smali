.class public final Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/StaggeredGridLayoutManager$a;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$b;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    }
.end annotation


# instance fields
.field private A:Z

.field private final B:Ljava/lang/Runnable;

.field a:Lah;

.field b:Lah;

.field c:Z

.field d:I

.field e:I

.field f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private g:I

.field private h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

.field private i:I

.field private j:I

.field private k:Laf;

.field private l:Z

.field private m:Ljava/util/BitSet;

.field private n:I

.field private o:Z

.field private t:Z

.field private u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

.field private v:I

.field private w:I

.field private x:I

.field private final y:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

.field private z:Z


# direct methods
.method private static a(III)I
    .locals 2

    .prologue
    .line 992
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return p0

    .line 995
    :cond_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 996
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 997
    :cond_2
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$l;Laf;Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 17

    .prologue
    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/BitSet;->set(IIZ)V

    .line 1318
    move-object/from16 v0, p2

    iget v2, v0, Laf;->d:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1320
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v2}, Lah;->c()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget v3, v3, Laf;->a:I

    add-int/2addr v2, v3

    .line 1321
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget v3, v3, Laf;->e:I

    add-int/2addr v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v4}, Lah;->f()I

    move-result v4

    add-int/2addr v3, v4

    move v4, v3

    move v3, v2

    .line 1329
    :goto_0
    move-object/from16 v0, p2

    iget v2, v0, Laf;->d:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(II)V

    .line 1332
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v2}, Lah;->c()I

    move-result v2

    move v5, v2

    .line 1336
    :cond_0
    :goto_1
    move-object/from16 v0, p2

    iget v2, v0, Laf;->b:I

    if-ltz v2, :cond_5

    move-object/from16 v0, p2

    iget v2, v0, Laf;->b:I

    invoke-virtual/range {p3 .. p3}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v6

    if-ge v2, v6, :cond_5

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1337
    move-object/from16 v0, p2

    iget v2, v0, Laf;->b:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$l;->b(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p2

    iget v2, v0, Laf;->b:I

    move-object/from16 v0, p2

    iget v6, v0, Laf;->c:I

    add-int/2addr v2, v6

    move-object/from16 v0, p2

    iput v2, v0, Laf;->b:I

    .line 1338
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1339
    move-object/from16 v0, p2

    iget v6, v0, Laf;->d:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 1340
    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v14, v6, v7}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;IZ)V

    .line 1344
    :goto_3
    iget-boolean v6, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;II)V

    .line 1346
    :goto_4
    iget-object v6, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v15

    .line 1347
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    array-length v7, v7

    if-lt v15, v7, :cond_9

    :cond_1
    const/4 v6, -0x1

    move v7, v6

    .line 1349
    :goto_5
    const/4 v6, -0x1

    if-ne v7, v6, :cond_a

    const/4 v6, 0x1

    move v13, v6

    .line 1350
    :goto_6
    if-eqz v13, :cond_14

    .line 1351
    iget-boolean v6, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    const/4 v7, 0x0

    aget-object v9, v6, v7

    .line 1352
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v6, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->c(I)V

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    iget v7, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    aput v7, v6, v15

    .line 1365
    :goto_7
    move-object/from16 v0, p2

    iget v6, v0, Laf;->d:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_18

    .line 1366
    iget-boolean v6, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v6, :cond_15

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)I

    move-result v6

    .line 1368
    :goto_8
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v7, v14}, Lah;->c(Landroid/view/View;)I

    move-result v7

    add-int v8, v6, v7

    .line 1369
    if-eqz v13, :cond_2e

    iget-boolean v7, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v7, :cond_2e

    .line 1371
    new-instance v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-array v7, v7, [I

    iput-object v7, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    const/4 v7, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v7, v11, :cond_16

    iget-object v11, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v12, v12, v7

    invoke-virtual {v12, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v12

    sub-int v12, v6, v12

    aput v12, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 1325
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v2}, Lah;->b()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget v3, v3, Laf;->a:I

    sub-int/2addr v2, v3

    .line 1326
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget v3, v3, Laf;->e:I

    sub-int v3, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v4}, Lah;->b()I

    move-result v4

    sub-int/2addr v3, v4

    move v4, v3

    move v3, v2

    goto/16 :goto_0

    .line 1332
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v2}, Lah;->b()I

    move-result v2

    move v5, v2

    goto/16 :goto_1

    .line 1336
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1342
    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v14, v6, v7}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;IZ)V

    goto/16 :goto_3

    .line 1344
    :cond_7
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;II)V

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;II)V

    goto/16 :goto_4

    .line 1347
    :cond_9
    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    aget v6, v6, v15

    move v7, v6

    goto/16 :goto_5

    .line 1349
    :cond_a
    const/4 v6, 0x0

    move v13, v6

    goto/16 :goto_6

    .line 1351
    :cond_b
    move-object/from16 v0, p2

    iget v6, v0, Laf;->d:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v7, :cond_e

    const/4 v7, -0x1

    if-ne v6, v7, :cond_c

    const/4 v6, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eq v6, v7, :cond_d

    const/4 v6, 0x1

    :goto_b
    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v7, v6, -0x1

    const/4 v6, -0x1

    const/4 v8, -0x1

    :goto_c
    move-object/from16 v0, p2

    iget v9, v0, Laf;->d:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    const/4 v9, 0x0

    const v11, 0x7fffffff

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v10}, Lah;->b()I

    move-result v16

    move v12, v7

    :goto_d
    if-eq v12, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v7, v7, v12

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v10

    if-ge v10, v11, :cond_30

    move v9, v10

    :goto_e
    add-int v10, v12, v8

    move v12, v10

    move v11, v9

    move-object v9, v7

    goto :goto_d

    :cond_c
    const/4 v6, 0x0

    goto :goto_a

    :cond_d
    const/4 v6, 0x0

    goto :goto_b

    :cond_e
    const/4 v7, -0x1

    if-ne v6, v7, :cond_f

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-ne v6, v7, :cond_10

    const/4 v6, 0x1

    :goto_10
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()Z

    move-result v7

    if-ne v6, v7, :cond_11

    const/4 v6, 0x1

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    goto :goto_f

    :cond_10
    const/4 v6, 0x0

    goto :goto_10

    :cond_11
    const/4 v6, 0x0

    goto :goto_b

    :cond_12
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    const/4 v8, 0x1

    goto :goto_c

    :cond_13
    const/4 v9, 0x0

    const/high16 v11, -0x80000000

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v10}, Lah;->c()I

    move-result v16

    move v12, v7

    :goto_11
    if-eq v12, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v7, v7, v12

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v10

    if-le v10, v11, :cond_2f

    move v9, v10

    :goto_12
    add-int v10, v12, v8

    move v12, v10

    move v11, v9

    move-object v9, v7

    goto :goto_11

    .line 1360
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v9, v6, v7

    goto/16 :goto_7

    .line 1366
    :cond_15
    invoke-virtual {v9, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v6

    goto/16 :goto_8

    .line 1372
    :cond_16
    const/4 v7, -0x1

    iput v7, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 1373
    iput v15, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 1374
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v7, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    move v7, v6

    move v6, v8

    .line 1390
    :goto_13
    iget-boolean v8, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v8, :cond_17

    move-object/from16 v0, p2

    iget v8, v0, Laf;->c:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_17

    if-eqz v13, :cond_17

    .line 1391
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    .line 1394
    :cond_17
    iput-object v9, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 1395
    move-object/from16 v0, p2

    iget v8, v0, Laf;->d:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1e

    iget-boolean v8, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v8, :cond_1c

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v8, v8, -0x1

    :goto_14
    if-ltz v8, :cond_1d

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v10, v10, v8

    invoke-virtual {v10, v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(Landroid/view/View;)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_14

    .line 1377
    :cond_18
    iget-boolean v6, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v6, :cond_19

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(I)I

    move-result v6

    .line 1379
    :goto_15
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v7, v14}, Lah;->c(Landroid/view/View;)I

    move-result v7

    sub-int v8, v6, v7

    .line 1380
    if-eqz v13, :cond_1b

    iget-boolean v7, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v7, :cond_1b

    .line 1382
    new-instance v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-array v7, v7, [I

    iput-object v7, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    const/4 v7, 0x0

    :goto_16
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v7, v11, :cond_1a

    iget-object v11, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v12, v12, v7

    invoke-virtual {v12, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v12

    sub-int/2addr v12, v6

    aput v12, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 1377
    :cond_19
    invoke-virtual {v9, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v6

    goto :goto_15

    .line 1383
    :cond_1a
    const/4 v7, 0x1

    iput v7, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 1384
    iput v15, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 1385
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v7, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_1b
    move v7, v8

    goto/16 :goto_13

    .line 1395
    :cond_1c
    iget-object v8, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {v8, v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(Landroid/view/View;)V

    .line 1396
    :cond_1d
    :goto_17
    iget-boolean v8, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v8, :cond_20

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lah;

    invoke-virtual {v8}, Lah;->b()I

    move-result v8

    .line 1399
    :goto_18
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lah;

    invoke-virtual {v10, v14}, Lah;->c(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v8

    .line 1400
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_21

    .line 1401
    invoke-static {v14, v8, v7, v10, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;IIII)V

    .line 1406
    :goto_19
    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v2, :cond_22

    .line 1407
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget v2, v2, Laf;->d:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(II)V

    .line 1411
    :goto_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget v2, v2, Laf;->d:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_26

    invoke-virtual {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v6

    const/4 v2, 0x1

    move v7, v2

    :goto_1b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v7, v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v7

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v2

    if-le v2, v6, :cond_2d

    :goto_1c
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v2

    goto :goto_1b

    .line 1395
    :cond_1e
    iget-boolean v8, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v8, :cond_1f

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v8, v8, -0x1

    :goto_1d
    if-ltz v8, :cond_1d

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v10, v10, v8

    invoke-virtual {v10, v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(Landroid/view/View;)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_1d

    :cond_1f
    iget-object v8, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {v8, v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(Landroid/view/View;)V

    goto :goto_17

    .line 1396
    :cond_20
    iget v8, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    mul-int/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lah;

    invoke-virtual {v10}, Lah;->b()I

    move-result v10

    add-int/2addr v8, v10

    goto/16 :goto_18

    .line 1403
    :cond_21
    invoke-static {v14, v7, v8, v6, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;IIII)V

    goto :goto_19

    .line 1409
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget v2, v2, Laf;->d:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$b;II)V

    goto :goto_1a

    .line 1411
    :cond_23
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v6}, Lah;->d()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v7}, Lah;->b()I

    move-result v7

    sub-int/2addr v6, v7

    add-int v7, v2, v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v6, v2

    :goto_1e
    if-ltz v6, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v2, v8}, Lah;->a(Landroid/view/View;)I

    move-result v2

    if-le v2, v7, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-boolean v9, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v9, :cond_24

    const/4 v2, 0x0

    :goto_1f
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v2, v9, :cond_25

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_24
    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d()V

    :cond_25
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$l;)V

    add-int/lit8 v2, v6, -0x1

    move v6, v2

    goto :goto_1e

    :cond_26
    invoke-virtual {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v6

    const/4 v2, 0x1

    move v7, v2

    :goto_20
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v7, v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v7

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v2

    if-ge v2, v6, :cond_2c

    :goto_21
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v2

    goto :goto_20

    :cond_27
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v6}, Lah;->d()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v7}, Lah;->b()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v6, v2, v6

    :goto_22
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v2, v7}, Lah;->b(Landroid/view/View;)I

    move-result v2

    if-ge v2, v6, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-boolean v8, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v8, :cond_28

    const/4 v2, 0x0

    :goto_23
    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v2, v8, :cond_29

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_28
    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e()V

    :cond_29
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$l;)V

    goto :goto_22

    .line 1416
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget v2, v2, Laf;->d:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2b

    .line 1417
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v2}, Lah;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(I)I

    move-result v2

    .line 1418
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget v5, v5, Laf;->a:I

    sub-int v2, v3, v2

    add-int/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1421
    :goto_24
    return v2

    .line 1420
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v2}, Lah;->c()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)I

    move-result v2

    .line 1421
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget v5, v5, Laf;->a:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_24

    :cond_2c
    move v2, v6

    goto/16 :goto_21

    :cond_2d
    move v2, v6

    goto/16 :goto_1c

    :cond_2e
    move v7, v6

    move v6, v8

    goto/16 :goto_13

    :cond_2f
    move-object v7, v9

    move v9, v11

    goto/16 :goto_12

    :cond_30
    move-object v7, v9

    move v9, v11

    goto/16 :goto_e
.end method

.method private a(Z)Landroid/view/View;
    .locals 6

    .prologue
    .line 1138
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()V

    .line 1139
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v0}, Lah;->b()I

    move-result v2

    .line 1140
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v0}, Lah;->c()I

    move-result v3

    .line 1141
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v4

    .line 1142
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    .line 1143
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1144
    if-eqz p1, :cond_0

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v5, v0}, Lah;->a(Landroid/view/View;)I

    move-result v5

    if-lt v5, v2, :cond_1

    :cond_0
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v5, v0}, Lah;->b(Landroid/view/View;)I

    move-result v5

    if-gt v5, v3, :cond_1

    .line 1149
    :goto_1
    return-object v0

    .line 1142
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1149
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(ILandroid/support/v7/widget/RecyclerView$p;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 1199
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iput v3, v2, Laf;->a:I

    .line 1200
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iput p1, v2, Laf;->b:I

    .line 1201
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1202
    iget v2, p2, Landroid/support/v7/widget/RecyclerView$p;->a:I

    .line 1203
    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-ge v2, p1, :cond_0

    move v2, v0

    :goto_0
    if-eq v4, v2, :cond_1

    .line 1204
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v3}, Lah;->e()I

    move-result v3

    iput v3, v2, Laf;->e:I

    .line 1211
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iput v1, v2, Laf;->d:I

    .line 1212
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v3, :cond_2

    :goto_2
    iput v0, v2, Laf;->c:I

    .line 1214
    return-void

    :cond_0
    move v2, v3

    .line 1203
    goto :goto_0

    .line 1209
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iput v3, v2, Laf;->e:I

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1212
    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;Z)V
    .locals 2

    .prologue
    .line 1168
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v0}, Lah;->c()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)I

    move-result v0

    .line 1169
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v1}, Lah;->c()I

    move-result v1

    sub-int v0, v1, v0

    .line 1171
    if-lez v0, :cond_0

    .line 1172
    neg-int v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v1

    neg-int v1, v1

    .line 1176
    sub-int/2addr v0, v1

    .line 1177
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1178
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v1, v0}, Lah;->a(I)V

    .line 1180
    :cond_0
    return-void
.end method

.method private a(Landroid/support/v7/widget/StaggeredGridLayoutManager$b;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1510
    iget v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d:I

    .line 1511
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1512
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a()I

    move-result v1

    .line 1513
    add-int/2addr v0, v1

    if-ge v0, p3, :cond_0

    .line 1514
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1517
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b()I

    move-result v1

    .line 1518
    sub-int v0, v1, v0

    if-le v0, p3, :cond_0

    .line 1519
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;II)V
    .locals 5

    .prologue
    .line 982
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 983
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 984
    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-static {p2, v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v2

    .line 986
    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    invoke-static {p3, v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v0

    .line 988
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 989
    return-void
.end method

.method private b(Z)Landroid/view/View;
    .locals 5

    .prologue
    .line 1153
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()V

    .line 1154
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v0}, Lah;->b()I

    move-result v2

    .line 1155
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v0}, Lah;->c()I

    move-result v3

    .line 1156
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1157
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1158
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v4, v0}, Lah;->a(Landroid/view/View;)I

    move-result v4

    if-lt v4, v2, :cond_1

    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v4, v0}, Lah;->b(Landroid/view/View;)I

    move-result v4

    if-gt v4, v3, :cond_1

    .line 1163
    :cond_0
    :goto_1
    return-object v0

    .line 1156
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1163
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(III)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1280
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    .line 1281
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(I)I

    .line 1282
    packed-switch p3, :pswitch_data_0

    .line 1296
    :goto_1
    :pswitch_0
    add-int v1, p1, p2

    if-gt v1, v0, :cond_2

    .line 1304
    :cond_0
    :goto_2
    return-void

    .line 1280
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    goto :goto_0

    .line 1284
    :pswitch_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    goto :goto_1

    .line 1287
    :pswitch_2
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    goto :goto_1

    .line 1291
    :pswitch_3
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    .line 1292
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, p2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    goto :goto_1

    .line 1300
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    .line 1301
    :goto_3
    if-gt p1, v0, :cond_0

    .line 1302
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()V

    goto :goto_2

    .line 1300
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    goto :goto_3

    .line 1282
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private b(ILandroid/support/v7/widget/RecyclerView$p;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1217
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iput v2, v1, Laf;->a:I

    .line 1218
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iput p1, v1, Laf;->b:I

    .line 1219
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1220
    iget v1, p2, Landroid/support/v7/widget/RecyclerView$p;->a:I

    .line 1221
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-le v1, p1, :cond_1

    move v1, v0

    :goto_0
    if-eq v3, v1, :cond_2

    .line 1222
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v2}, Lah;->e()I

    move-result v2

    iput v2, v1, Laf;->e:I

    .line 1229
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iput v0, v1, Laf;->d:I

    .line 1230
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v2, :cond_0

    const/4 v0, -0x1

    :cond_0
    iput v0, v1, Laf;->c:I

    .line 1232
    return-void

    :cond_1
    move v1, v2

    .line 1221
    goto :goto_0

    .line 1227
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iput v2, v1, Laf;->e:I

    goto :goto_1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;Z)V
    .locals 2

    .prologue
    .line 1184
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v0}, Lah;->b()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(I)I

    move-result v0

    .line 1185
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v1}, Lah;->b()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1187
    if-lez v0, :cond_0

    .line 1188
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v1

    .line 1192
    sub-int/2addr v0, v1

    .line 1193
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1194
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Lah;->a(I)V

    .line 1196
    :cond_0
    return-void
.end method

.method private static b(Landroid/view/View;IIII)V
    .locals 4

    .prologue
    .line 1489
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1496
    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, p1

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, p2

    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    sub-int v3, p3, v3

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v0, p4, v0

    invoke-static {p0, v1, v2, v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1498
    return-void
.end method

.method private d(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1749
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()V

    .line 1751
    if-lez p1, :cond_2

    .line 1752
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iput v1, v2, Laf;->d:I

    .line 1753
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v3, :cond_1

    :goto_0
    iput v0, v2, Laf;->c:I

    .line 1755
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    .line 1762
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget v2, v2, Laf;->c:I

    add-int/2addr v0, v2

    iput v0, v1, Laf;->b:I

    .line 1763
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1764
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iput v1, v0, Laf;->a:I

    .line 1765
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v0}, Lah;->e()I

    move-result v0

    :goto_2
    iput v0, v2, Laf;->e:I

    .line 1766
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Laf;Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    .line 1768
    if-lt v1, v0, :cond_0

    .line 1769
    if-gez p1, :cond_5

    .line 1771
    neg-int p1, v0

    .line 1779
    :cond_0
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lah;->a(I)V

    .line 1781
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 1782
    return p1

    :cond_1
    move v0, v1

    .line 1753
    goto :goto_0

    .line 1757
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iput v0, v2, Laf;->d:I

    .line 1758
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v3, :cond_3

    :goto_4
    iput v1, v2, Laf;->c:I

    .line 1760
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    goto :goto_1

    :cond_3
    move v1, v0

    .line 1758
    goto :goto_4

    .line 1765
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    move p1, v0

    .line 1773
    goto :goto_3
.end method

.method private e(II)V
    .locals 2

    .prologue
    .line 1501
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_1

    .line 1502
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1503
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$b;II)V

    .line 1501
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1507
    :cond_1
    return-void
.end method

.method private g(I)I
    .locals 3

    .prologue
    .line 1536
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v1

    .line 1537
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_1

    .line 1538
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v2

    .line 1539
    if-ge v2, v1, :cond_0

    move v1, v2

    .line 1537
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1543
    :cond_1
    return v1
.end method

.method private g(Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 911
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 915
    :goto_0
    return v4

    .line 914
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()V

    .line 915
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_2

    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Laj;->a(Landroid/support/v7/widget/RecyclerView$p;Lah;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;ZZ)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private g()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    if-nez v0, :cond_0

    .line 493
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    invoke-static {p0, v0}, Lah;->a(Landroid/support/v7/widget/RecyclerView$h;I)Lah;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    .line 494
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lah;->a(Landroid/support/v7/widget/RecyclerView$h;I)Lah;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lah;

    .line 496
    new-instance v0, Laf;

    invoke-direct {v0}, Laf;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    .line 498
    :cond_0
    return-void
.end method

.method private h(I)I
    .locals 3

    .prologue
    .line 1547
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v1

    .line 1548
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_1

    .line 1549
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v2

    .line 1550
    if-le v2, v1, :cond_0

    move v1, v2

    .line 1548
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1554
    :cond_1
    return v1
.end method

.method private h(Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 932
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 936
    :goto_0
    return v4

    .line 935
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()V

    .line 936
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_2

    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Laj;->a(Landroid/support/v7/widget/RecyclerView$p;Lah;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 507
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()Z

    move-result v1

    if-nez v1, :cond_2

    .line 508
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    .line 510
    :cond_1
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    .line 512
    return-void

    .line 510
    :cond_2
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i(Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 953
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 957
    :goto_0
    return v4

    .line 956
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()V

    .line 957
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_2

    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Laj;->b(Landroid/support/v7/widget/RecyclerView$p;Lah;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private t()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 515
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()I
    .locals 1

    .prologue
    .line 1786
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    .line 1787
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private v()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1791
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v1

    .line 1792
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 1

    .prologue
    .line 1678
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 1

    .prologue
    .line 1122
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 1123
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 1125
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 1

    .prologue
    .line 907
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 1836
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 1841
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 1842
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1844
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 1263
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()V

    .line 1264
    return-void
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 1257
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1258
    return-void
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1005
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1006
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 1007
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()V

    .line 1011
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 1067
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1068
    instance-of v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-nez v3, :cond_0

    .line 1069
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1084
    :goto_0
    return-void

    .line 1072
    :cond_0
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1073
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v3, :cond_2

    .line 1074
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a()I

    move-result v3

    iget-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v4, :cond_1

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    :cond_1
    move v4, v3

    move v3, v1

    move v1, v2

    .line 1079
    :goto_1
    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    invoke-static {v4, v3, v2, v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain$430787b1(IIIIZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a()I

    move-result v3

    iget-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v4, :cond_3

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    move v4, v2

    move v5, v2

    move v2, v3

    move v3, v5

    goto :goto_1

    :cond_3
    move v4, v2

    move v5, v2

    move v2, v3

    move v3, v5

    goto :goto_1
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$l;)V
    .locals 2

    .prologue
    .line 269
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_0

    .line 270
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c()V

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1088
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1089
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_0

    .line 1090
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 1092
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)Landroid/view/View;

    move-result-object v1

    .line 1093
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    .line 1094
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1097
    :cond_1
    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    .line 1098
    invoke-static {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v2

    .line 1099
    if-ge v1, v2, :cond_2

    .line 1100
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1101
    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    goto :goto_0

    .line 1103
    :cond_2
    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1104
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 467
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Ljava/lang/String;)V

    .line 469
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1850
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    return v0
.end method

.method public final b(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 1

    .prologue
    .line 1684
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    return v0
.end method

.method public final b(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 2

    .prologue
    .line 1131
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1132
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 1134
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 1

    .prologue
    .line 923
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    return v0
.end method

.method public final b()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 1830
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public final b(I)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1718
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    if-eq v0, p1, :cond_0

    .line 1719
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1721
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 1722
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    .line 1723
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()V

    .line 1724
    return-void
.end method

.method public final b(II)V
    .locals 1

    .prologue
    .line 1252
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1253
    return-void
.end method

.method public final c(Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 1

    .prologue
    .line 928
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    return v0
.end method

.method public final c(II)V
    .locals 1

    .prologue
    .line 1273
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1274
    return-void
.end method

.method public final c(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/high16 v10, -0x80000000

    const/4 v1, 0x0

    .line 532
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()V

    .line 534
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    .line 535
    iput v4, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    iput v10, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    iput-boolean v1, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    iput-boolean v1, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    .line 537
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_e

    .line 538
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-lez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c()V

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    aget v2, v2, v0

    if-eq v2, v10, :cond_0

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v6}, Lah;->c()I

    move-result v6

    add-int/2addr v2, v6

    :cond_0
    :goto_1
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v6, v6, v0

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v6}, Lah;->b()I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-object v11, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    iput-object v11, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    iput-object v11, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Z

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    invoke-virtual {p0, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    if-eq v2, v0, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    :cond_4
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()V

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    if-eq v0, v4, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    iput-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    if-le v0, v3, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    .line 544
    :cond_5
    :goto_3
    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-nez v0, :cond_6

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    if-ne v0, v4, :cond_f

    :cond_6
    move v0, v1

    :goto_4
    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v0, :cond_25

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_5
    if-ltz v2, :cond_24

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_23

    if-ge v0, v6, :cond_23

    :cond_7
    :goto_6
    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    iput v10, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    .line 546
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_a

    .line 547
    iget-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-ne v0, v2, :cond_9

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()Z

    move-result v0

    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Z

    if-eq v0, v2, :cond_a

    .line 549
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 550
    iput-boolean v3, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    .line 554
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_2e

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-gtz v0, :cond_2e

    .line 556
    :cond_b
    iget-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    if-eqz v0, :cond_28

    move v0, v1

    .line 557
    :goto_7
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_2e

    .line 559
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c()V

    .line 560
    iget v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    if-eq v2, v10, :cond_c

    .line 561
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v0

    iget v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c(I)V

    .line 557
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 538
    :cond_d
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iput-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    goto/16 :goto_2

    .line 540
    :cond_e
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()V

    .line 541
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iput-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    goto/16 :goto_3

    .line 544
    :cond_f
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    if-ltz v0, :cond_10

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v2

    if-lt v0, v2, :cond_11

    :cond_10
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    iput v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    move v0, v1

    goto/16 :goto_4

    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    if-eq v0, v4, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-gtz v0, :cond_22

    :cond_12
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    :goto_8
    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    if-eq v0, v10, :cond_15

    iget-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v0}, Lah;->c()I

    move-result v0

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    sub-int/2addr v0, v6

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v6, v2}, Lah;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    :goto_9
    move v0, v3

    goto/16 :goto_4

    :cond_13
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    goto :goto_8

    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v0}, Lah;->b()I

    move-result v0

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    add-int/2addr v0, v6

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v6, v2}, Lah;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_9

    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v0, v2}, Lah;->c(Landroid/view/View;)I

    move-result v0

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v6}, Lah;->e()I

    move-result v6

    if-le v0, v6, :cond_17

    iget-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v0}, Lah;->c()I

    move-result v0

    :goto_a
    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    :goto_b
    move v0, v3

    goto/16 :goto_4

    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v0}, Lah;->b()I

    move-result v0

    goto :goto_a

    :cond_17
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v0, v2}, Lah;->a(Landroid/view/View;)I

    move-result v0

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v6}, Lah;->b()I

    move-result v6

    sub-int/2addr v0, v6

    if-gez v0, :cond_18

    neg-int v0, v0

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_b

    :cond_18
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v0}, Lah;->c()I

    move-result v0

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v6, v2}, Lah;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    if-gez v0, :cond_19

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_b

    :cond_19
    iput v10, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_b

    :cond_1a
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    if-ne v0, v10, :cond_20

    iget v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v2

    if-nez v2, :cond_1b

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-nez v0, :cond_1d

    move v0, v4

    :goto_c
    if-ne v0, v3, :cond_1e

    move v0, v3

    :goto_d
    iput-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    iget-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_1f

    iget-object v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v0}, Lah;->c()I

    move-result v0

    :goto_e
    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    :goto_f
    iput-boolean v3, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    goto :goto_b

    :cond_1b
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v2

    if-ge v0, v2, :cond_1c

    move v0, v3

    :goto_10
    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eq v0, v2, :cond_1d

    move v0, v4

    goto :goto_c

    :cond_1c
    move v0, v1

    goto :goto_10

    :cond_1d
    move v0, v3

    goto :goto_c

    :cond_1e
    move v0, v1

    goto :goto_d

    :cond_1f
    iget-object v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v0}, Lah;->b()I

    move-result v0

    goto :goto_e

    :cond_20
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    iget-boolean v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v2, :cond_21

    iget-object v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v2}, Lah;->c()I

    move-result v2

    sub-int v0, v2, v0

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_f

    :cond_21
    iget-object v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v2}, Lah;->b()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_f

    :cond_22
    iput v10, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    goto/16 :goto_b

    :cond_23
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_5

    :cond_24
    move v0, v1

    goto/16 :goto_6

    :cond_25
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v7

    move v2, v1

    :goto_11
    if-ge v2, v7, :cond_27

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_26

    if-lt v0, v6, :cond_7

    :cond_26
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    :cond_27
    move v0, v1

    goto/16 :goto_6

    :cond_28
    move v2, v1

    .line 565
    :goto_12
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v2, v0, :cond_2e

    .line 566
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v6, v0, v2

    iget-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iget v8, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    if-eqz v7, :cond_2b

    invoke-virtual {v6, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v0

    :goto_13
    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c()V

    if-eq v0, v10, :cond_2a

    if-eqz v7, :cond_29

    iget-object v9, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v9}, Lah;->c()I

    move-result v9

    if-lt v0, v9, :cond_2a

    :cond_29
    if-nez v7, :cond_2c

    iget-object v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v7}, Lah;->b()I

    move-result v7

    if-le v0, v7, :cond_2c

    .line 565
    :cond_2a
    :goto_14
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    .line 566
    :cond_2b
    invoke-virtual {v6, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v0

    goto :goto_13

    :cond_2c
    if-eq v8, v10, :cond_2d

    add-int/2addr v0, v8

    :cond_2d
    iput v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    iput v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    goto :goto_14

    .line 570
    :cond_2e
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 571
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    .line 572
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lah;

    invoke-virtual {v0}, Lah;->e()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    div-int/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lah;

    invoke-virtual {v0}, Lah;->e()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v0, v3, :cond_32

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:I

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x:I

    .line 573
    :goto_15
    iget-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_33

    .line 575
    iget v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$p;)V

    .line 576
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Laf;Landroid/support/v7/widget/RecyclerView$p;)I

    .line 578
    iget v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$p;)V

    .line 579
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget v2, v0, Laf;->b:I

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget v6, v6, Laf;->c:I

    add-int/2addr v2, v6

    iput v2, v0, Laf;->b:I

    .line 580
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Laf;Landroid/support/v7/widget/RecyclerView$p;)I

    .line 591
    :goto_16
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_2f

    .line 592
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_34

    .line 593
    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;Z)V

    .line 594
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;Z)V

    .line 601
    :cond_2f
    :goto_17
    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-nez v0, :cond_31

    .line 602
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_30

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    if-eq v0, v4, :cond_30

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    if-eqz v0, :cond_30

    .line 604
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 606
    :cond_30
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 607
    iput v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    .line 609
    :cond_31
    iget-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 610
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Z

    .line 611
    iput-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 612
    return-void

    .line 572
    :cond_32
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x:I

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:I

    goto :goto_15

    .line 583
    :cond_33
    iget v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$p;)V

    .line 584
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Laf;Landroid/support/v7/widget/RecyclerView$p;)I

    .line 586
    iget v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$p;)V

    .line 587
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget v2, v0, Laf;->b:I

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    iget v6, v6, Laf;->c:I

    add-int/2addr v2, v6

    iput v2, v0, Laf;->b:I

    .line 588
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Laf;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Laf;Landroid/support/v7/widget/RecyclerView$p;)I

    goto :goto_16

    .line 596
    :cond_34
    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;Z)V

    .line 597
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;Z)V

    goto :goto_17
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 1

    .prologue
    .line 944
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    return v0
.end method

.method public final d()Landroid/os/Parcelable;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/high16 v4, -0x80000000

    .line 1015
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1016
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;)V

    .line 1061
    :goto_0
    return-object v0

    .line 1018
    :cond_0
    new-instance v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1019
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    iput-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 1020
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    iput-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    .line 1021
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Z

    iput-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    .line 1023
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    if-eqz v0, :cond_2

    .line 1024
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    iput-object v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    .line 1025
    iget-object v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    array-length v0, v0

    iput v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 1026
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    iput-object v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    .line 1031
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_7

    .line 1032
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()V

    .line 1033
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    :goto_2
    iput v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 1035
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    iput v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1036
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    iput v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 1037
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-array v0, v0, [I

    iput-object v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    move v0, v2

    .line 1038
    :goto_5
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_8

    .line 1040
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v1, :cond_6

    .line 1041
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v1

    .line 1042
    if-eq v1, v4, :cond_1

    .line 1043
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v2}, Lah;->c()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1051
    :cond_1
    :goto_6
    iget-object v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    aput v1, v2, v0

    .line 1038
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1028
    :cond_2
    iput v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    goto :goto_1

    .line 1033
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    goto :goto_2

    .line 1035
    :cond_4
    invoke-direct {p0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_4

    .line 1046
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v1

    .line 1047
    if-eq v1, v4, :cond_1

    .line 1048
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v2}, Lah;->b()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_6

    .line 1054
    :cond_7
    iput v1, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 1055
    iput v1, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1056
    iput v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    :cond_8
    move-object v0, v3

    .line 1061
    goto/16 :goto_0
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 1236
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->d(I)V

    .line 1237
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_0

    .line 1238
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d(I)V

    .line 1237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1240
    :cond_0
    return-void
.end method

.method public final d(II)V
    .locals 1

    .prologue
    .line 1268
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1269
    return-void
.end method

.method public final e(Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 1

    .prologue
    .line 949
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    return v0
.end method

.method public final e(I)V
    .locals 2

    .prologue
    .line 1244
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->e(I)V

    .line 1245
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_0

    .line 1246
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d(I)V

    .line 1245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1248
    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 1672
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 1

    .prologue
    .line 965
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    return v0
.end method

.method public final f(I)V
    .locals 13

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-nez v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v1

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    move v7, v0

    move v8, v1

    :goto_1
    if-nez v8, :cond_12

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    new-instance v9, Ljava/util/BitSet;

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    invoke-direct {v9, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    const/4 v2, 0x1

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/BitSet;->set(IIZ)V

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v2, v0

    :goto_2
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_4

    add-int/lit8 v1, v3, -0x1

    const/4 v0, -0x1

    move v6, v0

    :goto_3
    if-ge v1, v6, :cond_5

    const/4 v0, 0x1

    move v3, v0

    :goto_4
    move v5, v1

    :goto_5
    if-eq v5, v6, :cond_11

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-boolean v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v10, :cond_6

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b()I

    move-result v1

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v10}, Lah;->c()I

    move-result v10

    if-ge v1, v10, :cond_7

    const/4 v1, 0x1

    :goto_6
    if-eqz v1, :cond_8

    move-object v0, v4

    :goto_7
    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    :goto_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->s:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v1

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    move v7, v0

    move v8, v1

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    move v2, v0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    move v6, v3

    goto :goto_3

    :cond_5
    const/4 v0, -0x1

    move v3, v0

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a()I

    move-result v1

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v10}, Lah;->b()I

    move-result v10

    if-le v1, v10, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->clear(I)V

    :cond_9
    iget-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-nez v1, :cond_10

    add-int v1, v5, v3

    if-eq v1, v6, :cond_10

    add-int v1, v5, v3

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v10

    const/4 v1, 0x0

    iget-boolean v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v11, :cond_c

    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v11, v4}, Lah;->b(Landroid/view/View;)I

    move-result v11

    iget-object v12, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v12, v10}, Lah;->b(Landroid/view/View;)I

    move-result v12

    if-ge v11, v12, :cond_a

    move-object v0, v4

    goto :goto_7

    :cond_a
    if-ne v11, v12, :cond_b

    const/4 v1, 0x1

    :cond_b
    :goto_9
    if-eqz v1, :cond_10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_e

    const/4 v0, 0x1

    move v1, v0

    :goto_a
    if-gez v2, :cond_f

    const/4 v0, 0x1

    :goto_b
    if-eq v1, v0, :cond_10

    move-object v0, v4

    goto :goto_7

    :cond_c
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v11, v4}, Lah;->a(Landroid/view/View;)I

    move-result v11

    iget-object v12, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v12, v10}, Lah;->a(Landroid/view/View;)I

    move-result v12

    if-le v11, v12, :cond_d

    move-object v0, v4

    goto/16 :goto_7

    :cond_d
    if-ne v11, v12, :cond_b

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    move v1, v0

    goto :goto_a

    :cond_f
    const/4 v0, 0x0

    goto :goto_b

    :cond_10
    add-int v0, v5, v3

    move v5, v0

    goto/16 :goto_5

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_12
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_13

    const/4 v0, -0x1

    :goto_c
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(III)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v1

    if-nez v1, :cond_14

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x1

    goto :goto_c

    :cond_14
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v3, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v8, v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(III)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    goto/16 :goto_8

    :cond_15
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    goto/16 :goto_8
.end method

.method public final f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1667
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
