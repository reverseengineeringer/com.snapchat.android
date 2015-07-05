.class public final Lafr$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/LockingAboveTheFoldListView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public A:Lcom/snapchat/android/ui/FitWidthImageView;

.field public B:Landroid/view/View;

.field public C:Landroid/view/ViewGroup;

.field public D:Landroid/widget/ProgressBar;

.field public E:Landroid/view/ViewGroup;

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:Z

.field K:Landroid/widget/TextView;

.field public L:Landroid/view/View;

.field public M:Landroid/widget/TextView;

.field public N:Landroid/widget/TextView;

.field public O:Landroid/widget/ImageView;

.field public P:Landroid/widget/ProgressBar;

.field public Q:Landroid/widget/ImageView;

.field public a:Lcom/snapchat/android/model/chat/ChatFeedItem;

.field b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/view/ViewGroup;

.field e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

.field f:Landroid/view/View;

.field g:Landroid/widget/LinearLayout;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Landroid/view/View;

.field n:Lcom/snapchat/android/ui/ChatFragmentSnapIconView;

.field o:Landroid/widget/ProgressBar;

.field p:Landroid/view/View;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/ImageView;

.field u:Landroid/widget/ImageView;

.field v:Landroid/widget/ImageView;

.field w:Landroid/widget/ImageView;

.field x:Landroid/widget/ProgressBar;

.field public y:Lcom/snapchat/android/ui/ImageResourceView;

.field public z:Lcom/snapchat/android/ui/TextureVideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1054
    iget-object v0, p0, Lafr$c;->C:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 1055
    iget-object v0, p0, Lafr$c;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1057
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v1, v6, :cond_0

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v1, v5, :cond_1

    .line 1059
    :cond_0
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1060
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1061
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1062
    iget-object v1, p0, Lafr$c;->C:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1064
    :cond_1
    iget-object v0, p0, Lafr$c;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_2

    .line 1065
    iget-object v0, p0, Lafr$c;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1067
    :cond_2
    iput v2, p0, Lafr$c;->F:I

    .line 1068
    iput v2, p0, Lafr$c;->G:I

    .line 1069
    iput v2, p0, Lafr$c;->H:I

    .line 1070
    iput v2, p0, Lafr$c;->I:I

    .line 1071
    iput-boolean v2, p0, Lafr$c;->J:Z

    .line 1073
    :cond_3
    iget-object v0, p0, Lafr$c;->A:Lcom/snapchat/android/ui/FitWidthImageView;

    if-eqz v0, :cond_4

    .line 1074
    iget-object v0, p0, Lafr$c;->A:Lcom/snapchat/android/ui/FitWidthImageView;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/FitWidthImageView;->setVisibility(I)V

    .line 1076
    :cond_4
    iget-object v0, p0, Lafr$c;->D:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    .line 1077
    iget-object v0, p0, Lafr$c;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1079
    :cond_5
    iget-object v0, p0, Lafr$c;->E:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 1080
    iget-object v0, p0, Lafr$c;->E:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    iget-object v0, p0, Lafr$c;->E:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1083
    :cond_6
    return-void
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lafr$c;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 1002
    iget-object v0, p0, Lafr$c;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lafr$c;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1005
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->am()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lapv;
    .locals 3

    .prologue
    .line 1092
    iget-object v0, p0, Lafr$c;->C:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    if-eqz v0, :cond_0

    .line 1093
    new-instance v0, Lapu;

    iget-object v1, p0, Lafr$c;->C:Landroid/view/ViewGroup;

    iget-object v2, p0, Lafr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-direct {v0, v1, v2}, Lapu;-><init>(Landroid/view/View;Lcom/snapchat/android/ui/ImageResourceView;)V

    .line 1095
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()[I
    .locals 2

    .prologue
    .line 1100
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1101
    iget-object v1, p0, Lafr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    if-eqz v1, :cond_0

    .line 1102
    iget-object v1, p0, Lafr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/ImageResourceView;->getLocationOnScreen([I)V

    .line 1104
    :cond_0
    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lafr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lafr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ImageResourceView;->getHeight()I

    move-result v0

    .line 1112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
