.class final Lagh$a;
.super Lara;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lagh;


# direct methods
.method public constructor <init>(Lagh;Landroid/content/Context;Lcom/snapchat/android/model/Friend;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    iput-object p1, p0, Lagh$a;->a:Lagh;

    .line 88
    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0047

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v1, 0x7f0c0044

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lara;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void

    .line 88
    :cond_0
    const v0, 0x7f0c0046

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v3, p0, Lagh$a;->a:Lagh;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v0, v3, Lagh;->b:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/snapchat/android/model/FriendAction$BlockReason;->values()[Lcom/snapchat/android/model/FriendAction$BlockReason;

    move-result-object v0

    invoke-static {v0}, Ldt;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-static {v5}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    sget-object v0, Lcom/snapchat/android/model/FriendAction$BlockReason;->OTHER:Lcom/snapchat/android/model/FriendAction$BlockReason;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/CharSequence;

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v7, v3, Lagh;->b:Landroid/content/Context;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/FriendAction$BlockReason;

    invoke-virtual {v0}, Lcom/snapchat/android/model/FriendAction$BlockReason;->getTextId()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lagh$1;

    invoke-direct {v0, v3, v5}, Lagh$1;-><init>(Lagh;Ljava/util/List;)V

    invoke-virtual {v4, v6, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0043

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 94
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
