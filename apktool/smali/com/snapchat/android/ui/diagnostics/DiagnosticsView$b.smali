.class final Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;
.super Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Laly;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 161
    iput-object p1, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;->b:Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;

    .line 162
    invoke-direct {p0, p2}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$a;-><init>(Landroid/view/LayoutInflater;)V

    .line 159
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;->a:Ljava/util/LinkedList;

    .line 163
    return-void
.end method


# virtual methods
.method public final a(Lalv;)V
    .locals 0
    .param p1    # Lalv;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 167
    return-void
.end method

.method public final a(Laly;)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public final a(Laly;Lus;)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;->notifyDataSetChanged()V

    .line 180
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
