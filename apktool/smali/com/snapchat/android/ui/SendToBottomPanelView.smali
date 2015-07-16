.class public Lcom/snapchat/android/ui/SendToBottomPanelView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/animation/Animator;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/HorizontalScrollView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-boolean v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->g:Z

    .line 31
    iput-boolean v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->h:Z

    .line 43
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 44
    const v1, 0x7f040096

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    const v0, 0x7f0a0339

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->d:Landroid/widget/ImageView;

    .line 47
    const v0, 0x7f0a033a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->e:Landroid/widget/HorizontalScrollView;

    .line 48
    const v0, 0x7f0a033b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->f:Landroid/widget/LinearLayout;

    .line 49
    const v0, 0x7f0a033c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->a:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0a033d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->b:Landroid/widget/TextView;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SendToBottomPanelView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/SendToBottomPanelView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->b:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 153
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->g:Z

    .line 155
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setVisibility(I)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->g:Z

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lawf;->a(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 142
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 143
    if-eqz p1, :cond_0

    .line 144
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setVisibility(I)V

    .line 148
    :goto_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->h:Z

    .line 150
    return-void

    .line 146
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->h:Z

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->a(Z)V

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->g:Z

    if-nez v0, :cond_1

    .line 167
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setVisibility(I)V

    .line 169
    :cond_1
    return-void
.end method

.method public getScrollView()Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->e:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method public getSendButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->e:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public setSendButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public setSendButtonOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
