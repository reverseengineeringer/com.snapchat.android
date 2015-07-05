.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;
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
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

.field private final b:Lahb;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lahb;)V
    .locals 0

    .prologue
    .line 996
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 997
    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;->b:Lahb;

    .line 998
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbea;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;->b:Lahb;

    invoke-direct {v1, v2}, Lbea;-><init>(Lahb;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1003
    const-string v0, "StoriesAdapter"

    const-string v1, "onClick for %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;->b:Lahb;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;->b:Lahb;

    invoke-interface {v4}, Lahb;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1005
    return-void
.end method
