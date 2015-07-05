.class final Laou$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laou;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbjj;

.field final synthetic b:Laou;


# direct methods
.method constructor <init>(Laou;Lbjj;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Laou$1;->b:Laou;

    iput-object p2, p0, Laou$1;->a:Lbjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 79
    new-instance v1, Lbee;

    iget-object v0, p0, Laou$1;->a:Lbjj;

    invoke-virtual {v0}, Lbjj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbee;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Laou$1;->b:Laou;

    invoke-static {v0}, Laou;->a(Laou;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    .line 81
    invoke-virtual {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->onSwitchToChatEvent(Lbee;)V

    .line 82
    return-void
.end method
