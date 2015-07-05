.class abstract Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lalb$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;


# direct methods
.method protected constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$a;->a:Landroid/view/LayoutInflater;

    .line 207
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    .prologue
    .line 211
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 218
    if-nez p2, :cond_0

    .line 219
    iget-object v0, p0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f04004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 223
    :cond_0
    const v0, 0x7f0a01c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 224
    const v1, 0x7f0a01c7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 225
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$a;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lalc;

    .line 226
    iget-object v3, v2, Lalc;->g:Lala;

    invoke-virtual {v3}, Lala;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, v2, Lalc;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-object p2
.end method
