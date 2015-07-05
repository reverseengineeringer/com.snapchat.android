.class final Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$c;
.super Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lalc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 117
    iput-object p1, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$c;->a:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;

    .line 118
    invoke-direct {p0, p2}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$a;-><init>(Landroid/view/LayoutInflater;)V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$c;->b:Ljava/util/List;

    .line 119
    return-void
.end method


# virtual methods
.method public final a(Lala;)V
    .locals 0
    .param p1    # Lala;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 123
    return-void
.end method

.method public final a(Lalc;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p0}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$c;->notifyDataSetChanged()V

    .line 129
    return-void
.end method

.method public final a(Lalc;Luc;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {p0}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$c;->notifyDataSetChanged()V

    .line 135
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
