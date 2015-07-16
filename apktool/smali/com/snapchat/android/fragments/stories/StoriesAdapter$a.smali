.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/widget/TextView;

.field final b:Landroid/view/View;

.field final synthetic c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    const v0, 0x7f0a007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;->a:Landroid/widget/TextView;

    .line 1018
    const v0, 0x7f0a0080

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;->b:Landroid/view/View;

    .line 1019
    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1022
    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1023
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$a;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    return-void

    :cond_0
    move v0, v2

    .line 1022
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1023
    goto :goto_1
.end method
