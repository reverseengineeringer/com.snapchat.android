.class public abstract Ladz;
.super Lady;
.source "SourceFile"


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/widget/FrameLayout;

.field protected c:Lady;

.field private d:Z


# direct methods
.method constructor <init>(Lady;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lady;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Ladz;->d:Z

    .line 30
    iput-object p1, p0, Ladz;->c:Lady;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ladb;Ljava/util/List;)Laim;
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ladb;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Laim;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Ladz;->c:Lady;

    invoke-virtual {v0, p1, p2, p3}, Lady;->a(Landroid/view/View;Ladb;Ljava/util/List;)Laim;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ladz;->c:Lady;

    invoke-virtual {v0, p1, p2}, Lady;->a(J)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    move-result-object v0

    return-object v0
.end method

.method public final a(Laeq;)V
    .locals 1
    .param p1    # Laeq;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 73
    iget-object v0, p0, Ladz;->c:Lady;

    invoke-virtual {v0, p1}, Lady;->a(Laeq;)V

    .line 74
    return-void
.end method

.method public final a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ladz;->c:Lady;

    invoke-virtual {v0, p1, p2}, Lady;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V

    .line 41
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ladz;->c:Lady;

    invoke-virtual {v0, p1, p2, p3}, Lady;->a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ladz;->c:Lady;

    invoke-virtual {v0}, Lady;->c()V

    .line 94
    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 2

    .prologue
    .line 48
    iget-boolean v0, p0, Ladz;->d:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Ladz;->c:Lady;

    invoke-virtual {v0}, Lady;->d()Landroid/view/View;

    move-result-object v0

    .line 50
    iget-object v1, p0, Ladz;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Ladz;->d:Z

    .line 53
    :cond_0
    iget-object v0, p0, Ladz;->a:Landroid/view/View;

    return-object v0
.end method

.method public final e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ladz;->c:Lady;

    invoke-virtual {v0}, Lady;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ladz;->c:Lady;

    invoke-virtual {v0}, Lady;->h()Z

    move-result v0

    return v0
.end method

.method public o_()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ladz;->c:Lady;

    invoke-virtual {v0}, Lady;->o_()V

    .line 59
    return-void
.end method

.method public p_()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ladz;->c:Lady;

    invoke-virtual {v0}, Lady;->p_()V

    .line 64
    return-void
.end method
