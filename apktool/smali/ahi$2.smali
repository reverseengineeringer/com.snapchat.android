.class final Lahi$2;
.super Lqg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahi$a;

.field final synthetic b:Lcom/snapchat/android/model/Friend;

.field final synthetic c:Lahi;


# direct methods
.method constructor <init>(Lahi;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lahi$a;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lahi$2;->c:Lahi;

    iput-object p4, p0, Lahi$2;->a:Lahi$a;

    iput-object p5, p0, Lahi$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0, p2, p3}, Lqg;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V

    return-void
.end method


# virtual methods
.method protected final a(Lbli;Lakp;)V
    .locals 2
    .param p2    # Lakp;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lqg;->a(Lbli;Lakp;)V

    .line 114
    iget-object v0, p0, Lahi$2;->c:Lahi;

    iget-object v0, v0, Lahi;->d:Ljava/util/List;

    iget-object v1, p0, Lahi$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 115
    iget-object v1, p0, Lahi$2;->c:Lahi;

    invoke-virtual {v1, v0}, Lahi;->e(I)V

    .line 116
    invoke-static {}, Lakr;->aB()V

    .line 117
    return-void
.end method

.method public final a(Lbli;Lus;)V
    .locals 3
    .param p1    # Lbli;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lqg;->a(Lbli;Lus;)V

    .line 106
    iget-object v0, p0, Lahi$2;->a:Lahi$a;

    iget-object v1, v0, Lahi$a;->l:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lahi$a;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void
.end method
