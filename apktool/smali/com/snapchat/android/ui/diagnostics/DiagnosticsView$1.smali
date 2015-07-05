.class final Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$1;->b:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;

    iput-object p2, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$1;->a:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$1;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$1;->a:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$1;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
