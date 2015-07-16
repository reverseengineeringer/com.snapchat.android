.class final Lahj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahj;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahj$a;

.field final synthetic b:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic c:Lahj;


# direct methods
.method constructor <init>(Lahj;Lahj$a;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lahj$1;->c:Lahj;

    iput-object p2, p0, Lahj$1;->a:Lahj$a;

    iput-object p3, p0, Lahj$1;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 69
    invoke-static {}, Lakr;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lahj$1;->c:Lahj;

    invoke-static {v0}, Lahj;->a(Lahj;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    iget-object v0, p0, Lahj$1;->c:Lahj;

    invoke-static {v0}, Lahj;->b(Lahj;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040037

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 72
    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 73
    :cond_0
    const v0, 0x7f0a0153

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 75
    const v3, 0x7f0c02e2

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 76
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0227

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0195

    new-instance v4, Lahj$1$1;

    invoke-direct {v4, p0, v0}, Lahj$1$1;-><init>(Lahj$1;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0058

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lahj$1;->c:Lahj;

    iget-object v1, p0, Lahj$1;->a:Lahj$a;

    iget-object v2, p0, Lahj$1;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0, v1, v2}, Lahj;->a(Lahj;Lahj$a;Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto :goto_0
.end method
