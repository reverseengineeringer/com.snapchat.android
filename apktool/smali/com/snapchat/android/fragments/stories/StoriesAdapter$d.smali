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

.field private final b:Lahy;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lahy;)V
    .locals 0

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;->b:Lahy;

    .line 1032
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbez;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;->b:Lahy;

    invoke-direct {v1, v2}, Lbez;-><init>(Lahy;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1037
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;->b:Lahy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$d;->b:Lahy;

    invoke-interface {v2}, Lahy;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1039
    return-void
.end method
