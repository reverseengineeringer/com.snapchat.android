.class final Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;->a(Laly;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laly;

.field final synthetic b:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;Laly;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$2;->b:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;

    iput-object p2, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$2;->a:Laly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 263
    iget-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$2;->b:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;

    iget-object v1, v0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;->a:[Lalw$c;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 264
    iget-object v4, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$2;->a:Laly;

    invoke-interface {v3, v4}, Lalw$c;->a(Laly;)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    return-void
.end method
