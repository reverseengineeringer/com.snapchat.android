.class public final Laps$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/VerticalSwipeLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/stories/ui/MyStoryView;

.field final synthetic b:Laps;


# direct methods
.method public constructor <init>(Laps;Lcom/snapchat/android/stories/ui/MyStoryView;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Laps$3;->b:Laps;

    iput-object p2, p0, Laps$3;->a:Lcom/snapchat/android/stories/ui/MyStoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v2, p0, Laps$3;->a:Lcom/snapchat/android/stories/ui/MyStoryView;

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, v2, Lcom/snapchat/android/stories/ui/MyStoryView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v2, v1}, Lawf;->a(Landroid/view/View;I)V

    .line 119
    return-void

    :cond_0
    move v0, v1

    .line 118
    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method
