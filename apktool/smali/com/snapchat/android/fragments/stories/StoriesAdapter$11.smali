.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lajg;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lajg;)V
    .locals 0

    .prologue
    .line 843
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;->a:Lajg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;->a:Lajg;

    check-cast v0, Lajo;

    invoke-virtual {v0}, Lajo;->p()V

    .line 847
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 848
    return-void
.end method
