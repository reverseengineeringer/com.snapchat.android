.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutManager$b;,
        Landroid/support/v7/widget/LinearLayoutManager$a;,
        Landroid/support/v7/widget/LinearLayoutManager$SavedState;,
        Landroid/support/v7/widget/LinearLayoutManager$c;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/LinearLayoutManager$c;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field public i:I

.field j:Lah;

.field k:Z

.field public l:I

.field public m:I

.field public n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field final o:Landroid/support/v7/widget/LinearLayoutManager$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(B)V

    .line 142
    return-void
.end method

.method public constructor <init>(B)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$h;-><init>()V

    .line 91
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    .line 98
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    .line 105
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    .line 111
    iput-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 123
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 127
    iput-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 151
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager$a;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    .line 152
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-eq v3, v0, :cond_0

    iput v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    iput-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    .line 153
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    .line 154
    :cond_1
    return-void
.end method

.method private a(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;Z)I
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0}, Lah;->c()I

    move-result v0

    sub-int/2addr v0, p1

    .line 796
    if-lez v0, :cond_1

    .line 798
    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    neg-int v0, v0

    .line 803
    add-int v1, p1, v0

    .line 804
    if-eqz p4, :cond_0

    .line 806
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v2}, Lah;->c()I

    move-result v2

    sub-int v1, v2, v1

    .line 807
    if-lez v1, :cond_0

    .line 808
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v2, v1}, Lah;->a(I)V

    .line 809
    add-int/2addr v0, v1

    .line 812
    :cond_0
    :goto_0
    return v0

    .line 800
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$p;Z)I
    .locals 8

    .prologue
    const/high16 v7, -0x80000000

    const/4 v6, 0x0

    .line 1257
    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 1258
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    if-eq v0, v7, :cond_1

    .line 1260
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-gez v0, :cond_0

    .line 1261
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 1263
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/LinearLayoutManager$c;)V

    .line 1265
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    add-int/2addr v0, v2

    .line 1266
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager$b;

    invoke-direct {v2}, Landroid/support/v7/widget/LinearLayoutManager$b;-><init>()V

    .line 1267
    :cond_2
    if-lez v0, :cond_7

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$p;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1268
    iput v6, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    iput-boolean v6, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->b:Z

    iput-boolean v6, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->c:Z

    iput-boolean v6, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    .line 1269
    invoke-virtual {p0, p1, p3, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V

    .line 1270
    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->b:Z

    if-nez v3, :cond_7

    .line 1271
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    iget v5, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1280
    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->c:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->j:Ljava/util/List;

    if-nez v3, :cond_3

    iget-boolean v3, p3, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-nez v3, :cond_4

    .line 1282
    :cond_3
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 1284
    iget v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v0, v3

    .line 1287
    :cond_4
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    if-eq v3, v7, :cond_6

    .line 1288
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 1289
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-gez v3, :cond_5

    .line 1290
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 1292
    :cond_5
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/LinearLayoutManager$c;)V

    .line 1294
    :cond_6
    if-eqz p4, :cond_2

    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    if-eqz v3, :cond_2

    .line 1295
    :cond_7
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    sub-int v0, v1, v0

    return v0
.end method

