.class final Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;->a(Lala;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lala;

.field final synthetic b:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;Lala;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$1;->b:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;

    iput-object p2, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$1;->a:Lala;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 251
    iget-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$1;->b:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;

    iget-object v1, v0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;->a:[Lalb$c;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 252
    iget-object v4, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$1;->a:Lala;

    invoke-interface {v3, v4}, Lalb$c;->a(Lala;)V

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    return-void
.end method
