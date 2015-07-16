.class public abstract Laez;
.super Laey;
.source "SourceFile"


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/widget/FrameLayout;

.field protected c:Laey;

.field private d:Z


# direct methods
.method constructor <init>(Laey;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Laey;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Laez;->d:Z

    .line 30
    iput-object p1, p0, Laez;->c:Laey;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Laeb;Ljava/util/List;)Laji;
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Laeb;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Laji;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Laez;->c:Laey;

    invoke-virtual {v0, p1, p2, p3}, Laey;->a(Landroid/view/View;Laeb;Ljava/util/List;)Laji;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Laez;->c:Laey;

    invoke-virtual {v0, p1, p2}, Laey;->a(J)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lafq;)V
    .locals 1
    .param p1    # Lafq;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 83
    iget-object v0, p0, Laez;->c:Laey;

    invoke-virtual {v0, p1}, Laey;->a(Lafq;)V

    .line 84
    return-void
.end method

.method public final a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Laez;->c:Laey;

    invoke-virtual {v0, p1, p2}, Laey;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V

    .line 41
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Laez;->c:Laey;

    invoke-virtual {v0, p1, p2, p3}, Laey;->a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Laez;->c:Laey;

    invoke-virtual {v0}, Laey;->c()V

    .line 104
    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 2

    .prologue
    .line 48
    iget-boolean v0, p0, Laez;->d:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Laez;->c:Laey;

    invoke-virtual {v0}, Laey;->d()Landroid/view/View;

    move-result-object v0

    .line 50
    iget-object v1, p0, Laez;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Laez;->d:Z

    .line 53
    :cond_0
    iget-object v0, p0, Laez;->a:Landroid/view/View;

    return-object v0
.end method

.method public final e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Laez;->c:Laey;

    invoke-virtual {v0}, Laey;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Laez;->c:Laey;

    invoke-virtual {v0}, Laey;->i()Z

    move-result v0

    return v0
.end method

.method public final j()J
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Laez;->c:Laey;

    invoke-virtual {v0}, Laey;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Laez;->c:Laey;

    invoke-virtual {v0}, Laey;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public m_()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Laez;->c:Laey;

    invoke-virtual {v0}, Laey;->m_()V

    .line 59
    return-void
.end method

.method public n_()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laez;->c:Laey;

    invoke-virtual {v0}, Laey;->n_()V

    .line 64
    return-void
.end method
