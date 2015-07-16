.class public final Laet;
.super Laez;
.source "SourceFile"


# instance fields
.field private final d:Landroid/content/Context;

.field private e:Laen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laey;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p2}, Laez;-><init>(Laey;)V

    .line 20
    iput-object p1, p0, Laet;->d:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 3

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3}, Laez;->a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z

    .line 26
    new-instance v0, Laen;

    iget-object v1, p0, Laet;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Laen;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laet;->e:Laen;

    .line 27
    iget-object v0, p0, Laet;->e:Laen;

    iget-object v0, v0, Laen;->c:Landroid/view/View;

    iput-object v0, p0, Laet;->a:Landroid/view/View;

    .line 28
    iget-object v0, p0, Laet;->e:Laen;

    iget-object v0, v0, Laen;->d:Landroid/widget/FrameLayout;

    iput-object v0, p0, Laet;->b:Landroid/widget/FrameLayout;

    .line 29
    iget-object v0, p0, Laet;->e:Laen;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/DSnapView;->getPublisherPrimaryColor()I

    move-result v1

    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/DSnapView;->getPublisherSecondaryColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laen;->a(II)V

    .line 30
    iget-object v0, p0, Laet;->e:Laen;

    new-instance v1, Laet$1;

    invoke-direct {v1, p0, p1}, Laet$1;-><init>(Laet;Lcom/snapchat/android/discover/ui/DSnapView;)V

    invoke-virtual {v0, v1}, Laen;->a(Landroid/view/View$OnClickListener;)V

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 53
    invoke-super {p0}, Laez;->c()V

    .line 54
    iget-object v0, p0, Laet;->e:Laen;

    iget-object v1, v0, Laen;->g:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Laen;->b:Lawq;

    iget-object v2, v0, Laen;->g:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lawq;->a(Landroid/widget/ImageView;Z)V

    :cond_0
    iget-object v1, v0, Laen;->c:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v0, Laen;->a:Lapz;

    const v2, 0x7f040056

    iget-object v0, v0, Laen;->c:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lapz;->a(ILandroid/view/View;)V

    .line 55
    :cond_1
    return-void
.end method

.method public final m_()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Laez;->m_()V

    .line 42
    iget-object v0, p0, Laet;->e:Laen;

    invoke-virtual {v0}, Laen;->a()V

    .line 43
    return-void
.end method

.method public final n_()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Laez;->n_()V

    .line 48
    iget-object v0, p0, Laet;->e:Laen;

    invoke-virtual {v0}, Laen;->b()V

    .line 49
    return-void
.end method
