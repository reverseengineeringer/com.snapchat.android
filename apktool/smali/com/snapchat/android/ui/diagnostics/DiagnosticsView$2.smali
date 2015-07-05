.class final Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$2;
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
.field final synthetic a:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;

.field final synthetic b:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$2;->b:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;

    iput-object p2, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$2;->a:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$2;->a:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;

    iget-object v1, v0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;->notifyDataSetChanged()V

    .line 102
    return-void
.end method
