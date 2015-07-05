.class final Lagg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lagg;


# direct methods
.method constructor <init>(Lagg;I)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lagg$2;->b:Lagg;

    iput p2, p0, Lagg$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 176
    iget-object v0, p0, Lagg$2;->b:Lagg;

    invoke-static {v0}, Lagg;->a(Lagg;)Laoe;

    move-result-object v0

    invoke-interface {v0}, Laoe;->b()Ljava/util/List;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lagg$2;->b:Lagg;

    iget v2, p0, Lagg$2;->a:I

    iget-object v3, v1, Lagg;->c:Laoe;

    invoke-interface {v3}, Laoe;->c()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lagg;->d:Lapk;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lapk;->a(II)V

    iget-object v3, v1, Lagg;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_0
    iget-object v3, v1, Lagg;->e:Ljava/util/List;

    invoke-interface {v3, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object v0, v1, Lagg;->e:Ljava/util/List;

    iput-object v0, v1, Lagg;->f:Ljava/util/List;

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 180
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-object v3, v1, Lagg;->d:Lapk;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lapk;->a(II)V

    goto :goto_0
.end method
