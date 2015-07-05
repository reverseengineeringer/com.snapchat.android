.class public abstract Landroid/support/v7/widget/RecyclerView$s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "s"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field b:I

.field c:I

.field d:J

.field e:I

.field f:I

.field g:Landroid/support/v7/widget/RecyclerView$s;

.field h:Landroid/support/v7/widget/RecyclerView$s;

.field i:I

.field j:Landroid/support/v7/widget/RecyclerView$l;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 6790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6713
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$s;->b:I

    .line 6714
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$s;->c:I

    .line 6715
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$s;->d:J

    .line 6716
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$s;->e:I

    .line 6717
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$s;->f:I

    .line 6720
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$s;->g:Landroid/support/v7/widget/RecyclerView$s;

    .line 6722
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$s;->h:Landroid/support/v7/widget/RecyclerView$s;

    .line 6784
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$s;->k:I

    .line 6788
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$s;->j:Landroid/support/v7/widget/RecyclerView$l;

    .line 6791
    if-nez p1, :cond_0

    .line 6792
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6794
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    .line 6795
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 6820
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$s;->c:I

    .line 6821
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$s;->f:I

    .line 6822
    return-void
.end method

.method final a(I)V
    .locals 1

    .prologue
    .line 6927
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    .line 6928
    return-void
.end method

.method final a(II)V
    .locals 2

    .prologue
    .line 6923
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    .line 6924
    return-void
.end method

.method final a(IZ)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 6804
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->c:I

    if-ne v0, v1, :cond_0

    .line 6805
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->b:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$s;->c:I

    .line 6807
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->f:I

    if-ne v0, v1, :cond_1

    .line 6808
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->b:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$s;->f:I

    .line 6810
    :cond_1
    if-eqz p2, :cond_2

    .line 6811
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$s;->f:I

    .line 6813
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$s;->b:I

    .line 6814
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6815
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    .line 6817
    :cond_3
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 6972
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->k:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$s;->k:I

    .line 6973
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->k:I

    if-gez v0, :cond_2

    .line 6974
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$s;->k:I

    .line 6979
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6989
    :cond_0
    :goto_1
    return-void

    .line 6972
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->k:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6981
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 6982
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    goto :goto_1

    .line 6983
    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->k:I

    if-nez v0, :cond_0

    .line 6984
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    goto :goto_1
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 6831
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 6835
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->b:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->f:I

    goto :goto_0
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 6871
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->j:Landroid/support/v7/widget/RecyclerView$l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()V
    .locals 1

    .prologue
    .line 6875
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->j:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$l;->b(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 6876
    return-void
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 6879
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final g()V
    .locals 1

    .prologue
    .line 6883
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    .line 6884
    return-void
.end method

.method final h()V
    .locals 1

    .prologue
    .line 6887
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    .line 6888
    return-void
.end method

.method final i()Z
    .locals 1

    .prologue
    .line 6899
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final j()Z
    .locals 1

    .prologue
    .line 6903
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final k()Z
    .locals 1

    .prologue
    .line 6907
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final l()Z
    .locals 1

    .prologue
    .line 6911
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final m()Z
    .locals 1

    .prologue
    .line 6915
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final n()Z
    .locals 1

    .prologue
    .line 6919
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final o()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 6931
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    .line 6932
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$s;->b:I

    .line 6933
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$s;->c:I

    .line 6934
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$s;->d:J

    .line 6935
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$s;->f:I

    .line 6936
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$s;->k:I

    .line 6937
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView$s;->g:Landroid/support/v7/widget/RecyclerView$s;

    .line 6938
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView$s;->h:Landroid/support/v7/widget/RecyclerView$s;

    .line 6939
    return-void
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 6997
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->i:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6943
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViewHolder{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$s;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v7/widget/RecyclerView$s;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$s;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$s;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6946
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " scrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6947
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6948
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->l()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6949
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6950
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6951
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6952
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6953
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->n()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6954
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->p()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " not recyclable("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$s;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6955
    :cond_8
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6956
    :cond_9
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6957
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
