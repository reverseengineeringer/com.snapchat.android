.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;
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
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;->a:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->a(Lcom/snapchat/android/model/Friend;)V

    .line 647
    return-void
.end method
