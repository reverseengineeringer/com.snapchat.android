.class public Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;,
        Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$a;,
        Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;,
        Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$c;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lalw;->a()Lalw;

    move-result-object v0

    invoke-static {}, Lbam;->a()Lbam;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lalw;Lbam;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lalw;Lbam;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p4, p0}, Lbam;->addObserver(Ljava/util/Observer;)V

    .line 49
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f04004d

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f0a01c7

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v2, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$c;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$c;-><init>(Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;Landroid/view/LayoutInflater;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f0a01ca

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v3, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;

    invoke-direct {v3, p0, v0}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;-><init>(Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;Landroid/view/LayoutInflater;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;

    const/4 v4, 0x2

    new-array v4, v4, [Lalw$c;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v3, v4, v6

    invoke-direct {v0, v4}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$d;-><init>([Lalw$c;)V

    iput-object v0, p3, Lalw;->c:Lalw$c;

    const v0, 0x7f0a01c8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$1;

    invoke-direct {v2, p0, v1}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$1;-><init>(Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;Landroid/widget/ListView;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01c9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$2;

    invoke-direct {v1, p0, v3}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$2;-><init>(Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;Lcom/snapchat/android/ui/diagnostics/DiagnosticsView$b;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-direct {p0, p4}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;->a(Lbam;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lbam;)V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p1}, Lbam;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;->setVisibility(I)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Lbam;

    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/diagnostics/DiagnosticsView;->a(Lbam;)V

    .line 59
    return-void
.end method
