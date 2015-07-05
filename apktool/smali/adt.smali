.class public final Ladt;
.super Ladz;
.source "SourceFile"


# instance fields
.field private final d:Landroid/content/Context;

.field private e:Ladn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lady;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p2}, Ladz;-><init>(Lady;)V

    .line 20
    iput-object p1, p0, Ladt;->d:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 3

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3}, Ladz;->a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z

    .line 26
    new-instance v0, Ladn;

    iget-object v1, p0, Ladt;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Ladn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ladt;->e:Ladn;

    .line 27
    iget-object v0, p0, Ladt;->e:Ladn;

    iget-object v0, v0, Ladn;->c:Landroid/view/View;

    iput-object v0, p0, Ladt;->a:Landroid/view/View;

    .line 28
    iget-object v0, p0, Ladt;->e:Ladn;

    iget-object v0, v0, Ladn;->d:Landroid/widget/FrameLayout;

    iput-object v0, p0, Ladt;->b:Landroid/widget/FrameLayout;

    .line 29
    iget-object v0, p0, Ladt;->e:Ladn;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/DSnapView;->getPublisherPrimaryColor()I

    move-result v1

    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/DSnapView;->getPublisherSecondaryColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ladn;->a(II)V

    .line 30
    iget-object v0, p0, Ladt;->e:Ladn;

    new-instance v1, Ladt$1;

    invoke-direct {v1, p0, p1}, Ladt$1;-><init>(Ladt;Lcom/snapchat/android/discover/ui/DSnapView;)V

    invoke-virtual {v0, v1}, Ladn;->a(Landroid/view/View$OnClickListener;)V

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 53
    invoke-super {p0}, Ladz;->c()V

    .line 54
    iget-object v0, p0, Ladt;->e:Ladn;

    iget-object v1, v0, Ladn;->g:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ladn;->b:Lavs;

    iget-object v2, v0, Ladn;->g:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lavs;->a(Landroid/widget/ImageView;Z)V

    :cond_0
    iget-object v1, v0, Ladn;->c:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v0, Ladn;->a:Lapd;

    const v2, 0x7f040055

    iget-object v0, v0, Ladn;->c:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lapd;->a(ILandroid/view/View;)V

    .line 55
    :cond_1
    return-void
.end method

.method public final o_()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ladz;->o_()V

    .line 42
    iget-object v0, p0, Ladt;->e:Ladn;

    invoke-virtual {v0}, Ladn;->a()V

    .line 43
    return-void
.end method

.method public final p_()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Ladz;->p_()V

    .line 48
    iget-object v0, p0, Ladt;->e:Ladn;

    invoke-virtual {v0}, Ladn;->b()V

    .line 49
    return-void
.end method
