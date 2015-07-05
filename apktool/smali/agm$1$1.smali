.class final Lagm$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagm$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lagm$1;


# direct methods
.method constructor <init>(Lagm$1;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lagm$1$1;->b:Lagm$1;

    iput-object p2, p0, Lagm$1$1;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lagm$1$1;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lajx;->Y()V

    .line 84
    :cond_0
    iget-object v0, p0, Lagm$1$1;->b:Lagm$1;

    iget-object v0, v0, Lagm$1;->c:Lagm;

    iget-object v1, p0, Lagm$1$1;->b:Lagm$1;

    iget-object v1, v1, Lagm$1;->a:Lagm$a;

    iget-object v2, p0, Lagm$1$1;->b:Lagm$1;

    iget-object v2, v2, Lagm$1;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0, v1, v2}, Lagm;->a(Lagm;Lagm$a;Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 85
    return-void
.end method