.method private a(III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1476
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()V

    .line 1479
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0}, Lah;->b()I

    move-result v5

    .line 1480
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0}, Lah;->c()I

    move-result v6

    .line 1481
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 1482
    :goto_1
    if-eq p1, p2, :cond_3

    .line 1483
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v3

    .line 1484
    invoke-static {v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    .line 1485
    if-ltz v0, :cond_6

    if-ge v0, p3, :cond_6

    .line 1486
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1487
    if-nez v4, :cond_6

    move-object v0, v2

    .line 1482
    :goto_2
    add-int/2addr p1, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 1481
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 1490
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0, v3}, Lah;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0, v3}, Lah;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    .line 1492
    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    move-object v3, v4

    .line 1493
    goto :goto_2

    .line 1500
    :cond_3
    if-eqz v2, :cond_5

    move-object v3, v2

    :cond_4
    :goto_3
    return-object v3

    :cond_5
    move-object v3, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method private a(IIZLandroid/support/v7/widget/RecyclerView$p;)V
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 1054
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 1055
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    .line 1057
    if-ne p1, v1, :cond_2

    .line 1058
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v4}, Lah;->f()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 1060
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->w()Landroid/view/View;

    move-result-object v2

    .line 1062
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v0, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    .line 1064
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 1065
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v1, v2}, Lah;->b(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1067
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0, v2}, Lah;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v1}, Lah;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1080
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 1081
    if-eqz p3, :cond_0

    .line 1082
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 1084
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 1085
    return-void

    :cond_1
    move v0, v1

    .line 1062
    goto :goto_0

    .line 1071
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()Landroid/view/View;

    move-result-object v2

    .line 1072
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v4, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v5}, Lah;->b()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 1073
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v4, :cond_3

    :goto_2
    iput v1, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    .line 1075
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 1076
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v1, v2}, Lah;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1077
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0, v2}, Lah;->a(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v1}, Lah;->b()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 1073
    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 2

    .prologue
    .line 841
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->e(II)V

    .line 842
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$l;II)V
    .locals 1

    .prologue
    .line 1126
    if-ne p2, p3, :cond_1

    .line 1141
    :cond_0
    return-void

    .line 1132
    :cond_1
    if-le p3, p2, :cond_2

    .line 1133
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    .line 1134
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$l;)V

    .line 1133
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1137
    :cond_2
    :goto_1
    if-le p2, p3, :cond_0

    .line 1138
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$l;)V

    .line 1137
    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/LinearLayoutManager$c;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1233
    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    if-nez v0, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 1237
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v2

    if-ltz v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v3}, Lah;->d()I

    move-result v3

    sub-int/2addr v3, v0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v5, v4}, Lah;->a(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_2

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;II)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v4, v1}, Lah;->a(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_4

    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;II)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1239
    :cond_5
    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_7

    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v4, v1}, Lah;->b(Landroid/view/View;)I

    move-result v1

    if-le v1, v2, :cond_6

    add-int/lit8 v1, v3, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;II)V

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v5, v4}, Lah;->b(Landroid/view/View;)I

    move-result v4

    if-le v4, v2, :cond_8

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;II)V

    goto :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private b(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;Z)I
    .locals 4

    .prologue
    .line 820
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0}, Lah;->b()I

    move-result v0

    sub-int v0, p1, v0

    .line 821
    if-lez v0, :cond_1

    .line 824
    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    neg-int v0, v0

    .line 828
    add-int v1, p1, v0

    .line 829
    if-eqz p4, :cond_0

    .line 831
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v2}, Lah;->b()I

    move-result v2

    sub-int/2addr v1, v2

    .line 832
    if-lez v1, :cond_0

    .line 833
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Lah;->a(I)V

    .line 834
    sub-int/2addr v0, v1

    .line 837
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 2

    .prologue
    .line 855
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->f(II)V

    .line 856
    return-void
.end method

.method private d(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1088
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    .line 1109
    :goto_0
    return p1

    .line 1091
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    .line 1092
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()V

    .line 1093
    if-lez p1, :cond_2

    move v0, v1

    .line 1094
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1095
    invoke-direct {p0, v0, v3, v1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$p;)V

    .line 1096
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 1097
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {p0, p2, v4, p3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$p;Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 1098
    if-gez v1, :cond_3

    move p1, v2

    .line 1102
    goto :goto_0

    .line 1093
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1104
    :cond_3
    if-le v3, v1, :cond_4

    mul-int p1, v0, v1

    .line 1105
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lah;->a(I)V

    goto :goto_0
.end method

.method private e(II)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 845
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v2}, Lah;->c()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 846
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    .line 848
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 849
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    .line 850
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 851
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 852
    return-void

    :cond_0
    move v0, v1

    .line 846
    goto :goto_0
.end method

.method private f(II)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 859
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v2}, Lah;->b()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 860
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 861
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    .line 863
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    .line 864
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 865
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 867
    return-void

    :cond_0
    move v0, v1

    .line 861
    goto :goto_0
.end method

.method private g(Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 392
    iget v1, p1, Landroid/support/v7/widget/RecyclerView$p;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    .line 393
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0}, Lah;->e()I

    move-result v0

    .line 395
    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 392
    goto :goto_0
.end method

