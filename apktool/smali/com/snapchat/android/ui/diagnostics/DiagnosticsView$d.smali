.class final Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalw$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field final a:[Lalw$c;


# direct methods
.method public varargs constructor <init>([Lalw$c;)V
    .locals 0
    .param p1    # [Lalw$c;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;->a:[Lalw$c;

    .line 245
    return-void
.end method


# virtual methods
.method public final a(Lalv;)V
    .locals 1
    .param p1    # Lalv;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 248
    new-instance v0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$1;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$1;-><init>(Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;Lalv;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 256
    return-void
.end method

.method public final a(Laly;)V
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$2;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$2;-><init>(Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;Laly;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method

.method public final a(Laly;Lus;)V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$3;-><init>(Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;Laly;Lus;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 279
    return-void
.end method
