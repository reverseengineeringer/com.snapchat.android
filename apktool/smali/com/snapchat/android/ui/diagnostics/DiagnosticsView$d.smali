.class final Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalb$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field final a:[Lalb$c;


# direct methods
.method public varargs constructor <init>([Lalb$c;)V
    .locals 0
    .param p1    # [Lalb$c;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;->a:[Lalb$c;

    .line 245
    return-void
.end method


# virtual methods
.method public final a(Lala;)V
    .locals 1
    .param p1    # Lala;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 248
    new-instance v0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$1;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$1;-><init>(Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;Lala;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 256
    return-void
.end method

.method public final a(Lalc;)V
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$2;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$2;-><init>(Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;Lalc;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method

.method public final a(Lalc;Luc;)V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d$3;-><init>(Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;Lalc;Luc;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 279
    return-void
.end method
