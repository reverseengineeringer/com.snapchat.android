.class final Lcom/snapchat/android/ui/InAppPromptView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/InAppPromptView;->set(Lalx$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lalx$a;

.field final synthetic b:Lcom/snapchat/android/ui/InAppPromptView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/InAppPromptView;Lalx$a;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/snapchat/android/ui/InAppPromptView$1;->b:Lcom/snapchat/android/ui/InAppPromptView;

    iput-object p2, p0, Lcom/snapchat/android/ui/InAppPromptView$1;->a:Lalx$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/ui/InAppPromptView$1;->b:Lcom/snapchat/android/ui/InAppPromptView;

    invoke-static {v0}, Lcom/snapchat/android/ui/InAppPromptView;->a(Lcom/snapchat/android/ui/InAppPromptView;)Lalx;

    move-result-object v0

    invoke-virtual {v0}, Lalx;->b()V

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/ui/InAppPromptView$1;->a:Lalx$a;

    iget-object v0, v0, Lalx$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$b;

    iget-object v2, p0, Lcom/snapchat/android/ui/InAppPromptView$1;->a:Lalx$a;

    iget-object v2, v2, Lalx$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/ui/InAppPromptView$1;->a:Lalx$a;

    iget-object v3, v3, Lalx$a;->d:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/ui/InAppPromptView$1;->b:Lcom/snapchat/android/ui/InAppPromptView;

    invoke-static {v2}, Lcom/snapchat/android/ui/InAppPromptView;->b(Lcom/snapchat/android/ui/InAppPromptView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/ui/InAppPromptView$1;->a:Lalx$a;

    iget-object v3, v3, Lalx$a;->c:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v0, v4}, Laly;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)Landroid/content/Intent;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/snapchat/android/ui/InAppPromptView$1;->a:Lalx$a;

    iget-object v1, v1, Lalx$a;->c:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ADDFRIEND:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-eq v1, v2, :cond_0

    .line 82
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbdg;

    invoke-direct {v2, v5}, Lbdg;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbcr;

    invoke-direct {v2, v5}, Lbcr;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/ui/InAppPromptView$1;->b:Lcom/snapchat/android/ui/InAppPromptView;

    invoke-static {v1}, Lcom/snapchat/android/ui/InAppPromptView;->b(Lcom/snapchat/android/ui/InAppPromptView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 86
    return-void

    .line 72
    :cond_1
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$a;

    iget-object v2, p0, Lcom/snapchat/android/ui/InAppPromptView$1;->a:Lalx$a;

    iget-object v2, v2, Lalx$a;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager$a;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0
.end method
