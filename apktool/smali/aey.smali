.class public abstract Laey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lawj;
.end annotation


# instance fields
.field protected j:Lafq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Laeb;Ljava/util/List;)Laji;
    .annotation build Lchd;
    .end annotation

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
.end method

.method public abstract a(J)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;
.end method

.method public a(Lafq;)V
    .locals 0
    .param p1    # Lafq;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 124
    iput-object p1, p0, Laey;->j:Lafq;

    .line 125
    return-void
.end method

.method public abstract a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V
.end method

.method public abstract a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
.end method

.method public abstract c()V
.end method

.method public abstract d()Landroid/view/View;
.end method

.method public abstract e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
.end method

.method public f()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 74
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 82
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public m_()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Laey;->j:Lafq;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Laey;->j:Lafq;

    invoke-interface {v0}, Lafq;->b()V

    .line 94
    :cond_0
    return-void
.end method

.method public n_()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
