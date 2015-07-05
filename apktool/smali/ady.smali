.class public abstract Lady;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lavl;
.end annotation


# instance fields
.field protected j:Laeq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Ladb;Ljava/util/List;)Laim;
    .annotation build Lcgc;
    .end annotation

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
.end method

.method public abstract a(J)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public a(Laeq;)V
    .locals 0
    .param p1    # Laeq;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 108
    iput-object p1, p0, Lady;->j:Laeq;

    .line 109
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
    .line 128
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public o_()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lady;->j:Laeq;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lady;->j:Laeq;

    invoke-interface {v0}, Laeq;->b()V

    .line 78
    :cond_0
    return-void
.end method

.method public p_()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
