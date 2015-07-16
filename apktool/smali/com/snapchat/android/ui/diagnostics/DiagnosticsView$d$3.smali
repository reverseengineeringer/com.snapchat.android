.class final Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;->a(Laly;Lus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laly;

.field final synthetic b:Lus;

.field final synthetic c:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;Laly;Lus;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$3;->c:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;

    iput-object p2, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$3;->a:Laly;

    iput-object p3, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$3;->b:Lus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 274
    iget-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$3;->c:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;

    iget-object v1, v0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;->a:[Lalw$c;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 275
    iget-object v4, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$3;->a:Laly;

    iget-object v5, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$3;->b:Lus;

    invoke-interface {v3, v4, v5}, Lalw$c;->a(Laly;Lus;)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    return-void
.end method