.method private g(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 1468
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private h(Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 7

    .prologue
    .line 991
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 992
    const/4 v0, 0x0

    .line 995
    :goto_0
    return v0

    .line 994
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()V

    .line 995
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->w()Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Laj;->a(Landroid/support/v7/widget/RecyclerView$p;Lah;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;ZZ)I

    move-result v0

    goto :goto_0
.end method

.method private h(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 1472
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private i(Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 6

    .prologue
    .line 1001
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    const/4 v0, 0x0

    .line 1005
    :goto_0
    return v0

    .line 1004
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()V

    .line 1005
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->w()Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Laj;->a(Landroid/support/v7/widget/RecyclerView$p;Lah;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;Z)I

    move-result v0

    goto :goto_0
.end method

.method private j(Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 6

    .prologue
    .line 1011
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 1012
    const/4 v0, 0x0

    .line 1015
    :goto_0
    return v0

    .line 1014
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()V

    .line 1015
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->w()Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Laj;->b(Landroid/support/v7/widget/RecyclerView$p;Lah;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;Z)I

    move-result v0

    goto :goto_0
.end method

.method private k(Landroid/support/v7/widget/RecyclerView$p;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1447
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->g(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private l(Landroid/support/v7/widget/RecyclerView$p;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1463
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->g(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 322
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()Z

    move-result v1

    if-nez v1, :cond_2

    .line 323
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    .line 325
    :cond_1
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    .line 327
    return-void

    .line 325
    :cond_2
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    if-nez v0, :cond_0

    .line 875
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$c;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    .line 877
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    if-nez v0, :cond_1

    .line 878
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    invoke-static {p0, v0}, Lah;->a(Landroid/support/v7/widget/RecyclerView$h;I)Lah;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    .line 880
    :cond_1
    return-void
.end method

.method private v()Landroid/view/View;
    .locals 1

    .prologue
    .line 1422
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private w()Landroid/view/View;
    .locals 1

    .prologue
    .line 1432
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 2

    .prologue
    .line 942
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 943
    const/4 v0, 0x0

    .line 945
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 1

    .prologue
    .line 962
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    return v0
.end method

.method public final a(I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v1

    .line 368
    if-nez v1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-object v0

    .line 371
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v2

    .line 372
    sub-int v2, p1, v2

    .line 373
    if-ltz v2, :cond_0

    if-ge v2, v1, :cond_0

    .line 374
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(IIZ)Landroid/view/View;
    .locals 6

    .prologue
    .line 1580
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()V

    .line 1581
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0}, Lah;->b()I

    move-result v2

    .line 1582
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0}, Lah;->c()I

    move-result v3

    .line 1583
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    .line 1584
    :goto_0
    if-eq p1, p2, :cond_3

    .line 1585
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v1

    .line 1586
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v4, v1}, Lah;->a(Landroid/view/View;)I

    move-result v4

    .line 1587
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v5, v1}, Lah;->b(Landroid/view/View;)I

    move-result v5

    .line 1588
    if-ge v4, v3, :cond_2

    if-le v5, v2, :cond_2

    .line 1589
    if-eqz p3, :cond_1

    .line 1590
    if-lt v4, v2, :cond_2

    if-gt v5, v3, :cond_2

    move-object v0, v1

    .line 1598
    :goto_1
    return-object v0

    .line 1583
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1594
    goto :goto_1

    .line 1584
    :cond_2
    add-int/2addr p1, v0

    goto :goto_0

    .line 1598
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 242
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 243
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 244
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    .line 251
    :cond_0
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x1

    .line 1306
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$l;)Landroid/view/View;

    move-result-object v6

    .line 1307
    if-nez v6, :cond_0

    .line 1313
    iput-boolean v5, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->b:Z

    .line 1376
    :goto_0
    return-void

    .line 1316
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 1317
    iget-object v1, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->j:Ljava/util/List;

    if-nez v1, :cond_5

    .line 1318
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v1, v9, :cond_3

    move v1, v5

    :goto_1
    if-ne v3, v1, :cond_4

    .line 1320
    invoke-super {p0, v6, v9, v2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;IZ)V

    .line 1332
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->m()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->o()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->q()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    iget v7, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->e()Z

    move-result v8

    invoke-static {v4, v3, v7, v8}, Landroid/support/v7/widget/RecyclerView$h;->a(IIIZ)I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->n()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->p()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->r()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v7

    invoke-static {v4, v2, v1, v7}, Landroid/support/v7/widget/RecyclerView$h;->a(IIIZ)I

    move-result v1

    invoke-virtual {v6, v3, v1}, Landroid/view/View;->measure(II)V

    .line 1333
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v1, v6}, Lah;->c(Landroid/view/View;)I

    move-result v1

    iput v1, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    .line 1335
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v1, v5, :cond_a

    .line 1336
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1337
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1338
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v2, v6}, Lah;->d(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    .line 1343
    :goto_3
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v3, v9, :cond_9

    .line 1344
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1345
    iget v4, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v7, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v4, v7

    move v10, v3

    move v3, v4

    move v4, v2

    move v2, v1

    move v1, v10

    .line 1364
    :goto_4
    iget v7, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v4, v7

    iget v7, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v7

    iget v7, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v7

    iget v7, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v7

    invoke-static {v6, v4, v3, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1372
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1373
    :cond_1
    iput-boolean v5, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->c:Z

    .line 1375
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    goto/16 :goto_0

    :cond_3
    move v1, v2

    .line 1318
    goto/16 :goto_1

    .line 1322
    :cond_4
    invoke-super {p0, v6, v2, v2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;IZ)V

    goto/16 :goto_2

    .line 1325
    :cond_5
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v1, v9, :cond_6

    move v1, v5

    :goto_5
    if-ne v3, v1, :cond_7

    .line 1327
    invoke-super {p0, v6, v9, v5}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;IZ)V

    goto/16 :goto_2

    :cond_6
    move v1, v2

    .line 1325
    goto :goto_5

    .line 1329
    :cond_7
    invoke-super {p0, v6, v2, v5}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;IZ)V

    goto/16 :goto_2

    .line 1340
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->o()I

    move-result v2

    .line 1341
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v1, v6}, Lah;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_3

    .line 1347
    :cond_9
    iget v4, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1348
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v7, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v3, v7

    move v10, v3

    move v3, v4

    move v4, v2

    move v2, v1

    move v1, v10

    goto :goto_4

    .line 1351
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()I

    move-result v3

    .line 1352
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v1, v6}, Lah;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v3

    .line 1354
    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v2, v9, :cond_b

    .line 1355
    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1356
    iget v4, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v7, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v4, v7

    goto :goto_4

    .line 1358
    :cond_b
    iget v4, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1359
    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v7, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v2, v7

    goto :goto_4
.end method

.method a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 0

    .prologue
    .line 580
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$l;)V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$l;)V

    .line 196
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 198
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$l;->a()V

    .line 200
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 204
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 205
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v1

    if-lez v1, :cond_0

    .line 206
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v1

    .line 208
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 209
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 211
    :cond_0
    return-void

    .line 209
    :cond_1
    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1115
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Ljava/lang/String;)V

    .line 1117
    :cond_0
    return-void
