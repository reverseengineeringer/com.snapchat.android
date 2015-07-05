.class final Lagl$2;
.super Lpp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lagl$a;

.field final synthetic b:Lcom/snapchat/android/model/Friend;

.field final synthetic c:Lagl;


# direct methods
.method constructor <init>(Lagl;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lagl$a;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lagl$2;->c:Lagl;

    iput-object p4, p0, Lagl$2;->a:Lagl$a;

    iput-object p5, p0, Lagl$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0, p2, p3}, Lpp;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V

    return-void
.end method


# virtual methods
.method protected final a(Lbkh;Lajv;)V
    .locals 2
    .param p2    # Lajv;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lccm;
    .end annotation

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lpp;->a(Lbkh;Lajv;)V

    .line 114
    iget-object v0, p0, Lagl$2;->c:Lagl;

    iget-object v0, v0, Lagl;->d:Ljava/util/List;

    iget-object v1, p0, Lagl$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 115
    iget-object v1, p0, Lagl$2;->c:Lagl;

    invoke-virtual {v1, v0}, Lagl;->e(I)V

    .line 116
    invoke-static {}, Lajx;->aC()V

    .line 117
    return-void
.end method

.method public final a(Lbkh;Luc;)V
    .locals 3
    .param p1    # Lbkh;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lccm;
    .end annotation

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lpp;->a(Lbkh;Luc;)V

    .line 106
    iget-object v0, p0, Lagl$2;->a:Lagl$a;

    iget-object v1, v0, Lagl$a;->l:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lagl$a;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void
.end method