.end method

.method public final b(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 1

    .prologue
    .line 954
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 955
    const/4 v0, 0x0

    .line 957
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 1

    .prologue
    .line 967
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    return v0
.end method

.method public b()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>()V

    return-object v0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 898
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 899
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 900
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 903
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    .line 904
    return-void
.end method

.method public final c(Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 1

    .prologue
    .line 972
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    return v0
.end method

.method public final c(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/high16 v6, -0x80000000

    .line 1604
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()V

    .line 1605
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v1

    if-nez v1, :cond_1

    .line 1642
    :cond_0
    :goto_0
    return-object v0

    .line 1609
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v3, v6

    .line 1610
    :goto_1
    if-eq v3, v6, :cond_0

    .line 1613
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()V

    .line 1615
    if-ne v3, v4, :cond_6

    .line 1616
    invoke-direct {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->l(Landroid/support/v7/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1620
    :goto_2
    if-eqz v2, :cond_0

    .line 1627
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()V

    .line 1628
    const v1, 0x3ea8f5c3    # 0.33f

    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v7}, Lah;->e()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v1, v7

    float-to-int v1, v1

    .line 1629
    invoke-direct {p0, v3, v1, v8, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$p;)V

    .line 1630
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v6, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 1631
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-boolean v8, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    .line 1632
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {p0, p2, v1, p3, v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$p;Z)I

    .line 1634
    if-ne v3, v4, :cond_7

    .line 1635
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()Landroid/view/View;

    move-result-object v1

    .line 1639
    :goto_3
    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1642
    goto :goto_0

    :sswitch_0
    move v3, v4

    .line 1609
    goto :goto_1

    :sswitch_1
    move v3, v5

    goto :goto_1

    :sswitch_2
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v1, v5, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v6

    goto :goto_1

    :sswitch_3
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v1, v5, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v6

    goto :goto_1

    :sswitch_4
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v1, :cond_4

    move v3, v4

    goto :goto_1

    :cond_4
    move v3, v6

    goto :goto_1

    :sswitch_5
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v1, :cond_5

    move v3, v5

    goto :goto_1

    :cond_5
    move v3, v6

    goto :goto_1

    .line 1618
    :cond_6
    invoke-direct {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    .line 1637
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->w()Landroid/view/View;

    move-result-object v1

    goto :goto_3

    .line 1609
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 12

    .prologue
    .line 442
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 446
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()V

    .line 447
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    .line 449
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()V

    .line 451
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    .line 452
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    .line 454
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v3

    if-ltz v3, :cond_19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v3

    if-ge v0, v3, :cond_19

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/LinearLayoutManager$a;->a(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_2

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager$a;->a()V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-eqz v0, :cond_21

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    .line 463
    :cond_2
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v1

    .line 464
    iget v0, p2, Landroid/support/v7/widget/RecyclerView$p;->a:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    if-ge v0, v2, :cond_22

    const/4 v0, 0x1

    .line 465
    :goto_5
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-ne v0, v2, :cond_23

    .line 467
    const/4 v0, 0x0

    move v11, v1

    move v1, v0

    move v0, v11

    .line 472
    :goto_6
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v2}, Lah;->b()I

    move-result v2

    add-int/2addr v1, v2

    .line 473
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v2}, Lah;->f()I

    move-result v2

    add-int/2addr v0, v2

    .line 474
    iget-boolean v2, p2, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_3

    .line 479
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(I)Landroid/view/View;

    move-result-object v2

    .line 480
    if-eqz v2, :cond_3

    .line 483
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v3, :cond_24

    .line 484
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v3}, Lah;->c()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v4, v2}, Lah;->b(Landroid/view/View;)I

    move-result v2

    sub-int v2, v3, v2

    .line 486
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    sub-int/2addr v2, v3

    .line 492
    :goto_7
    if-lez v2, :cond_25

    .line 493
    add-int/2addr v1, v2

    .line 501
    :cond_3
    :goto_8
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {p0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$a;)V

    .line 502
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 503
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v3, p2, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->i:Z

    .line 504
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v2, :cond_26

    .line 506
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    .line 507
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 508
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$p;Z)I

    .line 509
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 510
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v2, :cond_4

    .line 511
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v0, v2

    .line 514
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    .line 515
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 516
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 517
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$p;Z)I

    .line 518
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 539
    :goto_9
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v2

    if-lez v2, :cond_32

    .line 543
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_28

    .line 544
    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;Z)I

    move-result v2

    .line 545
    add-int/2addr v1, v2

    .line 546
    add-int/2addr v0, v2

    .line 547
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;Z)I

    move-result v2

    .line 548
    add-int/2addr v1, v2

    .line 549
    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    .line 559
    :goto_a
    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$p;->k:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Z

    move-result v0

    if-nez v0, :cond_29

    .line 560
    :cond_5
    :goto_b
    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-nez v0, :cond_6

    .line 561
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 562
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 563
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0}, Lah;->e()I

    move-result v1

    iput v1, v0, Lah;->b:I

    .line 565
    :cond_6
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 570
    return-void

    .line 454
    :cond_7
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ltz v0, :cond_8

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v1

    if-lt v0, v1, :cond_9

    :cond_8
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    iget-boolean v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0}, Lah;->c()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    :goto_c
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0}, Lah;->b()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto :goto_c

    :cond_b
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_14

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v1, v0}, Lah;->c(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v3}, Lah;->e()I

    move-result v3

    if-le v1, v3, :cond_c

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager$a;->a()V

    :goto_d
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v1, v0}, Lah;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v3}, Lah;->b()I

    move-result v3

    sub-int/2addr v1, v3

    if-gez v1, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0}, Lah;->b()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    const/4 v0, 0x0

    iput-boolean v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    goto :goto_d

    :cond_d
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v1}, Lah;->c()I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v3, v0}, Lah;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    if-gez v1, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0}, Lah;->c()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    goto :goto_d

    :cond_e
    iget-boolean v1, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v1, v0}, Lah;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v1}, Lah;->a()I

    move-result v1

    add-int/2addr v0, v1

    :goto_e
    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    :goto_f
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v1, v0}, Lah;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_e

    :cond_10
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ge v1, v0, :cond_12

    const/4 v0, 0x1

    :goto_10
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    :cond_11
    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager$a;->a()V

    goto :goto_f

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    :cond_14
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0}, Lah;->c()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto/16 :goto_d

    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0}, Lah;->b()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto/16 :goto_d

    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Lad;

    iget-object v1, v1, Lad;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_17
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_1

    :cond_18
    move-object v1, v0

    goto/16 :goto_1

    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_1a
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-ne v0, v1, :cond_20

    iget-boolean v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v0, :cond_1d

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_20

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/LinearLayoutManager$a;->a(Landroid/view/View;)V

    iget-boolean v1, p2, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v1, v0}, Lah;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v3}, Lah;->c()I

    move-result v3

    if-ge v1, v3, :cond_1b

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v1, v0}, Lah;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v1}, Lah;->b()I

    move-result v1

    if-ge v0, v1, :cond_1e

    :cond_1b
    const/4 v0, 0x1

    :goto_13
    if-eqz v0, :cond_1c

    iget-boolean v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0}, Lah;->c()I

    move-result v0

    :goto_14
    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    :cond_1c
    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_1d
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->l(Landroid/support/v7/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v0

    goto :goto_12

    :cond_1e
    const/4 v0, 0x0

    goto :goto_13

    :cond_1f
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v0}, Lah;->b()I

    move-result v0

    goto :goto_14

    :cond_20
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_21
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 464
    :cond_22
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 469
    :cond_23
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 488
    :cond_24
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v3, v2}, Lah;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v3}, Lah;->b()I

    move-result v3

    sub-int/2addr v2, v3

    .line 490
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    sub-int v2, v3, v2

    goto/16 :goto_7

    .line 495
    :cond_25
    sub-int/2addr v0, v2

    goto/16 :goto_8

    .line 521
    :cond_26
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    .line 522
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 523
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$p;Z)I

    .line 524
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 525
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v2, :cond_27

    .line 526
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v1, v2

    .line 529
    :cond_27
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    .line 530
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 531
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 532
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$p;Z)I

    .line 533
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    goto/16 :goto_9

    .line 551
    :cond_28
    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;Z)I

    move-result v2

    .line 552
    add-int/2addr v1, v2

    .line 553
    add-int/2addr v0, v2

    .line 554
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;Z)I

    move-result v2

    .line 555
    add-int/2addr v1, v2

    .line 556
    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_a

    .line 559
    :cond_29
    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v7, p1, Landroid/support/v7/widget/RecyclerView$l;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v9

    const/4 v0, 0x0

    move v6, v0

    :goto_15
    if-ge v6, v8, :cond_2d

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v3

    if-ge v3, v9, :cond_2a

    const/4 v3, 0x1

    :goto_16
    iget-boolean v10, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eq v3, v10, :cond_2b

    const/4 v3, -0x1

    :goto_17
    const/4 v10, -0x1

    if-ne v3, v10, :cond_2c

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Lah;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v5

    move v3, v0

    move v0, v4

    :goto_18
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v5, v3

    move v4, v0

    goto :goto_15

    :cond_2a
    const/4 v3, 0x0

    goto :goto_16

    :cond_2b
    const/4 v3, 0x1

    goto :goto_17

    :cond_2c
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Lah;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v4

    move v3, v5

    goto :goto_18

    :cond_2d
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-object v7, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->j:Ljava/util/List;

    if-lez v5, :cond_2e

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->f(II)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v5, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    :goto_19
    add-int/2addr v0, v3

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$p;Z)I

    :cond_2e
    if-lez v4, :cond_2f

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->w()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->e(II)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v4, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_31

    const/4 v0, -0x1

    :goto_1a
    add-int/2addr v0, v2

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$p;Z)I

    :cond_2f
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->j:Ljava/util/List;

    goto/16 :goto_b

    :cond_30
    const/4 v0, -0x1

    goto :goto_19

    :cond_31
    const/4 v0, 0x1

    goto :goto_1a

    :cond_32
    move v2, v1

    move v1, v0

    goto/16 :goto_a
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 1711
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-ne v0, v1, :cond_0

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
    .line 977
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    return v0
.end method

.method public final d()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    .line 237
    :goto_0
    return-object v0

    .line 218
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 219
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v1

    if-lez v1, :cond_2

    .line 220
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()V

    .line 221
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    xor-int/2addr v1, v2

    .line 222
    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    .line 223
    if-eqz v1, :cond_1

    .line 224
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->w()Landroid/view/View;

    move-result-object v1

    .line 225
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v2}, Lah;->c()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v3, v1}, Lah;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    .line 227
    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    goto :goto_0

    .line 229
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()Landroid/view/View;

    move-result-object v1

    .line 230
    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 231
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v2, v1}, Lah;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Lah;

    invoke-virtual {v2}, Lah;->b()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    goto :goto_0

    .line 235
    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    goto :goto_0
.end method

.method public final e(Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 1

    .prologue
    .line 982
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

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
    .line 987
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$p;)I

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 266
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 870
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

.method public final h()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1521
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    invoke-virtual {p0, v1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    .line 1522
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method
